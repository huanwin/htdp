#lang htdp/bsl

(require 2htdp/image)

(define WIDTH 200)
(define HEIGHT 100)

(define HULL_HEIGHT (/ HEIGHT 4))
(define HULL_WIDTH (/ WIDTH 2))

(define HULL (ellipse HULL_WIDTH HULL_HEIGHT "solid" "brown"))
(define DECK (rectangle HULL_WIDTH (/ HULL_HEIGHT 2) "solid" "brown"))

(define SHIP_BASE (overlay/xy DECK 0 (/ (image-height DECK) 4) HULL))

(define MAST (rectangle (/ HULL_WIDTH 10) (* HULL_HEIGHT 2) "solid" "brown"))
(define SHIP_MAST (overlay/xy SHIP_BASE (/ (image-width SHIP_BASE) 2) (- 0 (/ (image-height MAST) 2)) MAST))

(define SAIL (triangle (/ (image-height MAST) 2) "solid" "gray"))
(define SAIL_MAST (overlay/xy SAIL (- (/ (image-width SAIL) 2) (/ (image-width MAST) 2)) (/ (image-height SAIL) 2) MAST))