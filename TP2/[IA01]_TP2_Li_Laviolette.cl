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
CG-USER(1): (defun rival (joueur)
              (cond
               (( eq joueur 1) 2)
               (( eq joueur 2) 1)
               (t nil)
	)
)

RIVAL
CG-USER(2): 
CG-USER(2): (rival 1)
2
CG-USER(3): (rival 1)
2
CG-USER(4): (rival 2)
1
CG-USER(5): (defun not-dernier (L)
                (setq final '())
                (setq i 0)
                (while (< i (- (length L) 1) )
                  	(progn
                   		 (setq final (append final (list (nth i L))))
                  		  (setq i (+ 1 i))
                   	 )
                  )
                final
                )

NOT-DERNIER
CG-USER(6): 
CG-USER(6): (not-dernier '((5 0) (4 0)))
((5 0))
CG-USER(7): (defun successeur1 (nb joueur)
               (let ((list_suc nil) (joueur2 (rival joueur)))
                 (if (> nb 2) (push (list (- nb 3) joueur2) list_suc))
                 (if (> nb 1) (push (list (- nb 2) joueur2) list_suc))
                 (if (> nb 0) (push (list (- nb 1) joueur2) list_suc))
                 list_suc)
)

SUCCESSEUR1
CG-USER(8): 
CG-USER(8): (defun successeur (nb joueur)
               (let ((list_suc nil) (joueur2 (rival joueur)))
                 (if (> nb 2) (push (list (- nb 3) joueur2) list_suc))
                 (if (> nb 1) (push (list (- nb 2) joueur2) list_suc))
                 (if (> nb 0) (push (list (- nb 1) joueur2) list_suc))
                 list_suc)
)

SUCCESSEUR
CG-USER(9): 
CG-USER(9): (successeur 5 1)
((4 2) (3 2) (2 2))
CG-USER(10): (defun test_etat (nb joueur)

  (cond 
   ((eq nb 0) (rival joueur))
   ((> nb 0)  (let* ((joueur2 (rival joueur))
                     (e1 (test_etat (- nb 1) joueur2))
                     (e2 (test_etat (- nb 2) joueur2))
                     (e3 (test_etat (- nb 3) joueur2)))
                (if (or (eq joueur e1) (eq joueur e2) (eq joueur e3)) joueur joueur2)))
   (t nil)
  )
)

TEST_ETAT
CG-USER(11): 
CG-USER(11): (test_etat 5 1)
1
CG-USER(12): (defparameter solution nil)

SOLUTION
CG-USER(13): 
CG-USER(13): (defun profondeur (etat)
               (if (equal (car (last solution)) '(0 2)) 
                                   (progn 
                                        (print 'gagne)
                                        (setq solution (cons '(5 1) solution))
                                        (print solution)
                                        (setq solution (cdr solution))            
                                               )              
                 (if (equal (car (last solution)) '(0 1)) ()
                     (dolist (x (successeur (car etat) (cadr etat)) 'fin)
                       (progn
                         (setq solution (append solution (list x)))
                         (profondeur x)
                         (setq solution (not-dernier solution))
                          )
                     ) 
                 ) 
                )
               )

PROFONDEUR
CG-USER(14): 
CG-USER(14): (profondeur '(5 1))

GAGNE 
((5 1) (4 2) (3 1) (2 2) (1 1) (0 2)) 
GAGNE 
((5 1) (4 2) (3 1) (0 2)) 
GAGNE 
((5 1) (4 2) (2 1) (0 2)) 
GAGNE 
((5 1) (4 2) (1 1) (0 2)) 
GAGNE 
((5 1) (3 2) (2 1) (0 2)) 
GAGNE 
((5 1) (3 2) (1 1) (0 2)) 
GAGNE 
((5 1) (2 2) (1 1) (0 2)) 
FIN
CG-USER(15): (defparameter state-final nil)
STATE-FINAL
CG-USER(16): (defparameter ens-state nil)
ENS-STATE
CG-USER(17): (defparameter state-final '(0 2))
STATE-FINAL
CG-USER(18): state_final
Error: Attempt to take the value of the unbound variable `STATE_FINAL'.
[condition type: UNBOUND-VARIABLE]
CG-USER(19): ens-state
NIL
CG-USER(20): (defparameter state_fin '(0 2))
STATE_FIN
CG-USER(21): state _fin
Error: Attempt to take the value of the unbound variable `STATE'.
[condition type: UNBOUND-VARIABLE]
CG-USER(22): state_fin
(0 2)
CG-USER(23): (defun explore-depth (nb joueur)
  (push (list nb joueur) states-passes)
  (if (equal (list nb joueur) state-fin)
      t
    (let ((ens-state (successors nb joueur)))
      (if (null ens-state)
          nil
        (loop
          (setq etat_courant (pop ens-state))
          (if (explore-depth (car etat_courant) (cadr etat_courant))
                  (return t )
            (if (null ens-state) (return nil)))
          )))))

EXPLORE-DEPTH
CG-USER(24): 
CG-USER(24): (explore-depth 5 1)
Error: Attempt to take the value of the unbound variable `STATES-PASSES'.
[condition type: UNBOUND-VARIABLE]
CG-USER(25): (setq state-final '(0 1))

(0 1)
CG-USER(26): 
CG-USER(26): (setq state-final '(0 2))

(0 2)
CG-USER(27): 
CG-USER(27): (setq states-passes nil)
NIL
CG-USER(28): (explore-depth 5 1)
Error: Attempt to take the value of the unbound variable `STATE-FIN'.
[condition type: UNBOUND-VARIABLE]
CG-USER(29): (defun explore-depth (nb joueur)
  (push (list nb joueur) states-passes)
  (if (equal (list nb joueur) state-final)
      t
    (let ((ens-states (successeur nb joueur)))
      (if (null ens-states)
          nil
        (loop
          (setq etat_courant (pop ens-states))
          (if (explore-depth (car etat_courant) (cadr etat_courant))
                  (return t )
            (if (null ens-states) (return nil)))
          )))))

EXPLORE-DEPTH
CG-USER(30): 
CG-USER(30): (explore-depth 5 1)
Error: attempt to call `SUCCESSORS' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(31): (explore-depth 5 1)
Error: attempt to call `SUCCESSORS' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(32): (defun explore-depth (nb joueur)
  (push (list nb joueur) states-passes)
  (if (equal (list nb joueur) state-final)
      t
    (let ((ens-states (successeur nb joueur)))
      (if (null ens-states)
          nil
        (loop
          (setq etat_courant (pop ens-states))
          (if (explore-depth (car etat_courant) (cadr etat_courant))
                  (return t )
            (if (null ens-states) (return nil)))
          )))))
EXPLORE-DEPTH
CG-USER(33): (explore-depth 5 1)
T
CG-USER(34): (defun largeur (etat)
              (if (equal (car (last solution)) '(0 1))
                  (progn
                    (print 'gagne))
                (progn
                  (dolist (x (successeur1 (car etat) (cadr etat)) 'fin)
                    (setq solution (append solution (list x))))
                  (pop solution)
                  (largeur (car solution))
                )
                )
              )

LARGEUR
CG-USER(35): 
CG-USER(35): (setq solution nil)
NIL
CG-USER(36): (largeur '(5 1))

GAGNE 
GAGNE
CG-USER(37): 