#include <AutoItConstants.au3>

HotKeySet("{ESC}", "_Terminate")

Func _Terminate()
	Exit
 EndFunc


Global $MOUSE_CLICKS = 2
Global $MOUSE_DELAY = 4

Global $GAME_POS
Global $ATTACK[2] = [850,280]
Global $SET_ATTACK[2] = [905,280]
Global $COLLECT[2] = [850,330]
Global $SET_COLLECT[2] = [905,330]
Global $TICK_SPEED[2] = [55,85]
Global $WHITE_TICK[2] = [185,135]
Global $UNLOCK_BLUE[2] = [170,450]
Global $BLUE_TICK[2] = [185,170]
Global $UNLOCK_GREEN[2] = [240,450]
Global $GREEN_TICK[2] = [185,215]
Global $NEXT[2] = [850,375]
Global $PRESTIGE1[2] = [850,430]
Global $PRESTIGE2[2] = [750,510]
Global $CONFIRM_PRESTIGE[2] = [350,430]

Func _PrepareGameWin()
   WinActive ( "IncrementalCubes" )
   WinMove ( "IncrementalCubes", "", 2062, 849 , 945 , 555 )
EndFunc

Func _GetGamePos()
   $GAME_POS = WinGetPos ( "IncrementalCubes","" )
   For $i = 0 to 1
	  $ATTACK[$i] += $GAME_POS[$i]
	  $SET_ATTACK[$i] += $GAME_POS[$i]
	  $COLLECT[$i] += $GAME_POS[$i]
	  $SET_COLLECT[$i] += $GAME_POS[$i]
	  $TICK_SPEED[$i] += $GAME_POS[$i]
	  $WHITE_TICK[$i] += $GAME_POS[$i]
	  $UNLOCK_BLUE[$i] += $GAME_POS[$i]
	  $BLUE_TICK[$i] += $GAME_POS[$i]
	  $UNLOCK_GREEN[$i] += $GAME_POS[$i]
	  $GREEN_TICK[$i] += $GAME_POS[$i]
	  $NEXT[$i]+= $GAME_POS[$i]
	  $PRESTIGE1[$i] += $GAME_POS[$i]
	  $PRESTIGE2[$i] += $GAME_POS[$i]
	  $CONFIRM_PRESTIGE[$i] += $GAME_POS[$i]
   Next
EndFunc

Func _Attack()
   MouseClick($MOUSE_CLICK_LEFT, $ATTACK[0],$ATTACK[1],$MOUSE_CLICKS,$MOUSE_DELAY)
EndFunc

Func _SetAttack()
   MouseClick($MOUSE_CLICK_LEFT, $SET_ATTACK[0],$SET_ATTACK[1],1,$MOUSE_DELAY)
EndFunc

Func _Collect()
   MouseClick($MOUSE_CLICK_LEFT, $COLLECT[0],$COLLECT[1],$MOUSE_CLICKS,$MOUSE_DELAY)
EndFunc

Func _SetCollect()
   MouseClick($MOUSE_CLICK_LEFT, $SET_COLLECT[0],$SET_COLLECT[1],1,$MOUSE_DELAY)
EndFunc

Func _TickSpeed()
   MouseClick($MOUSE_CLICK_LEFT, $TICK_SPEED[0],$TICK_SPEED[1],1,$MOUSE_DELAY)
EndFunc

Func _BuyWhite()
   MouseClick($MOUSE_CLICK_LEFT, $WHITE_TICK[0],$WHITE_TICK[1],$MOUSE_CLICKS,$MOUSE_DELAY)
EndFunc

Func _UnlockBlue()
   MouseClick($MOUSE_CLICK_LEFT, $UNLOCK_BLUE[0],$UNLOCK_BLUE[1],$MOUSE_CLICKS,$MOUSE_DELAY)
EndFunc

Func _BuyBlue()
   MouseClick($MOUSE_CLICK_LEFT, $BLUE_TICK[0],$BLUE_TICK[1],$MOUSE_CLICKS,$MOUSE_DELAY)
EndFunc

Func _UnlockGreen()
   MouseClick($MOUSE_CLICK_LEFT, $UNLOCK_GREEN[0],$UNLOCK_GREEN[1],$MOUSE_CLICKS,$MOUSE_DELAY)
EndFunc

Func _BuyGreen()
   MouseClick($MOUSE_CLICK_LEFT, $GREEN_TICK[0],$GREEN_TICK[1],$MOUSE_CLICKS,$MOUSE_DELAY)
EndFunc

Func _Next()
   MouseClick($MOUSE_CLICK_LEFT, $NEXT[0],$NEXT[1],$MOUSE_CLICKS,$MOUSE_DELAY)
EndFunc

Func _Prestige1()
   MouseClick($MOUSE_CLICK_LEFT, $PRESTIGE1[0],$PRESTIGE1[1],1)
EndFunc

Func _Prestige2()
   MouseClick($MOUSE_CLICK_LEFT, $PRESTIGE2[0],$PRESTIGE2[1],1)
EndFunc

Func _Confirm_Prestige()
   MouseClick($MOUSE_CLICK_LEFT, $CONFIRM_PRESTIGE[0],$CONFIRM_PRESTIGE[1],1)
EndFunc


Local $Switch_mode = 0
Local $Loops_Count = 0
_main()
Func _main()
   _GetGamePos()
	  Sleep(50)
   _TickSpeed()
	  Sleep(50)
   _SetCollect()
   Sleep(50)
   While 1
	  Sleep(50)
	  if $Switch_mode Then
		 _Attack()
	  Else
		 _Collect()
	  EndIf
	  _Next()
	  _UnlockBlue()
	  _UnlockGreen()
	  _BuyWhite()
	  _BuyBlue()
	  _BuyGreen()
	  $Loops_Count += 1
	  if $Loops_Count >= 15 Then
		 $Switch_mode = 1
	  EndIf
	  if $Loops_Count >= 30 Then
		 _Prestige1()
		 Sleep(100)
		 _Prestige2()
		 Sleep(100)
		 _Confirm_Prestige()
		 Sleep(5000)
		 _TickSpeed()
		 Sleep(100)
		 $Loops_Count = 0
		 $Switch_mode = 0
	  EndIf
   WEnd
 EndFunc

