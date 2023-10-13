#lang racket

;==============================
;QUESTION 0
(define rollList
  (lambda (n)
    (build-list n (lambda (x)
                    0;replace this with the actual function body
                    ))
    ))

;Rolls will be usfull for testing later fucntions
(define rolls (rollList 6))
(display "rolls: ") rolls

;==============================
;QUESTION 1
(define filterRolls
  (lambda (evens g)
    (list);replace this with the actual function body
  ))

;Test code, leave alone
(define evens (filterRolls #t rolls))
(define odds (filterRolls #f rolls))
(display "even values: ")
evens
(display "odd values: ")
odds

;==============================
;QUESTION 2
;use foldl to set each variable correctly
(define evenTotal 0)
(define oddTotal 0)
;leave this test code alone
(display "even total: " ) evenTotal
(display "odd total: ") oddTotal

;==============================
;QUESTION 3
(define losingRoll
  (lambda (failValue g)
    (foldl (lambda (value previous)
              #f;replace this with the correct lambda body
            )
            #f;make sure this works with the function body you wrote
            g)))

;test code, leave alone
(display "even losing roll: ")(losingRoll 2 rolls)
(display "odd losing roll: ")(losingRoll 1 rolls)


;==============================
;QUESTION 4
(define getScore
  (lambda (evens g)
    0;replace this with the actual function body
  ))

; Note: while rolls is based on an even number of rolls
; these tests are just to make sure the calculations work.
(display "even score: ")(getScore #t rolls)
(display "odd score: ")(getScore #f rolls)

;==============================
;QUESTION 6
(define playGame
  (lambda (numRolls)
    0;replace this with the actual function body
  ))

;test code, leave alone
(display "game with 6  rolls: ")(playGame 6)
(display "game with 5 rolls: ")(playGame 5)
