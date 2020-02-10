#include <GUIConstantsEx.au3>
$Form1 = GUICreate("multiplication", 320, 320, 192, 124)

For $r = 1 To 14 Step 1
For $i = 1 To 14 Step 1
	 GUICtrlCreateLabel($r*$i, $i*20, $r*20, 20, 20)
Next
Next

GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd