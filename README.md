# Simple-Central-with-Notification
Add function to turn on notification based on CC26x2 simple_central example

This example is based on simple_central example in simplelink_cc13x2_26x2_sdk_4_30_00_54, with a function to write value to characteristic 4 in simple GATT profile to turn on the notification. Also added a sub-menu in the two button menu "Notification Switch" to turn on and off the notification.

## Steps to add the notification switch:

### Step 1:
Copy the SimpleCentral_doGattWrite() function and rename it as SimpleCentral_doNotificationSwitch() in simple_central.c, change the characteristic handle to SIMPLEPROFILE_CHAR4_CONFIG_HANDLE (=0x002C) and the charVals[] to {0x0000, 0x0001, 0x0002}. Writing 0x0001 will turn on the notification and 0x0000 will disable it. 0x0002 is reserved for indication, but it is unavailable in the default simple GATT profile.
```
bool SimpleCentral_doNotificationSwitch(uint8_t index)
{
  status_t status;
  uint16_t charVals[3] = { 0x0000, 0x0001, 0x0002 }; // Should be consistent with
                                                    // those in scMenuNotification

  attWriteReq_t req;

  req.pValue = GATT_bm_alloc(scConnHandle, ATT_WRITE_REQ, 2, NULL);

  if ( req.pValue != NULL )
  {
    uint8_t connIndex = SimpleCentral_getConnIndex(scConnHandle);

    // connIndex cannot be equal to or greater than MAX_NUM_BLE_CONNS
    SIMPLECENTRAL_ASSERT(connIndex < MAX_NUM_BLE_CONNS);

    req.handle = SIMPLEPROFILE_CHAR4_CONFIG_HANDLE;
    req.len = 2;
    charVal = charVals[index];
    req.pValue[0] = charVal;
    req.sig = 0;
    req.cmd = 0;

    status = GATT_WriteCharValue(scConnHandle, &req, selfEntity);
    if ( status != SUCCESS )
    {
      GATT_bm_free((gattMsg_t *)&req, ATT_WRITE_REQ);
    }
  }

  return (true);
}
```

The handle of the characteristic may vary in different SDK versions, please check the actual handle before implement the code. The method of checking the characteristic handles using BTool is as follows: https://dev.ti.com/tirex/explore/content/simplelink_academy_cc13x2_26x2sdk_4_30_02_00/modules/ble5stack/ble_01_basic/ble_01_basic.html#task-2-ndash-connect-and-navigate-exposed-services.

### Step 2:
Add a branch in SimpleCentral_processGATTMsg() to display the received notification value in simple_central.c.
```
static void SimpleCentral_processGATTMsg(gattMsgEvent_t *pMsg)
{
    ...
    else if(pMsg->method == ATT_HANDLE_VALUE_NOTI)
    {
      // After receiving a notification, display the value
      Display_printf(dispHandle, SC_ROW_CUR_CONN, 0,
                       "Notification: 0x%02x", pMsg->msg.handleValueNoti.pValue[0]);
    }
    ...
}
```

### Step 3:
Add a sub-menu named "scMenuNotificationSwitch" in simple_central_menu.c, just below the "GATT Write" sub-menu. Link the menu to the SimpleCentral_doNotificationSwitch function.
```
// Menu: PerConnection
// upper: SelectDevice
  MENU_OBJ(scMenuPerConn, NULL, 8, &scMenuSelectConn)
  MENU_ITEM_ACTION(scMenuPerConn,0,"GATT Read",          SimpleCentral_doGattRead)
  MENU_ITEM_SUBMENU(scMenuPerConn,1,&scMenuGattWrite)
  MENU_ITEM_SUBMENU(scMenuPerConn,2,&scMenuNotificationSwitch)
  MENU_ITEM_ACTION(scMenuPerConn,3,"Start RSSI Reading", SimpleCentral_doRssiRead)
  MENU_ITEM_ACTION(scMenuPerConn,4,"Stop RSSI Reading",  SimpleCentral_doRssiRead)
  MENU_ITEM_ACTION(scMenuPerConn,5,"Connection Update",  SimpleCentral_doConnUpdate)
  MENU_ITEM_SUBMENU(scMenuPerConn,6,&scMenuConnPhy)
  MENU_ITEM_ACTION(scMenuPerConn,7,"Disconnect",         SimpleCentral_doDisconnect)
  MENU_OBJ_END
```

```
// Menu: GattWrite
// upper: PerConnection
  MENU_OBJ(scMenuNotificationSwitch, "Notification Switch", 3, &scMenuPerConn)
  MENU_ITEM_ACTION(scMenuNotificationSwitch,0,"Disable", SimpleCentral_doNotificationSwitch)
  MENU_ITEM_ACTION(scMenuNotificationSwitch,1,"Notification", SimpleCentral_doNotificationSwitch)
  MENU_ITEM_ACTION(scMenuNotificationSwitch,2,"Indication", SimpleCentral_doNotificationSwitch)
  MENU_OBJ_END
```

### Step 4:
Add a Macro for the NotificationSwitch sub-menu item in simple_central_menu.h, then add the enable/disable menu alongside GATT Read and GATT Write in simple_central.c, so that the newly created mune only appears after user selects the "Work with" in the two button menu.

##### In simple_central_menu.h:
```
#define SC_ITEM_NOTISWITCH  TBM_ITEM(2)  // "Notification Switch"
```

##### In simple_central.c:
```
static void SimpleCentral_processGATTDiscEvent(gattMsgEvent_t *pMsg)
{
  ...
  else if (discState == BLE_DISC_STATE_CHAR)
  {
    // Characteristic found, store handle
    if ((pMsg->method == ATT_READ_BY_TYPE_RSP) &&
        (pMsg->msg.readByTypeRsp.numPairs > 0))
    {
      ...

      Display_printf(dispHandle, SC_ROW_CUR_CONN, 0, "Simple Svc Found");

	  // Now we can use GATT Read/Write
	  // Enable NotificationSwitch menu as well
      tbm_setItemStatus(&scMenuPerConn,
                        SC_ITEM_GATTREAD | SC_ITEM_GATTWRITE | SC_ITEM_NOTISWITCH, SC_ITEM_NONE);
    }

    discState = BLE_DISC_STATE_IDLE;
  }
}
```

```
bool SimpleCentral_doSelectConn(uint8_t index)
{
  ...

  if (connList[index].charHandle == 0)
  {
    // Initiate service discovery
    SimpleCentral_enqueueMsg(SC_EVT_SVC_DISC, 0, NULL);

	// Diable GATT Read/Write until simple service is found
	// Disable NotificationSwitch menu as well
    itemsToDisable = SC_ITEM_GATTREAD | SC_ITEM_GATTWRITE | SC_ITEM_NOTISWITCH;
  }
  ...
}
```

## Changes made to simple_peripheral.c

To test the notification, the value of characteristic 4 is changed to increase by 1 every time the SimplePeripheral_performPeriodicTask() is executed. The period is 5000ms by default.
```
static void SimplePeripheral_performPeriodicTask(void)
{
  uint8_t valueToCopy;
  
  // Modified by Shuyang on 12/31/2020
  // Increase the value of chacteristic 4 by 1 every time
  valueToCopy = char4Cnt++;

  SimpleProfile_SetParameter(SIMPLEPROFILE_CHAR4, sizeof(uint8_t),
                               &valueToCopy);

}
```
