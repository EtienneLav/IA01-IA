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
CG-USER(1): (defun impression (L)
              (if (not(eq l nil))
                (progn(print (car L))(impression (cdr L)))
              )
            )
IMPRESSION
CG-USER(2): (impression '(0 1 2))

0 
1 
2 
NIL
CG-USER(3): (defun impression1 (L)
              (dolist (i L)
                (print i)
                )
              )
IMPRESSION1
CG-USER(4): (impression1 '(u t c))

U 
T 
C 
NIL
CG-USER(5): (defun impression2 '(L)
              (mapcar '(lambda (x) (print x)) L)
              )
IMPRESSION2
CG-USER(6): (impression2 '(g i 0 1))
Error: Non-symbol used as a lambda argument name in function IMPRESSION2.
[condition type: PROGRAM-ERROR]
CG-USER(7): (defun impression2 (L)
              (mapcar '(lambda (x) (print x)) L)
              )
IMPRESSION2
CG-USER(8): (impression2 '(g i 0 1))


G 
I 
0 
1 
(G I 0 1)
CG-USER(9): 
CG-USER(9): (impression3 (L)
                         (if (= (length L) 1)
                             (print (car L))
                           (progn 
                             (print (car L))
                             (impression3 (rest L))
                             )
                           )
                         )
Error: attempt to call `IMPRESSION3' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(10): (defun impression3 (L)
                         (if (= (length L) 1)
                             (print (car L))
                           (progn 
                             (print (car L))
                             (impression3 (rest L))
                             )
                           )
                         )
IMPRESSION3
CG-USER(11): (impression3 '(a a a b b b ))

A 
A 
A 
B 
B 
B 
B
CG-USER(12): (defun impression4 (L)
               (maplist '(lambda (x) (print (car x))) L)
               )
IMPRESSION4
CG-USER(13): (impression4 '(e t i e n n e))

E 
T 
I 
E 
N 
N 
E 
(E T I E N N E)
CG-USER(14): (defun impression5 (L)
               (format t "~{~& ~s ~}" L)
               )
IMPRESSION5
CG-USER(15): (impression5 '(t e s t))
 T 
 E 
 S 
 T 
NIL
CG-USER(16): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car L)) ">"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t elem)))
               (format t (concatenate'string "</" (string (car L)) ">")))

MAKE_HTML
CG-USER(17): 
CG-USER(17): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
Error: Attempt to take the value of the unbound variable `L'.
[condition type: UNBOUND-VARIABLE]
CG-USER(18): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) ">"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t elem)))
               (format t (concatenate'string "</" (string (car exp)) ">")))
MAKE_HTML
CG-USER(19): (make_html '(body (header (title "Page 1") "Titre") "Corps"))

<BODY><HEADER><TITLE>Page 1</TITLE>Titre</HEADER>Corps</BODY>
NIL
CG-USER(20): 
CG-USER(20): (defun make_html (exp)
               (print (string (concatenate 'string "<" (string(car l)) ">")))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t elem)))
               (print (string (concatenate 'string "</" (string(car l)) ">"))))

MAKE_HTML
CG-USER(21): 
CG-USER(21): (make_html '(body (header (title "Page 1") "Titre") "Corps"))

Error: Attempt to take the value of the unbound variable `L'.
[condition type: UNBOUND-VARIABLE]
CG-USER(22): (defun make_html (exp)
               (print (string (concatenate 'string "<" (string(car exp)) ">")))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t elem)))
               (print (string (concatenate 'string "</" (string(car exp)) ">"))))
MAKE_HTML
CG-USER(23): (make_html '(body (header (title "Page 1") "Titre") "Corps"))

"<BODY>" 
"<HEADER>" 
"<TITLE>" Page 1
"</TITLE>" Titre
"</HEADER>" Corps
"</BODY>" 
"</BODY>"
CG-USER(24): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) ">~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t elem~%)))
               (format t (concatenate'string "</" (string (car exp)) ">~%")))
MAKE_HTML
CG-USER(25): (make_html '(body (header (title "Page 1") "Titre") "Corps"))

<BODY>
<HEADER>
<TITLE>
Error: Attempt to take the value of the unbound variable `ELEM~%'.
[condition type: UNBOUND-VARIABLE]
CG-USER(26): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t elem~%)))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(27): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
Error: Attempt to take the value of the unbound variable `ELEM~%'.
[condition type: UNBOUND-VARIABLE]
CG-USER(28): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t elem ~%)))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(29): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
Error: Attempt to take the value of the unbound variable `~%'.
[condition type: UNBOUND-VARIABLE]
CG-USER(30): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t elem "~%")))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(31): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
Page 1</TITLE> 
Titre</HEADER> 
Corps</BODY> 
NIL
CG-USER(32):  (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t "~%" elem "~%")))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(33): (make_html '(body (header (title "Page 1") "Titre") "Corps")
                        )
<BODY> 
<HEADER> 
<TITLE> 

</TITLE> 

</HEADER> 

</BODY> 
NIL
CG-USER(34): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t ("~%" elem "~%"))))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(35): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
                        
<BODY> 
<HEADER> 
<TITLE> 
Error: Funcall of "~%" which is a non-function.
[condition type: TYPE-ERROR]
CG-USER(36): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t ("~% string (elem) ~%"))))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(37): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
Error: Funcall of "~% string (elem) ~%" which is a non-function.
[condition type: TYPE-ERROR]
CG-USER(38): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t  "~s ~%" elem)))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(39): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
"Page 1" 
</TITLE> 
"Titre" 
</HEADER> 
"Corps" 
</BODY> 
NIL
CG-USER(40):  (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t  "~{~s ~%}" elem)))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(41): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
Error: formatter found unsyntactic format string:
No matching close directive
~{~s ~%}
 ^


