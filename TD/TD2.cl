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
CG-USER(1): (defun derive-terme (L x)
              (if (equal x L) 1 0 ))
DERIVE-TERME
CG-USER(2): (derive-terme 'x 'x)
1
CG-USER(3): (derive-terme 'x 'y)
0
CG-USER(4): (derive-terme 1 'x)
0
CG-USER(5): (derive-terme 2 'y)
0
CG-USER(6): (defun derive-addition (exp var)
              (if (atom exp)
                  (derive-terme exp var)
                (list (car exp)(derive-addition (cadr exp) var) (derive-addition (caddr exp) var))))
              
DERIVE-ADDITION
CG-USER(7): 
CG-USER(7): (derive-addition '(+ 2 x) 'x)
(+ 0 1)
CG-USER(8): (derive-addition '(+ y y) 'x)
(+ 0 0)
CG-USER(9): (derive-addition '(- x 21) 'x)
(- 1 0)
CG-USER(10): (defun derive-multiple (exp var)
               (if (atom exp) ( derive-terme exp var)
                 (list '+ (list (car exp) (derive-multiple (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-multiple (caddr exp) var)))
                 ))
DERIVE-MULTIPLE
CG-USER(11): (derive-multiple '(* 2 x) 'x)
(+ (* 0 X) (* 2 1))
CG-USER(12): (derive-multiple '(* x x) 'y)
(+ (* 0 X) (* X 0))
CG-USER(13): (derive-multiple '(* x x) 'x)
(+ (* 1 X) (* X 1))
CG-USER(14): (derive-division (exp var)
                              (if (atom exp) (derive-terme exp var)
                                (list 
                                 (car exp) 
                                 (list ('- (list '* (derive-division (cadr exp) var) (caddr exp)) (list '* (cadr exp)(derive-division (caddr exp)var))))
                                 ('* (caddr exp) (caddr exp)))))
Error: attempt to call `DERIVE-DIVISION' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(15): (defun derive-division (exp var)
                              (if (atom exp) (derive-terme exp var)
                                (list 
                                 (car exp) 
                                 (list ('- (erive-division (caddr exp)var))))
                                 ('* (caddr exp) (caddr exp)))))
DERIVE-DIVISION
CG-USER(16): (derive-division '(x 2) 'x)
Error: Illegal function object: '-.
[condition type: TYPE-ERROR]
CG-USER(17): '-
-
CG-USER(18): (derive-division '(1 1) 'x)
Error: Illegal function object: '-.
[condition type: TYPE-ERROR]
CG-USER(19): (defun derive-division (exp var)
                              (if (atom exp) (derive-terme exp var)
                                (list 
                                 (car exp)
                                 (list '- (derive-division (caddr exp)var))
                                 ('* (caddr exp) (caddr exp)))))

DERIVE-DIVISION
CG-USER(20): 
CG-USER(20): (derive-division '(1 x) 'x)
Error: Illegal function object: '*.
[condition type: TYPE-ERROR]
CG-USER(21): (defun derive-division (exp var)
                              (if (atom exp) (derive-terme exp var)
                                (list 
                                 (car exp)
                                 (list '- (derive-division (caddr exp)var))
                                 (list  '* (caddr exp) (caddr exp)))))
DERIVE-DIVISION
CG-USER(22): (derive-division '(1 x) 'x)
(1 (- 0) (* NIL NIL))
CG-USER(23): (derive-division '(/ 2 x) 'x)
(/ (- 1) (* X X))
CG-USER(24): (defun derive-division (exp var)
                              (if (atom exp) (derive-terme exp var)
                                (list 
                                 (car exp) 
                                 (list '- (list '* (derive-division (cadr exp) var) (caddr exp)) (list '* (cadr exp)(derive-division (caddr exp)var)))
                                 (list '* (caddr exp) (caddr exp)))))
DERIVE-DIVISION
CG-USER(25): (derive-division ('/ 2 x) 'x)
Error: Attempt to take the value of the unbound variable `X'.
[condition type: UNBOUND-VARIABLE]
CG-USER(26): (derive-division '(x 2) 'x)
(X (- (* 0 NIL) (* 2 0)) (* NIL NIL))
CG-USER(27): (derive-division ('/ 2 x) 'x)
Error: Attempt to take the value of the unbound variable `X'.
[condition type: UNBOUND-VARIABLE]
CG-USER(28): (derive-division '(/ x 2) 'x)
(/ (- (* 1 2) (* X 0)) (* 2 2))
CG-USER(29): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp)) (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ))
DERIVE-OPERATION
CG-USER(30): (derive-operation '(* (+ 1 x) (* x x)) 'x)
(+ (* (+ 0 1) (* X X)))
CG-USER(31): (derive-operation '(+ (+ 2 x) (+ x x)) 'x)
(+ (+ 0 1) (+ 1 1))
CG-USER(32): (derive-operation '(+ (* 4 x) (* x x)) 'x)
(+ (+ (* 0 X)) (+ (* 1 X)))
CG-USER(33): (derive-operation '+ 2 x) 'x)
()
(
)
(derive-operation '(+ 2 x) 'x)
)
(
(
CG-USER(33): (derive-operation '(+ x 2) 'x)
(+ 1 0)
CG-USER(34): (derive-operation '(+ (+ x x) (+ 2 x)))
Error: DERIVE-OPERATION got 1 arg, wanted 2 args.
[condition type: PROGRAM-ERROR]
CG-USER(35): (derive-operation '(+ (+ x x) (+ 2 x)) 'x)
(+ (+ 1 1) (+ 0 1))
CG-USER(36): (derive-operation '(+ (* 2 x) (+ x x)) 'x)
(+ (+ (* 0 X)) (+ 1 1))
CG-USER(37): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp))  (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-operation (caddr exp) var))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ))
DERIVE-OPERATION
CG-USER(38): (derive-operation '(+ (* 2 x) (+ 4 x)) 'x)
(+ (+ (* 0 X) (* 2 1)) (+ 0 1))
CG-USER(39): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp))  (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-operation (caddr exp) var))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ))
DERIVE-OPERATION
CG-USER(40): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp))  (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-operation (caddr exp) var))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ((eql '/ (car exp)) ((list '- (list '* derive-operation (cadr exp) var) (caddr exp)) (list '* (cadr exp)(derive-operation (caddr exp)var))) (list '* (caddr exp) (caddr exp)))
                ))
DERIVE-OPERATION
CG-USER(41): (derive-operation '(/ (+ 2 x) (* x x)) 'x)
Error: Illegal function object: (LIST '- (LIST '* DERIVE-OPERATION (CADR EXP) VAR) (CADDR EXP)).
[condition type: TYPE-ERROR]
CG-USER(42): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp))  (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-operation (caddr exp) var))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ((eql '/ (car exp)) (list '- (list '* derive-operation (cadr exp) var) (caddr exp)) (list '* (cadr exp)(derive-operation (caddr exp)var))) (list '* (caddr exp) (caddr exp))
                ))
DERIVE-OPERATION
CG-USER(43): (derive-operation '(/ (+ 2 x) (* x x)) 'x)
Error: Attempt to take the value of the unbound variable `DERIVE-OPERATION'.
[condition type: UNBOUND-VARIABLE]
CG-USER(44): (derive-operation '(/ 2 x) 'x)
Error: Attempt to take the value of the unbound variable `DERIVE-OPERATION'.
[condition type: UNBOUND-VARIABLE]
CG-USER(45): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp))  (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-operation (caddr exp) var))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ((eql '/ (car exp)) (list '- (list '* (derive-operation (cadr exp) var) (caddr exp)) (list '* (cadr exp)(derive-operation (caddr exp)var))) (list '* (caddr exp) (caddr exp)))
                ))

DERIVE-OPERATION
CG-USER(46): 
CG-USER(46): (derive-operation '(/ 2 x) 'x)
(* X X)
CG-USER(47): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp))  (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-operation (caddr exp) var))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ((eql '/ (car exp)) (list '- (list '* (derive-operation (cadr exp) var) (caddr exp)) (list '* (cadr exp)(derive-operation (caddr exp)var))) (list '* (caddr exp) (caddr exp)))
                ))
CG-USER(47): (derive-operation '(/ (+ 2 x) (* x x)) 'x)
(* (* X X) (* X X))
CG-USER(48): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp))  (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-operation (caddr exp) var))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ((eql '/ (car exp)) (list (car exp) (list '- (list '* (derive-operation (cadr exp) var) (caddr exp)) (list '* (cadr exp)(derive-operation (caddr exp)var))) (list '* (caddr exp) (caddr exp))))
                ))
CG-USER(47): (deriv
DERIVE-OPERATION
CG-USER(49): 
Error: Attempt to take the value of the unbound variable `CG-USER'.
[condition type: UNBOUND-VARIABLE]
CG-USER(50): (defun derive-operation (exp var)
               (cond
                ((atom exp) (derive-terme exp var))
                ((eql '* (car exp))  (list '+ (list (car exp) (derive-operation (cadr exp) var) (caddr exp)) (list (car exp) (cadr exp) (derive-operation (caddr exp) var))))
                ((eql '+ (car exp)) (list (car exp) (derive-operation (cadr exp) var) (derive-operation (caddr exp) var)))
                ((eql '/ (car exp)) (list (car exp) (list '- (list '* (derive-operation (cadr exp) var) (caddr exp)) (list '* (cadr exp)(derive-operation (caddr exp)var))) (list '* (caddr exp) (caddr exp))))
                ))
DERIVE-OPERATION
CG-USER(51): (derive-operation '(/ (+ 2 x) (* x x)) 'x)
(/ (- (* (+ 0 1) (* X X)) (* (+ 2 X) (+ (* 1 X) (* X 1)))) (* (* X X) (* X X)))
CG-USER(52): 