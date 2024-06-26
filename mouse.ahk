;The Offset variable controls pointer speed
;Ctrl + Arrow keys = move mouse
;Ctrl + comma = left click
;Ctrl + period = right click

#SingleInstance force

Offset = 20
OffsetBig = 5
OffsetSmall = 1

^#Up::MouseMove, 0, (Offset * -1), 0, R
^#Down::MouseMove, 0, Offset, 0, R
^#Left::MouseMove, (Offset * -1), 0, 0, R
^#Right::MouseMove, Offset, 0, 0, R
^#.::click right

^#K::MouseMove, 0, (Offset * -1), 0, R
^#J::MouseMove, 0, Offset, 0, R
^#H::MouseMove, (Offset * -1), 0, 0, R
^#L::MouseMove, Offset, 0, 0, R

^!#K::MouseMove, 0, (OffsetBig * -1), 0, R
^!#J::MouseMove, 0, OffsetBig, 0, R
^!#H::MouseMove, (OffsetBig * -1), 0, 0, R
^!#L::MouseMove, OffsetBig, 0, 0, R


^+#8::MouseMove, 0, (OffsetSmall * -1), 0, R
^+#9::MouseMove, 0, OffsetSmall, 0, R
^+#7::MouseMove, (OffsetSmall * -1), 0, 0, R
^+#0::MouseMove, OffsetSmall, 0, 0, R

;This allows to press and hold the left mouse button instead of just clicking it once. Needed for drag and drop operations.
^#C::
   If (A_PriorHotKey = A_ThisHotKey)
   return
click down
return
^#C up::click up