CG-USER(42): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t  "~{~& ~s ~%}" elem)))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(43): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
Error: formatter found unsyntactic format string:
No matching close directive
~{~& ~s ~%}
 ^


CG-USER(44): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t  "~{~& ~s ~% ~}" elem)))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(45): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
#<Printer Error, obj=#x20000685: `"Page 1"' is not of the expected type `LIST'></TITLE> 
#<Printer Error, obj=#x20000685: `"Titre"' is not of the expected type `LIST'></HEADER> 
#<Printer Error, obj=#x20000685: `"Corps"' is not of the expected type `LIST'></BODY> 
NIL
CG-USER(46): (defun make_html (exp)
               (format t (concatenate'string "<" (string (car exp)) "> ~%"))
               (dolist (elem (cdr exp))
                 (if (listp elem)
                     (make_html elem)
                   (format t  "~ { ~s ~% ~}" elem)))
               (format t (concatenate'string "</" (string (car exp)) "> ~%")))
MAKE_HTML
CG-USER(47): (make_html '(body (header (title "Page 1") "Titre") "Corps"))
<BODY> 
<HEADER> 
<TITLE> 
Error: formatter found unsyntactic format string:
Unknown format directive
~ { ~s ~% ~}
 ^


CG-USER(48): (defun fichier-html (l)
               (with-open-file (file "test.html" 
                                     
                                     
                                  :if-does-not-exist : create
                                  :if-exists         : overwrite
                                  :direction         : output)
               (make_html l file))
               )
FICHIER-HTML
CG-USER(49): (defun make_html(exp file)
    (print (string (concatenate 'string "<" (string(car exp)) ">")) file)
    (dolist (elem (cdr L))
            (if (listp elem)
                (make_html elem file)
                (print (string elem) file)))
    (print (string (concatenate 'string "</" (string(car exp)) ">")) file))
MAKE_HTML
CG-USER(50): (fichier-html '(body (header (title "Page 1") "Titre") "Corps"))
Error: Attempt to take the value of the unbound variable `L'.
[condition type: UNBOUND-VARIABLE]
CG-USER(51): (defun make_html(exp file)
    (print (string (concatenate 'string "<" (string(car exp)) ">")) file)
    (dolist (elem (cdr exp))
            (if (listp elem)
                (make_html elem file)
                (print (string elem) file)))
    (print (string (concatenate 'string "</" (string(car exp)) ">")) file))
               
MAKE_HTML
CG-USER(52): 
CG-USER(52): (fichier-html '(body (header (title "Page 1") "Titre") "Corps"))
"</BODY>"
CG-USER(53): 