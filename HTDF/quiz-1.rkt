;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quiz-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; quiz-1.rkt

;; Image Image -> Boolean
;; comparse whether image1 is larger than image2
;; stub
;; (define (larger_image? img1 img2) true);
(check-expect (larger_image? (rectangle 15 15 "solid" "red") (rectangle 10 10 "solid" "red")) true);
(check-expect (larger_image? (rectangle 10 15 "solid" "red") (rectangle 15 10 "solid" "red")) false);
(check-expect (larger_image? (rectangle 10 10 "solid" "red") (rectangle 15 15 "solid" "red")) false);

;; template
;; (define (larger_image? img1 img2)
;;   (...img1 img2))

(define (image-area n)
   (*
    (image-height n)
    (image-width n)))


(define (larger_image? img1 img2)
  (> (image-area img1) (image-area img2)))