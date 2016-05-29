;EX1-Mise en condition
;1.reverseA(arg1 arg2 arg3)
(defun reverseA (x y z) (list z y x))

;2.reverseB(N L)
(defun reverseB (L)
 (if (caddr L)   (list  (caddr L) (cadr L) (car L))
  (if (cadr L)  (list (cadr L) (car L))
   (car L))))




;3.reverseC(L)
(defun R (L)
	(if (equal nil  L)
     ()
     (append (R (cdr L)) (list (car L)))))




;4.double(L)
(defun D (L)
 (if L
  (if (listp (car L))
   (append (list (car L)) (D (cdr L)))
   (append (list (car L)) (list (car L)) (D (cdr L)))
   )))


;la fonction au-dessous marche aussi si’l exist element de nil
(defun D (L)
 (if L
  (if (and (listp (car L)) (not (equal (car L) nil)))
   (append (list (car L)) (D (cdr L)))
   (append (list (car L)) (list (car L)) (D (cdr L)))
   )))


;5.doublebis(L)

(defun DD (L)
 (if L
  (if (listp (car L))
   (append (list (DD (car L))) (DD (cdr L)))
   (append (list (car L)) (list (car L)) (DD (cdr L)))
   )))

;la fonction au-dessous marche aussi si’l exist element de nil
(defun DD (L)
 (if L
  (if (and (listp (car L)) (not (equal (car L) nil)))
   (append (list (DD (car L))) (DD (cdr L)))
   (append (list (car L)) (list (car L)) (DD (cdr L)))
   ))
 
 
 
 ;6.monAppend(L M)
 (defun A (x y)
  (if (equal x nil)
   y
   (cons (car x) (A (cdr x) y))
   ))
 
 ;7.myEqual
 
 ;|
 >(eq 'LUC 'LUC)
 T
 
 >(eq ‘LUC ‘DANIEL)
 Nil
 
 > (eq (car '(do re)) (cadr '(mi do sol)))
 T
 
 >(eq '(d p f t r) '(d p f t r))
 Nil
 
 >(equal '(d p f t r) '(d p f t r))
 T
 
 ;|
 
 (defun E (x y)
  (cond
   ((eq x y)  T)
   ((and (listp x) (listp y) (eq (car x) (car y))) (E (cdr x) (cdr y)))
   (T Nil)
   ))
 
 
 

 ;EX2-MapCar&Paire

(defun liste-paire (L) (mapcar #’(lambda (x) (list x x)) L ))
 
 
 

 ;EX3-My-assoc&Cle

 (defun my­assoc (cle a­liste)
  (if (equal nil a-liste ) ‘nil
   (if (equal cle (first (first a-liste))) (first a-liste) (my-assoc cle (rest a-liste)))
   ) )

 ;EX4-BDD
 
 ;Partie A
 
 ;1. (defun nom (personne) (nth 0 personne))
 ;2. (defun prenom (personne)(nth 1 personne))
 ;3. (defun ville (personne)(nth 2 personne))
 ;4. (defun age (personne) (nth 3 personne))
 ;5. (defun nombre-livres (personne) (nth 4 personne))
 
 ;Partie B
 
 ;FB1-iteratif
 
 (defun FB1 (BDD)
    (dolist (i BDD)
     (print i))
  )
 
 ;FB1-recursif
 
 (defun FB1-recursif (BDD)
  (when (not (null BDD)
    (FB1-recursif (rest BDD)))
  (print (first BDD))
  )
  
  
  ;FB2-iteratif
  
  (defun FB2 (BDD)
   (dolist (i BDD)
        (when (equal 'perrot (nom i)) 
               (print i))
         )
    )
   
   ;FB2-recursif
   
   (defun FB2-recursif (BDD)
    (cond
     ((equal 'perrot (nom (first BDD)))
        (cons (first BDD) (FB2-recursif (rest BDD))))
    ((null BDD) nil)
      (t (FB2-recursif (rest BDD))))
    )
    
    ;FB3-iteratif
    
    (defun FB3 (name BDD)
     (dolist (i BDD)
        (when (equal name(nom i)) (print i))
      )
     )
    
    ;FB3-recursif
    
    (defun FB3-recursif (name BDD)
     (cond
      ((equal name (nom (first BDD)))
        (cons (first BDD) (FB3-recursif name(rest BDD))))
      ((null BDD) nil)
        (t (FB3-recursif name (rest BDD))))
     )
    
    ;FB4-iteratif
    
    (defun FB4 (age-demand BDD) (dolist (i BDD)
        (when (equal age-demand (nom i))
         (return i))
        )
     )
    
    ;FB4-recursif
    
    
    (defun FB4-recursif (age-demand BDD)
     (cond
        ((equal name (age-demand(first BDD)))
                (cons (first BDD) (FB4-recursif age- demand(rest BDD))))
        ((null BDD) nil)
                (t (FB4-recursif age-demand (rest BDD))))
     )
    
    
    ;FB5-iteratif
    
    (defun FB5 (BDD) (dolist (i BDD)
        (when (> 100 (nombre-livre i))
         (return i))
    )
     
     ;FB5-recursif
     
     (defun FB5-recursif (BDD)
      (cond
        ((> 100(nombre-livres (first BDD)))
                (first BDD))
       ((null BDD) nil)
                (t (FB5-recursif (rest BDD))))
      )
     
     ;FB6
     
     (defun FB6 (name BDD)
      (let ((somme 0))
      (dolist (i BDD)
        (when (equal name (nom i))
                (setq somme (+ somme (age i)))))
        (print (/ somme (length (FB3 name BDD))))
       )
      )
    
  
