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
CG-USER(1): (defun chainage_arriere (base_de_faits base_de_regles but_a_atteindre)

  (let ((chemins nil) (prem T) (reussi nil))
    (if (member but base_de_faits)
      (setq reussi T)

      (progn
        (loop for reg in base_de_regles do
          (if (member but (cadr reg))
            (push reg chemins)
          )
        )
        (if chemins
          (loop for reg in chemins do
            (setq premiss T)
            (loop for premiss in (car reg) do
              (if (not (chainage_arriere base_de_faits (remove reg base_de_regles) p))
                (setq pre nil)
              )
            )
            (if premiss
              (setq reussi T)
            )
          )
        )
      )
    )
    Success
  )
)
CHAINAGE_ARRIERE
CG-USER(2): (setq base_de_regles2 '(((B D E) (z))
           ((C) (D))
           ((D) (E))
           ((t) (H))
           ((B) (X))
          )
)
(((B D E) (Z)) ((C) (D)) ((D) (E)) ((T) (H)) ((B) (X)))
CG-USER(3): (setq base_de_regle '(((B D Z) (M))
           ((D G) (T))
           ((C F) (T))
           ((C) (D))
           ((D) (E))
           ((T) (H))
           ((B) (X))
           ((X C) (T))
          )
)
(((B D Z) (M)) ((D G) (T)) ((C F) (T)) ((C) (D)) ((D) (E)) ((T) (H)) ((B) (X)) ((X C) (T)))
CG-USER(4): (setq base_de_faits '(E F))
(E F)
CG-USER(5): 
(chainage_arriere base_de_faits base_de_regles 'H)
CG-USER(5): (chainage_arriere base_de_faits base_de_regles 'H)
Error: Attempt to take the value of the unbound variable `BASE_DE_REGLES'.
[condition type: UNBOUND-VARIABLE]
CG-USER(6): (chainage_arriere base_de_faits base_de_regle'H)
Error: Attempt to take the value of the unbound variable `BUT'.
[condition type: UNBOUND-VARIABLE]
CG-USER(7): (defun chainage_arriere (base_de_faits base_de_regles but_a_atteindre)

  (let ((chemins nil) (prem T) (reussi nil))
    (if (member but base_de_faits)
      (setq reussi T)

      (progn
        (loop for reg in base_de_regles do
          (if (member but_a_atteindre (cadr reg))
            (push reg chemins)
          )
        )
        (if chemins
          (loop for reg in chemins do
            (setq premiss T)
            (loop for premiss in (car reg) do
              (if (not (chainage_arriere base_de_faits (remove reg base_de_regles) p))
                (setq pre nil)
              )
            )
            (if premiss
              (setq reussi T)
            )
          )
        )
      )
    )
    Success
  )
)
Error: Attempt to take the value of the unbound variable `BUT'.
[condition type: UNBOUND-VARIABLE]
CG-USER(8): (chainage_arriere base_de_faits base_de_regle 'H)
Error: Attempt to take the value of the unbound variable `BUT'.
[condition type: UNBOUND-VARIABLE]
CG-USER(9): (defun chainage_arriere (base_de_faits base_de_regles but_a_atteindre)

  (let ((chemins nil) (prem T) (reussi nil))
    (if (member but_a_atteindre base_de_faits)
      (setq reussi T)

      (progn
        (loop for reg in base_de_regles do
          (if (member but_a_atteindre (cadr reg))
            (push reg chemins)
          )
        )
        (if chemins
          (loop for reg in chemins do
            (setq premiss T)
            (loop for premiss in (car reg) do
              (if (not (chainage_arriere base_de_faits (remove reg base_de_regles) p))
                (setq pre nil)
              )
            )
            (if premiss
              (setq reussi T)
            )
          )
        )
      )
    )
    Success
  )
)
CHAINAGE_ARRIERE
CG-USER(10): (chainage_arriere base_de_faits base_de_regle'H)
Error: Attempt to take the value of the unbound variable `BUT'.
[condition type: UNBOUND-VARIABLE]
CG-USER(11): (defun chainage_arriere (base_de_faits base_de_regles but_a_atteindre)

  (let ((chemins nil) (prem T) (reussi nil))
    (if (member but_a_atteindre base_de_faits)
      (setq reussi T)

      (progn
        (loop for reg in base_de_regles do
          (if (member but_a_atteindre (cadr reg))
            (push reg chemins)
          )
        )
        (if chemins
          (loop for reg in chemins do
            (setq premiss T)
            (loop for premiss in (car reg) do
              (if (not (chainage_arriere base_de_faits (remove reg base_de_regles) p))
                (setq premiss nil)
              )
            )
            (if premiss
              (setq reussi T)
            )
          )
        )
      )
    )
    Success
  )
)
CHAINAGE_ARRIERE
CG-USER(12): (chainage_arriere base_de_faits base_de_regle'H)
Error: Attempt to take the value of the unbound variable `P'.
[condition type: UNBOUND-VARIABLE]
CG-USER(13): (defun chainage_arriere (base_de_faits base_de_regles but_a_atteindre)

  (let ((chemins nil) (prem T) (reussi nil))
    (if (member but_a_atteindre base_de_faits)
      (setq reussi T)

      (progn
        (loop for reg in base_de_regles do
          (if (member but_a_atteindre (cadr reg))
            (push reg chemins)
          )
        )
        (if chemins
          (loop for reg in chemins do
            (setq premiss T)
            (loop for premiss in (car reg) do
              (if (not (chainage_arriere base_de_faits (remove reg base_de_regles) premiss))
                (setq premiss nil)
              )
            )
            (if premiss
              (setq reussi T)
            )
          )
        )
      )
    )
    Success
  )
)
CHAINAGE_ARRIERE
CG-USER(14): (chainage_arriere base_de_faits base_de_regle'H)
Error: Attempt to take the value of the unbound variable `P'.
[condition type: UNBOUND-VARIABLE]
CG-USER(15): (defun chainage_arriere (base_de_faits base_de_regles but_a_atteindre)

  (let ((chemins nil) (prem T) (reussi nil))
    (if (member but_a_atteindre base_de_faits)
      (setq reussi T)

      (progn
        (loop for reg in base_de_regles do
          (if (member but_a_atteindre (cadr reg))
            (push reg chemins)
          )
        )
        (if chemins
          (loop for reg in chemins do
            (setq premiss T)
            (loop for premiss in (car reg) do
              (if (not (chainage_arriere base_de_faits (remove reg base_de_regles) premiss))
                (setq premiss nil)
              )
            )
            (if premiss
              (setq reussi T)
            )
          )
        )
      )
    )
    'Success
  )
)
CHAINAGE_ARRIERE
CG-USER(16): (chainage_arriere base_de_faits base_de_regle'H)
Error: Attempt to take the value of the unbound variable `SUCCESS'.
[condition type: UNBOUND-VARIABLE]
CG-USER(17): (defun chainage_arriere (base_de_faits base_de_regles but_a_atteindre)

  (let ((chemins nil) (prem T) (reussi nil))
    (if (member but_a_atteindre base_de_faits)
      (setq reussi T)

      (progn
        (loop for reg in base_de_regles do
          (if (member but_a_atteindre (cadr reg))
            (push reg chemins)
          )
        )
        (if chemins
          (loop for reg in chemins do
            (setq premiss T)
            (loop for premiss in (car reg) do
              (if (not (chainage_arriere base_de_faits (remove reg base_de_regles) premiss))
                (setq premiss nil)
              )
            )
            (if premiss
              (setq reussi T)
            )
          )
        )
      )
    )
    'Success
  )
)
CHAINAGE_ARRIERE
CG-USER(18): (chainage_arriere base_de_faits base_de_regle'H)
SUCCESS
CG-USER(19): 