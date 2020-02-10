#include <GUIConstantsEx.au3>
$offset = 100 ; text spacing offset

mathtable(14)

GUISetState(@SW_SHOW)
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd

Func mathtable($l = 14); length
	$Form1 = GUICreate("multiplication", $l*$offset + $offset*2, $l*$offset + $offset*2, 192, 124)

For $r = 1 To $l Step 1
For $i = 1 To $l Step 1
	 GUICtrlCreateLabel($r*$i, $i*$offset, $r*$offset, $offset, $offset)
	 GUICtrlSetFont(-1, $offset*.4, 400, 0, "MS Sans Serif")
Next
Next
EndFunc