#include <Array.au3>

_ArrayDisplay(MultiplicationTable(12))
_ArrayDisplay(MultiplicationTable(14, 12))

; $iSize - The size of the final 2D array
; $iNull - The number at which to create Null values instead of multiplying
Func MultiplicationTable﻿($iSize, $iNull = 999999)
    Local $aTemp[$iSize][$iSize]
    For $iRow=1 To $iSize
        For $iCol=1 To $iSize
            If ($iRow > $iNull) Or ($iCol > $iNull) Then
                $aTemp[$iRow - 1][$iCol - 1] = Null
            Else
                $aTemp[$iRow - 1][$iCol - 1] = $iRow * $iCol
            EndIf
        Next
    Next
    Return $aTemp
EndFunc
