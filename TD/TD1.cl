International Allegro CL Free Express Edition
9.0 [Windows] (Sep 25, 2014 17:43)
Copyright (C) 1985-2012, Franz Inc., Oakland, CA, USA.  All Rights Reserved.

This development copy of Allegro CL is licensed to:
   Allegro CL 9.0 Express user

CG version 9.0 / IDE version 9.0
Loaded options from C:\Users\Etienne\Documents\allegro-prefs-9-0-express.cl.

;; Optimization settings: safety 1, space 1, speed 1, debug 2.
;; For a complete description of all compiler switches given the current optimization settings evaluate
;; (EXPLAIN-COMPILER-SETTINGS).

[changing package from "COMMON-LISP-USER" to "COMMON-GRAPHICS-USER"]
CG-USER(1): 23
23
CG-USER(2): (quote 23)
23
CG-USER(3): '23
23
CG-USER(4): (set x 32)
Error: Attempt to take the value of the unbound variable `X'.
[condition type: UNBOUND-VARIABLE]
CG-USER(5): (setq x 32)
32
CG-USER(6): (list x x 32)
(32 32 32)
CG-USER(7): (cadr (list x x 32))
32
CG-USER(8): (setq x 'y)
Y
CG-USER(9): (setq xx 5)
5
CG-USER(10): (setq y '(+ xx xx 32))
(+ XX XX 32)
CG-USER(11): x
Y
CG-USER(12): (eval x)
(+ XX XX 32)
CG-USER(13): (eval y)
42
CG-USER(14): (cadr y)
XX
CG-USER(15): (eval (list '+ (eval y) (cadr y)))
47
CG-USER(16): (setq z (+ (if 2 0) (caddr y) (* y y)))
Error: `(+ XX XX 32)' is not of the expected type `NUMBER'
[condition type: TYPE-ERROR]
CG-USER(17): (setq y (list (setq z "Albert") x y))
("Albert" Y (+ XX XX 32))
CG-USER(18): z
"Albert"
CG-USER(19): y
("Albert" Y (+ XX XX 32))
CG-USER(20): (setq x (* x x))
Error: `Y' is not of the expected type `NUMBER'
[condition type: TYPE-ERROR]
CG-USER(21): x
Y
CG-USER(22): (defun ordre (L) ( list (cadr L) car L caddr L))
ORDRE
CG-USER(23): ordre '(3 / 2)
Error: Attempt to take the value of the unbound variable `ORDRE'.
[condition type: UNBOUND-VARIABLE]
CG-USER(24): ordre (3 / 2)
Error: Attempt to take the value of the unbound variable `ORDRE'.
[condition type: UNBOUND-VARIABLE]
CG-USER(25): (ordre (3 / 2))
Error: Funcall of 3 which is a non-function.
[condition type: TYPE-ERROR]
CG-USER(26): (ordre '(3 / 2))
Error: Attempt to take the value of the unbound variable `CAR'.
[condition type: UNBOUND-VARIABLE]
CG-USER(27): (defun ordre (L) (list (cadr L) (car L) (caddr L)))
ORDRE
CG-USER(28): (ordre '(3 / 2)
                    )
(/ 3 2)
CG-USER(29): (setq x (ordre '(3 / 2)))
(/ 3 2)
CG-USER(30): (eval x)
3/2
CG-USER(31): (defun infpref (expr) 
               ( if (listp expr) 
                   (list (cadr expr) (ordre (car expr)) (ordre (caddr (expr))))))
INFPREF
CG-USER(32): infpref '((x + 2) / (x - 3))
Error: Attempt to take the value of the unbound variable `INFPREF'.
[condition type: UNBOUND-VARIABLE]
CG-USER(33): (infpref '((x+2)/(x-3)))
Error: attempt to call `EXPR' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(34): (defun infpref (L) 
               ( if (listp L) 
                   (list (cadr L) (ordre (car L)) (ordre (caddr (L))))))

INFPREF
CG-USER(35): 
CG-USER(35): (infpref '((x + 2 ) / (x - 3 )))
Error: attempt to call `L' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(36): (infpref '(x + 2))
Error: Attempt to take the cdr of X which is not listp.
[condition type: TYPE-ERROR]
CG-USER(37): (infpref '((x + 2) / 2 ))
Error: attempt to call `L' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(38): (defun infpref (L) 
               ( if (listp L) 
                   (list (cadr L) (ordre (car L)) (ordre (caddr L)))))
INFPREF
CG-USER(39): (infpref '((x + 2) / 2 ))

Error: Attempt to take the cdr of 2 which is not listp.
[condition type: TYPE-ERROR]
CG-USER(40): (infpref '((x + 2) / (2 + x))
                      )

(/ (+ X 2) (+ 2 X))
CG-USER(41): 
CG-USER(41): (setq y (infpref '((x + 2) / (2 + x)) ))

(/ (+ X 2) (+ 2 X))
CG-USER(42): 
CG-USER(42): (eval y)
Error: `(/ 3 2)' is not of the expected type `NUMBER'
[condition type: TYPE-ERROR]
CG-USER(43): y
(/ (+ X 2) (+ 2 X))
CG-USER(44): x
(/ 3 2)
CG-USER(45): 
CG-USER(45): (setq x 3)
3
CG-USER(46): (eval y)
1
CG-USER(47): 