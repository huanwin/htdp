#lang htdp/bsl

(require 2htdp/image)

(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))

(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))

; design automobile image (and scale it with WHEEL-RADIUS)
; Make the car's body 5 times the length of the car
(define CAR-BODY-WIDTH
  (* WHEEL-RADIUS 5))
(define CAR-BODY-HEIGHT
  (* WHEEL-RADIUS 1.25))
(define CAR-CAB-WIDTH
  (/ CAR-BODY-WIDTH 2))
(define CAR-CAB-HEIGHT
  (/ CAR-BODY-HEIGHT 2))
(define CAR-BODY
  (rectangle CAR-BODY-WIDTH CAR-BODY-HEIGHT "solid" "red"))
(define CAR-CAB
  (rectangle CAR-CAB-WIDTH CAR-CAB-HEIGHT "solid" "red"))

(define CAR-CHASSIS
  (overlay/xy CAR-CAB
              (- (/ CAR-BODY-WIDTH 4))
              CAR-CAB-HEIGHT
              CAR-BODY))
(define WHEELS
  (overlay/xy WHEEL
              WHEEL-DISTANCE
              0
              WHEEL))
(define CAR
  (overlay/xy WHEELS
              WHEEL-RADIUS
              (- WHEEL-RADIUS)
              CAR-CHASSIS))
CAR

; implement tock
; implement checks for tock