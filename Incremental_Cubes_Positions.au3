
Global $Game_Win_X = 2062
Global $Game_Win_Y = 849
Global $Game_Win_X_Size = 645 ;; FIXED VALUE
Global $Game_Win_Y_Size = 555 ;; FIXED VALUE

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
Global $HELPER[2] = [60,290]
Global $HELPER_CLOSE_WIN[2] = [35,55]
Global $SAMURAI_CHARGE[2] = [75,380]
Global $MAGICIAN_CHARGE[2] = [175,380]
Global $HELPER_ATTACK_POS[2] = [380,380]
Global $HELPER_UPDATE_POS[2] = [680,380]


Func _PrepareGameWin()
   WinActive ( "IncrementalCubes" )
   WinMove ( "IncrementalCubes", "", Game_Win_X, Game_Win_Y , Game_Win_X_Size , Game_Win_Y_Size )
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
      $HELPER[$i] += $GAME_POS[$i]
      $SAMURAI_CHARGE[$i] += $GAME_POS[$i]
      $MAGICIAN_CHARGE[$i] += $GAME_POS[$i]
      $HELPER_ATTACK_POS[$i] += $GAME_POS[$i]
      $HELPER_UPDATE_POS[$i] += $GAME_POS[$i]
      $HELPER_CLOSE_WIN[$i] += $GAME_POS[$i]
   Next
EndFunc