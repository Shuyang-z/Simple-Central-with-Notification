# Simple-Central-with-Notification
Add function to turn on notification based on CC26x2 simple_central example

This example is based on simple_central example in simplelink_cc13x2_26x2_sdk_4_30_00_54, with a function to write value to characteristic 4 in simple GATT profile to turn on the notification. Also added a sub-menu in the two button menu "Notification Switch" to turn on and off the notification.

Steps to add the notification switch:

Step 1:
Copy the SimpleCentral_doGattWrite() function and rename it as SimpleCentral_doNotificationSwitch() in simple_central.c, change the characteristic handle to SIMPLEPROFILE_CHAR4_CONFIG_HANDLE (=0x002C) and the charVals[] to {0x0000, 0x0001, 0x0002}. Writing 0x0001 will turn on the notification and 0x0000 will disable it. 0x0002 is reserved for indication, but it is unavailable in the default simple GATT profile.

The handle of the characteristic may vary in different SDK versions, please check the actual handle before implement the code. The method of checking the characteristic handles using BTool is as follows: https://dev.ti.com/tirex/explore/content/simplelink_academy_cc13x2_26x2sdk_4_30_02_00/modules/ble5stack/ble_01_basic/ble_01_basic.html#task-2-ndash-connect-and-navigate-exposed-services

Step 2:
Add a branch in SimpleCentral_processGATTMsg() to display the received notification value in simple_central.c
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
