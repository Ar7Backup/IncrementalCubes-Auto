#include <AutoItConstants.au3>

;~ Global $HELPER[2] = [60,290]
;~ Global $HELPER_CLOSE_WIN[2] = [35,55]
;~ Global $SAMURAI_CHARGE[2] = [75,380]
;~ Global $MAGICIAN_CHARGE[2] = [175,380]
;~ Global $HELPER_ATTACK_POS[2] = [380,380]
;~ Global $HELPER_UPDATE_POS[2] = [680,380]

Global $DRAG_SPEED = 5

Global $Samurai_Status = 0 ;; 0 = Charge, 1 = Equipment, 2 = Update
Global $Magician_Status = 0 ;; 0 = Charge, 1 = Equipment, 2 = Update

Func _Helper_Update_to_Attack()
   MouseClickDrag ( $MOUSE_CLICK_LEFT, $HELPER_UPDATE_POS[0], $HELPER_UPDATE_POS[1], $HELPER_ATTACK_POS[0], $HELPER_ATTACK_POS[1] , $DRAG_SPEED )
EndFunc

Func _Helper_Attack_to_Update()
   MouseClickDrag ( $MOUSE_CLICK_LEFT, $HELPER_ATTACK_POS[0], $HELPER_ATTACK_POS[1], $HELPER_UPDATE_POS[0], $HELPER_UPDATE_POS[1] , $DRAG_SPEED )
EndFunc

Func _Samurai_Charge_to_Attack()
   MouseClickDrag ( $MOUSE_CLICK_LEFT, $SAMURAI_CHARGE[0], $SAMURAI_CHARGE[1], $HELPER_ATTACK_POS[0], $HELPER_ATTACK_POS[1] , $DRAG_SPEED )
EndFunc

Func _Magician_Charge_to_Attack()
   MouseClickDrag ( $MOUSE_CLICK_LEFT, $MAGICIAN_CHARGE[0], $MAGICIAN_CHARGE[1], $HELPER_ATTACK_POS[0], $HELPER_ATTACK_POS[1] , $DRAG_SPEED )
EndFunc

Func _Open_Helper_Menu()
   MouseClick ( $MOUSE_CLICK_LEFT, $HELPER[0], $HELPER[1], $MOUSE_DELAY )
EndFunc

Func _Close_Helper_Menu()
   MouseClick ( $MOUSE_CLICK_LEFT, $HELPER_CLOSE_WIN[0], $HELPER_CLOSE_WIN[1], $MOUSE_DELAY )
EndFunc

Func _Samurai_Attack()
   _Open_Helper_Menu()
   Sleep(30)
   Switch $Samurai_Status
   Case 0
      _Samurai_Charge_to_Attack()
   Case 2
      _Helper_Update_to_Attack()
   EndSwitch
   If $Magician_Status = 1 Then
      _Helper_Attack_to_Update()
      $Magician_Status = 2
      _Samurai_Charge_to_Attack()
   EndIf
   $Samurai_Status = 1
   Sleep(30)
   _Close_Helper_Menu()
EndFunc

Func _Magician_Attack()
   _Open_Helper_Menu()
   Sleep(30)
   Switch $Magician_Status
   Case 0
      _Magician_Charge_to_Attack()
   Case 2
      _Helper_Update_to_Attack()
   EndSwitch
   If $Samurai_Status = 1 Then
      _Helper_Attack_to_Update()
      $Samurai_Status = 2
      _Magician_Charge_to_Attack()
   EndIf
   $Magician_Status = 1
   Sleep(30)
   _Close_Helper_Menu()
EndFunc