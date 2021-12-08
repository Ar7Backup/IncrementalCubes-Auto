#include <AutoItConstants.au3>

Global $MOUSE_CLICKS = 2
Global $MOUSE_DELAY = 2

Func _Attack()
   MouseClick($MOUSE_CLICK_LEFT, $ATTACK[0], $ATTACK[1], $MOUSE_CLICKS, $MOUSE_DELAY)
EndFunc

Func _SetAttack()
   MouseClick($MOUSE_CLICK_LEFT, $SET_ATTACK[0], $SET_ATTACK[1], 1, $MOUSE_DELAY)
EndFunc

Func _Collect()
   MouseClick($MOUSE_CLICK_LEFT, $COLLECT[0], $COLLECT[1], $MOUSE_CLICKS, $MOUSE_DELAY)
EndFunc

Func _SetCollect()
   MouseClick($MOUSE_CLICK_LEFT, $SET_COLLECT[0], $SET_COLLECT[1], 1, $MOUSE_DELAY)
EndFunc

Func _TickSpeed()
   MouseClick($MOUSE_CLICK_LEFT, $TICK_SPEED[0], $TICK_SPEED[1], 1, $MOUSE_DELAY)
EndFunc

Func _BuyWhite()
   MouseClick($MOUSE_CLICK_LEFT, $WHITE_TICK[0], $WHITE_TICK[1], $MOUSE_CLICKS, $MOUSE_DELAY)
EndFunc

Func _UnlockBlue()
   MouseClick($MOUSE_CLICK_LEFT, $UNLOCK_BLUE[0], $UNLOCK_BLUE[1], $MOUSE_CLICKS, $MOUSE_DELAY)
EndFunc

Func _BuyBlue()
   MouseClick($MOUSE_CLICK_LEFT, $BLUE_TICK[0], $BLUE_TICK[1], $MOUSE_CLICKS, $MOUSE_DELAY)
EndFunc

Func _UnlockGreen()
   MouseClick($MOUSE_CLICK_LEFT, $UNLOCK_GREEN[0], $UNLOCK_GREEN[1], $MOUSE_CLICKS, $MOUSE_DELAY)
EndFunc

Func _BuyGreen()
   MouseClick($MOUSE_CLICK_LEFT, $GREEN_TICK[0], $GREEN_TICK[1], $MOUSE_CLICKS, $MOUSE_DELAY)
EndFunc

Func _Next()
   MouseClick($MOUSE_CLICK_LEFT, $NEXT[0], $NEXT[1], $MOUSE_CLICKS, $MOUSE_DELAY)
EndFunc

Func _Prestige1()
   MouseClick($MOUSE_CLICK_LEFT, $PRESTIGE1[0], $PRESTIGE1[1], 1)
EndFunc

Func _Prestige2()
   MouseClick($MOUSE_CLICK_LEFT, $PRESTIGE2[0], $PRESTIGE2[1], 1)
EndFunc

Func _Confirm_Prestige()
   MouseClick($MOUSE_CLICK_LEFT, $CONFIRM_PRESTIGE[0], $CONFIRM_PRESTIGE[1], 1)
EndFunc