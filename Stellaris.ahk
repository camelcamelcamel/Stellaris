;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;; Stellaris interface script by Femganger ;;;;;;;;;
;;;;;;;;;;;;;; Feel free to make any changes ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance Force

;; "Sleep" makes sure that the script pauses for a period in milliseconds,
;; so that the game can catch up before performing the next action (waiting for menus to pop up etc).
;; If the script is not working properly you may need to increase the sleep periods.


shortSleep := 100
longSleep := 400

;; shortSleep is a waiting period to move the mouse back to its original position after menu click.
;; If this is too short or nonexistant, a sequence of "Click X, move mouse to Y"
;; will register the click at Y instead due to the click not having time to process before moving
;; on to the move command.

;; Modifier keys terminology:
;; # = windows key
;; ! = alt
;; ^ = ctrl

;; Enslave / Emancipate pop, mouseover tile ;;
#s::
Click
MouseGetPos, xCoordinate, yCoordinate
Sleep %longSleep%
Click 669, 372
Sleep %longSleep%
Click 944, 466
Sleep %shortSleep%
MouseMove, %xCoordinate%, %yCoordinate%
return

;; Upgrade surface tile by hovering over yellow tab ;;
#a::
Click
MouseGetPos, xCoordinate, yCoordinate
Sleep %longSleep%
Click 766, 376
Sleep %shortSleep%
MouseMove, %xCoordinate%, %yCoordinate%
return

;; Embark all after selecting planet ;;
#w::
MouseGetPos, xCoordinate, yCoordinate
Click 87, 603
Sleep %shortSleep%
MouseMove, %xCoordinate%, %yCoordinate%
return

/*
;; All lines below are personal preference key rebinds due to the F-keys being a bit out of reach.
;; Activate them by removing the slash-asterisks that signal the start/end of what's commented.
!w::
Send {F2}
return

!s::
Send {F4}
return

!q::
Send {F6}
return

!e::
Send {F6}
return
*/