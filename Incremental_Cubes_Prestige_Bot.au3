#include <AutoItConstants.au3>
#include <Incremental_Cubes_Positions.au3>
#include <Incremental_Cubes_Helpers.au3>
#include <Incremental_Cubes_Actions.au3>

HotKeySet("{ESC}", "_Terminate")

$Game_Win_X = 2062
$Game_Win_Y = 849

Local $Switch_mode = 0
Local $Loops_Count = 0

_main()

Func _main()
   _GetGamePos() ;; Calculate game window position and actions
   Sleep(50)
   _SetCollect()
   Sleep(50)
   While 1
      Switch $Loops_Count
      Case 0
         _Samurai_Attack()
         _TickSpeed()
         $Switch_mode = 0
         $Loops_Count += 1
      Case 25
         _Magician_Attack()
         _TickSpeed()
         $Switch_mode = 1
         $Loops_Count += 1
      Case 40
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
      Case Else
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
      EndSwitch
   Sleep(25)
   WEnd
EndFunc


Func _Terminate()
	Exit
EndFunc