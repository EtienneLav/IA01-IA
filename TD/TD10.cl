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
CG-USER(1): e
Error: Attempt to take the value of the unbound variable `E'.
[condition type: UNBOUND-VARIABLE]
CG-USER(2): (defclass $person () 
              (($nom :accessor nom :initarg nom :type string)
               ($prenom :accessor prenom :initarg prenom :type string)
               )
              )
#<STANDARD-CLASS $PERSON>
CG-USER(3): (setq $0 (make-instance '$person :nom "Albert" :prenom "Alan"))
Error: :PRENOM :NOM are invalid initargs to make-instance of class #<STANDARD-CLASS $PERSON>. The valid
       initargs are NOM PRENOM.
[condition type: PROGRAM-ERROR]
CG-USER(4): (setq $0 (make-instance '$person nom "Albert" prenom "Alan"))

Error: Attempt to take the value of the unbound variable `NOM'.
[condition type: UNBOUND-VARIABLE]
CG-USER(5): (setq $0 (make-instance '$person : nom "Albert" : prenom "Alan"))

Error: :PRENOM :NOM are invalid initargs to make-instance of class #<STANDARD-CLASS $PERSON>. The valid
       initargs are NOM PRENOM.
[condition type: PROGRAM-ERROR]
CG-USER(6): (setq $0 (make-instance '$person:nom "Albert":prenom "Alan"))

Error: Package "$PERSON" not found. [file position = 33]
[condition type: READER-ERROR]
CG-USER(7): (setq $0 (make-instance '$person :nom "Albert" :prenom "Alan"))
(setq $0 (make-instance '$person:nom "Albert":prenom "Alan"))
Error: :PRENOM :NOM are invalid initargs to make-instance of class #<STANDARD-CLASS $PERSON>. The valid
       initargs are NOM PRENOM.
[condition type: PROGRAM-ERROR]
CG-USER(8): (defclass $person () 
              (($nom :accessor nom :initarg :nom :type string)
               ($prenom :accessor prenom :initarg :prenom :type string)
               )
              )

#<STANDARD-CLASS $PERSON>
CG-USER(9): 
CG-USER(9): (defclass $person1 () 
              (($nom :accessor nom :initarg :nom :type string)
               ($prenom :accessor prenom :initarg :prenom :type string)
               )
              )
#<STANDARD-CLASS $PERSON1>
CG-USER(10):  (setq $0 (make-instance '$person1 :nom "Albert" :prenom "Alan"))

#<$PERSON1 @ #x214dbe5a>
CG-USER(11): 
CG-USER(11): (describe $0)
#<$PERSON1 @ #x214dbe5a> is an instance of #<STANDARD-CLASS $PERSON1>:
 The following slots have :INSTANCE allocation:
  $NOM    "Albert"
  $PRENOM "Alan"
CG-USER(12): (setf (:nom $0) "Dupont")
Error: `(SETF :NOM)' is not fbound
[condition type: UNDEFINED-FUNCTION]
CG-USER(13): (setf (nom $0) "Dupont")
"Dupont"
CG-USER(14): (describe $0)
#<$PERSON1 @ #x2132f16a> is an instance of #<STANDARD-CLASS $PERSON1>:
 The following slots have :INSTANCE allocation:
  $NOM    "Dupont"
  $PRENOM "Alan"
CG-USER(15): (nom $0)
"Dupont"
CG-USER(16): (prenom $0)
"Alan"
CG-USER(17): (defclass $point ()
               (($abcisse :accessor abcisse :initarg :abcisse :type float)
                ($ordonnee :accessor ordonnee :initarg :ordonnee :type float)
                )
               )
#<STANDARD-CLASS $POINT>
CG-USER(18): (setq $0 (make-instance '$point :abcisse 1 :ordonnee 2))
#<$POINT @ #x21394eea>
CG-USER(19): (describe $0)
#<$POINT @ #x21394eea> is an instance of #<STANDARD-CLASS $POINT>:
 The following slots have :INSTANCE allocation:
  $ABCISSE  1
  $ORDONNEE 2
CG-USER(20): (defclass $cercle ()
               (($centre :accessor centre :initarg :centre :type $point)
                ($rayon :accessor rayon : initarg :rayon :type float)
                )
               )
#<STANDARD-CLASS $CERCLE>
CG-USER(21): (setq $1 (make-instance '$cercle :centre $0 :rayon 2))
#<$CERCLE @ #x213adc0a>
CG-USER(22): (describe $1)
#<$CERCLE @ #x213adc0a> is an instance of #<STANDARD-CLASS $CERCLE>:
 The following slots have :INSTANCE allocation:
  $CENTRE #<$POINT @ #x21394eea>
  $RAYON  2
CG-USER(23): (defclass $carre ()
               (($sommet :accessor sommet :initarg :sommet :type $point)
                ($longueur :accessor longueur :initarg :longueur :type float)
                )
               )
#<STANDARD-CLASS $CARRE>
CG-USER(24): (setq $2 (make-instance '$carre :sommet $0 :longueur 10))
#<$CARRE @ #x213c5972>
CG-USER(25): (describe $2)
#<$CARRE @ #x213c5972> is an instance of #<STANDARD-CLASS $CARRE>:
 The following slots have :INSTANCE allocation:
  $SOMMET   #<$POINT @ #x21394eea>
  $LONGUEUR 10
CG-USER(26): (defclasse rectangle ()
               (($sommet_gauche :accessor sommet_gauche :initarg :sommt_gauche :type $point)
                ($largeur :accessor largeur :initarg :largeur :type float)
                ($longueur :accessor longueur :initarg :longueur :type float)
                )
               )
Error: attempt to call `DEFCLASSE' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(27): (defclass rectangle ()
               (($sommet_gauche :accessor sommet_gauche :initarg :sommt_gauche :type $point)
                ($largeur :accessor largeur :initarg :largeur :type float)
                ($longueur :accessor longueur :initarg :longueur :type float)
                )
               )
#<STANDARD-CLASS RECTANGLE>
CG-USER(28): (setq $3 (make-instance '$carre :sommet_gauche $0 :largeur 1 :longueur 2))
Error: :LARGEUR :SOMMET_GAUCHE are invalid initargs to make-instance of class #<STANDARD-CLASS $CARRE>. The
       valid initargs are :SOMMET :LONGUEUR.
[condition type: PROGRAM-ERROR]
CG-USER(29): (defclass rectangle ()
               (($sommet_gauche :accessor sommet_gauche :initarg :sommet_gauche :type $point)
                ($largeur :accessor largeur :initarg :largeur :type float)
                ($longueur :accessor longueur :initarg :longueur :type float)
                )
               )
#<STANDARD-CLASS RECTANGLE>
CG-USER(30): (setq $3 (make-instance '$carre :sommet_gauche $0 :largeur 1 :longueur 2))

Error: :LARGEUR :SOMMET_GAUCHE are invalid initargs to make-instance of class #<STANDARD-CLASS $CARRE>. The
       valid initargs are :SOMMET :LONGUEUR.
[condition type: PROGRAM-ERROR]
CG-USER(31): (defclass rectangle ()
               (($sommet-gauche :accessor sommet-gauche :initarg :sommet-gauche :type $point)
                ($largeur :accessor largeur :initarg :largeur :type float)
                ($longueur :accessor longueur :initarg :longueur :type float)
                )
               )
#<STANDARD-CLASS RECTANGLE>
CG-USER(32): (setq $3 (make-instance '$carre :sommet-gauche $0 :largeur 1 :longueur 2))

Error: :LARGEUR :SOMMET-GAUCHE are invalid initargs to make-instance of class #<STANDARD-CLASS $CARRE>. The
       valid initargs are :SOMMET :LONGUEUR.
[condition type: PROGRAM-ERROR]
CG-USER(33): (defclass rectangle ()
               (($sommet :accessor sommet :initarg :sommet :type $point)
                ($largeur :accessor largeur :initarg :largeur :type float)
                ($longueur :accessor longueur :initarg :longueur :type float)
                )
               )
#<STANDARD-CLASS RECTANGLE>
CG-USER(34): (setq $3 (make-instance '$carre :sommet $0 :largeur 1 :longueur 2))
Error: :LARGEUR is an invalid initarg to make-instance of class #<STANDARD-CLASS $CARRE>. The valid
       initargs are :SOMMET :LONGUEUR.
[condition type: PROGRAM-ERROR]
CG-USER(35): (setq $3 (make-instance '$rectangle :sommet $0 :largeur 1 :longueur 2))

Error: No class named: $RECTANGLE.
[condition type: PROGRAM-ERROR]
CG-USER(36): (defclass $rectangle ()
               (($sommet :accessor sommet :initarg :sommet :type $point)
                ($largeur :accessor largeur :initarg :largeur :type float)
                ($longueur :accessor longueur :initarg :longueur :type float)
                )
               )
#<STANDARD-CLASS $RECTANGLE>
CG-USER(37): (setq $3 (make-instance '$rectangle :sommet $0 :largeur 1 :longueur 2))
#<$RECTANGLE @ #x21344492>
CG-USER(38): (describe $3)
#<$RECTANGLE @ #x21344492> is an instance of #<STANDARD-CLASS $RECTANGLE>:
 The following slots have :INSTANCE allocation:
  $SOMMET   #<$POINT @ #x21327f12>
  $LARGEUR  1
  $LONGUEUR 2
CG-USER(39): (defclass $triangle ()
               (($sommet1 :accessor sommet1 :initarg :sommet1 :type $point)
                ($sommet2 :accessor sommet2 :initarg :sommet2 :type $point)
                ($sommet3 :accessor sommet3 :initarg :sommet3 :type $point)
                )
               )
#<STANDARD-CLASS $TRIANGLE>
CG-USER(40): (setq $4 (make-instance '$triangle :sommet1 $0  :sommet2 $0 :sommet3 $0))
#<$TRIANGLE @ #x213a6a1a>
CG-USER(41): (describe $4)
#<$TRIANGLE @ #x213a6a1a> is an instance of #<STANDARD-CLASS $TRIANGLE>:
 The following slots have :INSTANCE allocation:
  $SOMMET1 #<$POINT @ #x21327f12>
  $SOMMET2 #<$POINT @ #x21327f12>
  $SOMMET3 #<$POINT @ #x21327f12>
CG-USER(42): (defclass $polygone ()
               (($point :accessor point :initarg :point :type list)))
#<STANDARD-CLASS $POLYGONE>
CG-USER(43): (setq $5 (make-instance '$point :abcisse 10 :ordonnee 15))
#<$POINT @ #x213b99f2>
CG-USER(44): (setq $6 (make-instance '$polygone :point ($0 $5)))
Error: attempt to call `$0' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(45): (setq $6 (make-instance '$polygone :point '($0 $5)))
#<$POLYGONE @ #x213e1a5a>
CG-USER(46): (describe $6)
#<$POLYGONE @ #x213e1a5a> is an instance of #<STANDARD-CLASS $POLYGONE>:
 The following slots have :INSTANCE allocation:
  $POINT ($0 $5)
CG-USER(47): (defmethode=translat-cercle ((xx $cercle) dx dy)
                 ((setf (abcisse (centre xx)) (+ (abcisse (centre xx)) dx))
                  (setf (ordonnee (centre xx)) (+ (ordonnee (centre xx)) dy))
                  )
               )
            
Error: attempt to call `DEFMETHODE=TRANSLAT-CERCLE' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(48): (defmethod=translat-cercle ((xx $cercle) dx dy)
                 ((setf (abcisse (centre xx)) (+ (abcisse (centre xx)) dx))
                  (setf (ordonnee (centre xx)) (+ (ordonnee (centre xx)) dy))
                  )
               )
Error: attempt to call `DEFMETHOD=TRANSLAT-CERCLE' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(49): (defmethod =translate-cercle ((xx $cercle) dx dy)
                 ((setf (abcisse (centre xx)) (+ (abcisse (centre xx)) dx))
                  (setf (ordonnee (centre xx)) (+ (ordonnee (centre xx)) dy))
                  )
               )
Error: Unsyntactic subform appeared in a functional position:
       (SETF (ABCISSE (CENTRE XX)) (+ (ABCISSE (CENTRE XX)) DX))
[condition type: PROGRAM-ERROR]
CG-USER(50): (defmethod =translate-cercle ((xx $cercle) dx dy)
                 (setf (abcisse (centre xx)) (+ (abcisse (centre xx)) dx))
                  (setf (ordonnee (centre xx)) (+ (ordonnee (centre xx)) dy))
                  )
               
#<STANDARD-METHOD =TRANSLATE-CERCLE ($CERCLE T T)>
CG-USER(51): 
CG-USER(51): (=translate-cercle $1 1 2)
4
CG-USER(52): (describe $1)
#<$CERCLE @ #x2126d882> is an instance of #<STANDARD-CLASS $CERCLE>:
 The following slots have :INSTANCE allocation:
  $CENTRE #<$POINT @ #x2126c6e2>
  $RAYON  2
CG-USER(53): (point $1)
Error: No methods applicable for generic function #<STANDARD-GENERIC-FUNCTION POINT> with args
       (#<$CERCLE @ #x2126d882>) of classes ($CERCLE)
[condition type: PROGRAM-ERROR]
CG-USER(54): (centre $1)
#<$POINT @ #x2126c6e2>
CG-USER(55): (abcisse (centre $1))
2
CG-USER(56): (ordonnee (centre $1))
4
CG-USER(57): (defmethod =transalte ((point $point) dx dy)
               (setf (abcisse point) (= (abcisse point) dx))
               (setf (ordonnee point) (= (ordonnee point) dy)))
#<STANDARD-METHOD =TRANSALTE ($POINT T T)>
CG-USER(58): (defmethod =translate ((t $triangle) dx dy)
               (=transalte (sommet1 t) dx dy)
               (=transalte (sommet2 t) dx dy)
               (=transalte (sommet3 t) dx dy))
#<STANDARD-METHOD =TRANSLATE ($TRIANGLE T T)>
CG-USER(59): (=translate $3 5 10)
Error: No methods applicable for generic function #<STANDARD-GENERIC-FUNCTION =TRANSLATE> with args
       (#<$RECTANGLE @ #x2132fff2> 5 10) of classes ($RECTANGLE FIXNUM FIXNUM)
[condition type: PROGRAM-ERROR]
CG-USER(60): (=translate $4 5 10)
Error: Cannot bind T -- it is a constant.
[condition type: PROGRAM-ERROR]
CG-USER(61): (describe $4)
#<$TRIANGLE @ #x2132e4c2> is an instance of #<STANDARD-CLASS $TRIANGLE>:
 The following slots have :INSTANCE allocation:
  $SOMMET1 #<$POINT @ #x2126c6e2>
  $SOMMET2 #<$POINT @ #x2126c6e2>
  $SOMMET3 #<$POINT @ #x2126c6e2>
CG-USER(62): (defmethod =inversey (p $point)
               (setf (ordonne p) (* (ordonnee p) -1)))
#<STANDARD-METHOD =INVERSEY (T T)>
CG-USER(63): (inversey $0)
Error: attempt to call `INVERSEY' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(64): (=inversey $0)
Error: (METHOD =INVERSEY (T T)) got 1 arg, wanted 2 args.
[condition type: PROGRAM-ERROR]
CG-USER(65): (defmethod =inversey ((p $point))
               (setf (ordonne p) (* (ordonnee p) -1)))
Error: Attempt to add the method #<STANDARD-METHOD =INVERSEY ($POINT) @ #x2147e252> to the generic function
       #<STANDARD-GENERIC-FUNCTION =INVERSEY> but the method has fewer required arguments than the generic
       function.
[condition type: PROGRAM-ERROR]
CG-USER(66): (defmethod =inversey((p $point))
               (setf (ordonne p) (* (ordonnee p) -1)))
Error: Attempt to add the method #<STANDARD-METHOD =INVERSEY ($POINT) @ #x214abd2a> to the generic function
       #<STANDARD-GENERIC-FUNCTION =INVERSEY> but the method has fewer required arguments than the generic
       function.
[condition type: PROGRAM-ERROR]
CG-USER(67): (defmethod =inversey2((p $point))
               (setf (ordonne p) (* (ordonnee p) -1)))
#<STANDARD-METHOD =INVERSEY2 ($POINT)>
CG-USER(68): (=inversey2 $0)
Error: `(SETF ORDONNE)' is not fbound
[condition type: UNDEFINED-FUNCTION]
CG-USER(69): (defmethod =inversey3((p $point))
               (setf (ordonnee p) (* (ordonnee p) -1)))
#<STANDARD-METHOD =INVERSEY3 ($POINT)>
CG-USER(70): (=inversey3 $0)
-4
CG-USER(71): (describe $0)
#<$POINT @ #x2126c6e2> is an instance of #<STANDARD-CLASS $POINT>:
 The following slots have :INSTANCE allocation:
  $ABCISSE  2
  $ORDONNEE -4
CG-USER(72): (defmethod =inversex3((p $point))
               (setf (abcisse p) (* (abcisse p) -1)))
#<STANDARD-METHOD =INVERSEX3 ($POINT)>
CG-USER(73): (defmethod =zoom ((p $point) facteur)
               (setf (abcisse p) (* (abcisse p) facteur))
               (seft (ordonnee p) (* (ordonnee p) facteur)))
#<STANDARD-METHOD =ZOOM ($POINT T)>
CG-USER(74): (=zoom $0 100)
Error: attempt to call `SEFT' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(75): (defmethod =zoom1 ((p $point) facteur)
               (setf (abcisse p) (* (abcisse p) facteur))
               (setf (ordonnee p) (* (ordonnee p) facteur)))
#<STANDARD-METHOD =ZOOM1 ($POINT T)>
CG-USER(76): (=zoom1 $0 100)
-400
CG-USER(77):(describe $0)
#<$POINT @ #x2126c6e2> is an instance of #<STANDARD-CLASS $POINT>:
 The following slots have :INSTANCE allocation:
  $ABCISSE  20000
  $ORDONNEE -400
CG-USER(78): (defmethod =duplicate ((p $point) dx dy)
               (make-instance '$point :abcisse (transalte (abcisse p) dx) : ordonnee (transalte (ordonnee p) dy)))
#<STANDARD-METHOD =DUPLICATE ($POINT T T)>
CG-USER(79): (=duplicate $6)
Error: No methods applicable for generic function #<STANDARD-GENERIC-FUNCTION =DUPLICATE> with args
       (#<$POLYGONE @ #x2132cca2>) of classes ($POLYGONE)
[condition type: PROGRAM-ERROR]
CG-USER(80): (=duplicate $5)
Error: (METHOD =DUPLICATE ($POINT T T)) got 1 arg, wanted 3 args.
[condition type: PROGRAM-ERROR]
CG-USER(81): (=duplicate $5 5 10)
Error: attempt to call `TRANSALTE' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(82): (defmethod =duplicate1 ((p $point) dx dy)
               (make-instance '$point :abcisse (=transalte (abcisse p) dx) : ordonnee (=transalte (ordonnee p) dy)))
#<STANDARD-METHOD =DUPLICATE1 ($POINT T T)>
CG-USER(83): (=duplicate1 $5 5 10)
Error: No methods applicable for generic function #<STANDARD-GENERIC-FUNCTION =TRANSALTE> with args
       (10 5) of classes (FIXNUM FIXNUM)
[condition type: PROGRAM-ERROR]
CG-USER(84): (=duplicate1 $0 5 10)
Error: No methods applicable for generic function #<STANDARD-GENERIC-FUNCTION =TRANSALTE> with args
       (20000 5) of classes (FIXNUM FIXNUM)
[condition type: PROGRAM-ERROR]
CG-USER(85): (setq $9 '$point :abcisse 0 :ordonnee 0))
CG-USER(85): (setq $9 (make-instance'$point :abcisse 0 :ordonnee 0))
#<$POINT @ #x2134586a>
CG-USER(86): (=duplicate1 $9 1 2)
Error: No methods applicable for generic function #<STANDARD-GENERIC-FUNCTION =TRANSALTE> with args (0 1)
       of classes (FIXNUM FIXNUM)
[condition type: PROGRAM-ERROR]
CG-USER(87): (=transalte $9 1 2)
NIL
CG-USER(88): (describe $9)
#<$POINT @ #x2134586a> is an instance of #<STANDARD-CLASS $POINT>:
 The following slots have :INSTANCE allocation:
  $ABCISSE  NIL
  $ORDONNEE NIL
CG-USER(89): (defmethod =transalte ((point $point) dx dy)
               (setf (abcisse point) (+ (abcisse point) dx))
               (setf (ordonnee point) (+ (ordonnee point) dy)))
#<STANDARD-METHOD =TRANSALTE ($POINT T T)>
CG-USER(90): (=transalte $9 1 2)
Error: `NIL' is not of the expected type `NUMBER'
[condition type: TYPE-ERROR]
CG-USER(91): (setq $9 (make-instance'$point :abcisse 0 :ordonnee 0))
#<$POINT @ #x213c81f2>
CG-USER(92): (describe $9)
#<$POINT @ #x213c81f2> is an instance of #<STANDARD-CLASS $POINT>:
 The following slots have :INSTANCE allocation:
  $ABCISSE  0
  $ORDONNEE 0
CG-USER(93): (=transalte $9 1 2)
2
CG-USER(94): (describe $9)
#<$POINT @ #x213c81f2> is an instance of #<STANDARD-CLASS $POINT>:
 The following slots have :INSTANCE allocation:
  $ABCISSE  1
  $ORDONNEE 2
CG-USER(95): (=duplicate1 $9 1 2)
Error: (:DISCRIMINATOR (:CHECKING (CLASS T T) NIL)) got 2 args, wanted 3 args.
[condition type: PROGRAM-ERROR]
CG-USER(96): (defmethod =duplicate1 ((p $point) dx dy)
               (make-instance '$point :abcisse (=transalte (abcisse p) dx 0) : ordonnee (=transalte (ordonnee p) 0 dy)))
#<STANDARD-METHOD =DUPLICATE1 ($POINT T T)>
CG-USER(97): (=duplicate1 $9 1 2)
Error: No methods applicable for generic function #<STANDARD-GENERIC-FUNCTION =TRANSALTE> with args
       (1 1 0) of classes (FIXNUM FIXNUM FIXNUM)
[condition type: PROGRAM-ERROR]
CG-USER(98): (defmethod =duplicate1 ((p $point) dx dy)
               (make-instance '$point :abcisse (=transalte p dx 0) : ordonnee (=transalte p 0 dy)))
#<STANDARD-METHOD =DUPLICATE1 ($POINT T T)>
CG-USER(99): (=duplicate1 $9 1 2)
#<$POINT @ #x2134efd2>
CG-USER(100): 