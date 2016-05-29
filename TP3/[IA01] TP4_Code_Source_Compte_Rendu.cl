;;;;;;;;;;;;;;; Base_Initiale;;;;;;;;;;;;;;;

;Déclaration des variables globales unitialisées vides

(defvar *Base-de-donnee* '()) ; voir explications ci-après
(defvar *Base-de-faits* '())
(defvar *Base-de-questions* '())
(defvar *Base-historique-question* '())
(defvar *Base-de-regle* '())
(defvar *liste-marques* '())
(defvar *liste-categories* '())

(setq *Base-de-donnee* `(
((nom aerobic)(endroit interieur)(type individuel)(age)(categorie fitness)(but (muscler detendre social)))       
((nom aikido)(endroit interieur)(type individuel)(age )(categorie combat)(but (muscler depenser)))
((nom aqua-gym)(endroit interieur)(type individuel)(age)(categorie fitness)(but (muscler detentre)))
((nom aviron)(endroit exterieur)(type collectif)(age)(categorie natation)(but (depenser social muscler)))
((nom badminton)(endroit interieur)(type individuel)(age)(categorie balle)(but (depenser)))
((nom ballade-equitation)(endroit exterieur)(type individuel)(age)(categorie equitation)(but (detendre depenser)))
((nom baseball)(endroit exterieur)(type collectif)(age)(categorie balle)(but (depenser social)))
((nom escrime)(endroit interieur)(type individuel)(age)(categorie combat)(but (muscler depenser)))
((nom basketball)(endroit exterieur)(type collectif)(age)(categorie balle)(but (depenser social)))
((nom boxe)(endroit interieur)(type individuel)(age)(categorie combat)(but (muscler depenser)))
((nom course-rally)(endroit exterieur)(type individuel)(age ,18)(categorie extreme)(but (depenser)))
((nom curling)(endroit interieur)(type collectif)(age)(categorie balle)(but (depenser social)))
((nom cyclisme)(endroit exterieur)(type individuel)(age)(categorie endurance)(but (muscler depenser)))
((nom danse)(endroit interieur)(type individuel)(age)(categorie fitness)(but (detentre social)))
((nom escalade)(endroit exterieur)(type individuel)(age)(categorie extreme)(but (depenser muscler)))
((nom football)(endroit exterieur)(type collectif)(age)(categorie balle)(but (depenser social)))
((nom football-americain)(endroit exterieur)(type collectif)(age ,15)(categorie balle)(but (depenser social muscler)))
((nom footing)(endroit exterieur)(type individuel)(age)(categorie endurance)(but (muscler depenser detente)))
((nom formule-1)(endroit exterieur)(type individuel)(age ,18)(categorie extreme)(but (depenser)))
((nom golf)(endroit exterieur)(type individuel)(age)(categorie balle)(but (detendre)))
((nom gym)(endroit interieur)(type individuel)(age)(categorie fitness)(but (muscler)))
((nom hockey-sur-glace)(endroit interieur)(type collectif)(age)(categorie balle)(but (depenser social muscler)))
((nom hockey-sur-gazon)(endroit exterieur)(type collectif)(age)(categorie balle)(but (depenser social muscler)))
((nom handball)(endroit interieur)(type collectif)(age)(categorie balle)(but (depenser social muscler)))
((nom jiu-jitsu)(endroit interieur)(type individuel)(age ,12)(categorie combat)(but (muscler depenser)))
((nom judo)(endroit interieur)(type individuel)(age)(categorie combat)(but (muscler depenser)))
((nom karate)(endroit interieur)(type individuel)(age)(categorie combat)(but (muscler depenser)))
((nom kendo)(endroit interieur)(type individuel)(age)(categorie combat)(but (muscler depenser)))
((nom lancer-de-javelot)(endroit exterieur)(type individuel)(age ,16)(categorie athletisme)(but (muscler depenser)))
((nom lancer-de-poids)(endroit exterieur)(type individuel)(age ,16)(categorie athletisme)(but (muscler depenser)))
((nom lancer-de-disque)(endroit exterieur)(type individuel)(age)(categorie athletisme)(but (muscler depenser)))
((nom marathon)(endroit exterieur)(type individuel)(age ,18)(categorie endurance)(but (muscler depenser)))
((nom moto-cross)(endroit exterieur)(type individuel)(age ,18)(categorie extreme)(but (muscler depenser)))
((nom moto-enduro)(endroit exterieur)(type individuel)(age ,18)(categorie extreme)(but (muscler depenser social)))
((nom moto-freestyle)(endroit exterieur)(type individuel)(age ,18)(categorie extreme)(but (muscler depenser social)))
((nom musculation)(endroit interieur)(type individuel)(age ,18)(categorie fitness)(but (muscler)))
((nom natation-synchronise)(endroit interieur)(type collectif)(age)(categorie natation)(but (depenser social)))
((nom natation-plongeon)(endroit interieur)(type individuel)(age)(categorie natation)(but (depenser)))
((nom natation-sprint)(endroit interieur)(type individuel)(age)(categorie natation)(but (depenser se muscler)))
((nom patin-a-glace-vitesse)(endroit interieur)(type individuel)(age)(categorie glisse)(but (depenser)))
((nom patin-a-glace-artistique)(endroit interieur)(type individuel)(age)(categorie glisse)(but (depenser social)))
((nom petanque)(endroit exterieur)(type individuel)(age)(categorie balle)(but (depenser social)))
((nom rugby-quinze)(endroit exterieur)(type collectif)(age)(categorie balle)(but (depenser social muscler detendre)))
((nom rugby-sept)(endroit exterieur)(type collectif)(age)(categorie balle)(but (depenser social muscler)))
((nom roller)(endroit deux)(type individuel)(age)(categorie glisse)(but (depenser)))
((nom saut-ski)(endroit exterieur)(type individuel)(age)(categorie extreme)(but (depenser)))
((nom saut-parachute)(endroit exterieur)(type individuel)(age ,15)(categorie extreme)(but (depenser)))
((nom saut-a-laperche)(endroit exterieur)(type individuel)(age)(categorie athletisme)(but (muscler depenser)))
((nom saut-longueur/hauteur)(endroit deux)(type individuel)(age)(categorie athletisme)(but (muscler depenser)))
((nom saut-d-obstacle-equitation)(endroit exterieur)(type individuel)(age)(categorie equitation)(but (detendre depenser)))
((nom ski-freestyle)(endroit exterieur)(type individuel)(age)(categorie extreme)(but (depenser)))
((nom ski-alpin)(endroit exterieur)(type individuel)(age)(categorie glisse)(but (depenser)))
((nom ski-fond)(endroit exterieur)(type individuel)(age)(categorie glisse)(but (muscler detendre depenser)))
((nom sprint)(endroit exterieur)(type individuel)(age)(categorie endurance)(but (muscler depenser)))
((nom taekwondo)(endroit interieur)(type individuel)(age)(categorie combat)(but (muscler depenser)))((nom tennis)(endroit interieur)(type individuel)(age)(categorie balle)(but (depenser)))
((nom tennis-de-table)(endroit exterieur)(type individuel)(age)(categorie balle)(but (depenser)))
((nom tir-a-l-arc)(endroit exterieur)(type individuel)(age)(categorie athletisme)(but (muscler)))
((nom volley-ball)(endroit interieur)(type collectif)(age)(categorie balle)(but (depenser social)))
((nom water-polo)(endroit interieur)(type collectif)(age)(categorie balle)(but (depenser social muscler)))
((nom yoga)(endroit interieur)(type collectif)(age)(categorie fitness)(but (muscler detendre)))
((nom zumba)(endroit interieur)(type individuel)(age)(categorie fitness)(but (muscler detendre social)))


))


;;;;;;;;;;;;;;;;;;;;;;;; base_de_questions_choisi arbitrairement;;;;;;;;;;;;;;;;;;;;;;; : 
;Entre crochet en remarque que ce sont les choix à rentrer par l'utilisateur, une première suggestion est ici mise en place avant la vérification post-lecture
; On remarque que les questions sont à poser en fonction des catégories du sport ... Afin d'améliorer la cohérence de l'ensemble

(setq *Base-de-questions* `(
(combat
	(QC-martial-classique "Sport de combat : {martial} ou {classique) ?" ((martial art-martial) (classique classique)))
	(QC-main-arme "Sport de combat plutot : {arme), ou {mains} nues ou {mixte} ?" ((arme arme) (mains main) (mixte arme-et-main)))
	(QC-sol-debout "Sport de combat plutot : {debout}, au {sol} ou {mixte} ?" ((debout debout) (sol sol) (mixte soletdebout))))
(endurance
	(QE-Pied-velo "Sport d'endurance pluto :avec {velo} ou a {pied} ?" ((velo velo) (pied pieds)))
	(QE-vitesse "Courses de {vitesse} ou bien courses sur {grande} distances ou encore courses sur {moyenne} distance ?" ((vitesse vite) (grande grande)(moyenne moyenne))))
(extreme
	(QE-montagne "Sport a la montagne ? {oui} {non} ?" ((oui montagne)(non non-montagne)))
	(QE-vertige "Avez-vous le vertige ? {oui} {non} ?" ((oui vertige)(non non-vertige)))
	(QE-vitesse "Aimez vous la vitesse ? {oui} {non} ?" ((oui vitesse) (non non-vitesse)))
	(QE-voiture-nature "Aimez vous les {voitures} ou preferez vous la {nature}  ?" ((voiture voiture) (nature nature))))
(athletisme
	(QA-vertige "Avez-vous le vertige ? {oui} {non} ?" ((oui vertige)(non non-vertige)))
	(QA-viser-sauter "Préférez vous un sport de {lancer} ou de {saut}  ?" ((lancer viser)(saut saut)))
	(QA-concentration-precision-force "Etes vous plutot {concentré} {precis} ou dans la {force} pure ?" ((concentré concentration)(precis precision)(force force))))
(balle
	(QB-duel "Etre face a un seul adversaire à la fois ? {oui} {non}" ((oui duel) (non non-duel)))
	(QB-table-filet "Un sport sur un {terrain} ou sur une {table} ?" ((table table) ( terrain filet)))
	(QB-contact "Avez vous peur des contacts ? {oui} {non}" ((oui non-contact) (non contact)))
	(QB-melee "Aimez vous les melees type rugby ? {oui} {non}" ((oui melee) (non non-melee)))
	(QB-pastis-precision-contact-rapidité "Vous etes plutot {precis} ou {non} ?"((precis precision) (non non-precision)))
	(QB-pied-main-objet "Vous preferez jouer avec le {pied} les {mains} les {deux} ou avec un {objet} ?" ((pied pied)(mains mains)(deux mainetpied)(objet objet)))
	(QB-rebond "vous preferez jouer avec les {rebonds} ou {non} ? " ((rebonds rebonds) (non non-rebond))))
(fitness
	(QF-musique "Appreciez vous faire du sport en musique ? {oui} {non}" ((oui musique)(non non-musique)))
	(QF-artistique "Souhaitez vous qu'il y est de vrai chorégraphies ? {oui} {non} " ((oui artistique)(non non-artistique)))
	(QF-latine-dance "Plutot musique {latine} ou {dance} ?" ((latine latine) ( dance dance)))
	(QF-eau "Sport aquatique ou non ? {oui} {non} " ((oui eau) (non non-eau)))
	(QF-reflexion "Souhaiteriez-vous qu'il y ai une reflexion en plus de la dimension sportive ? {oui} {non} " ((oui reflexion)(non non-reflexion))))
(equitation
	(QE-nature-challenge "Vous êtes plutôt du genre ballade {tranquille} ou {challenge} ?" ((tranquille tranquille)(challenge challenge))))
(natation
	(QN-seul-groupe "Voulez vous avoir un {partenaire} ou être {seule} ?" ((partenaire deux)(seule seul)))
	(QN-artistique "Souhaiteriez vous incorporer une notion artistique dans votre sport ?{oui} {non} " ((oui artistique-eau)(non non-artistique-eau))))
(glisse
	(QG-artistique "Souhaitez vous avoir une notion artistique dans votre sport ?{oui} {non} " ((oui oui-artistique-neige)(non non-artistique-neige)))
	(QG-montagne "Pouvez vous pratiquer votre sport à la montagne ? {oui} {non} " ((oui montagne)(non non-montagne))))				
))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Base de règles ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq *Base-de-regle* `(

                        ;;; Type combat (au prefixe d'identificateur C) : 
                     
(C1 (combat art-martial) (sport-asiatique))
(C2 (combat classique) (sport-classique))
(C3 (combat arme) (sport-arme))
(C4 (combat main) (sport-main))
(C5 (combat arme-et-main) (sport-armeetmain))
(C6 (sport-main sol) (sport-sol))
(C8 (sport-main debout) (sport-debout))
(C9 (sport-main soletdebout) (sport-soletdebout))
(C10 (sport-asiatique sport-arme) (kendo))
(C11 (sport-asiatique sport-armeetmain) (aikido))
(C12 (sport-asiatique sport-main sport-debout) (karate))
(C13 (sport-asiatique sport-main sport-sol) (judo))
(C14 (sport-asiatique sport-main sport-soletdebout) (jiu-jitsu))
(C15 (sport-classique sport-arme) (escrime))
(C16 (sport-classique sport-armeetmain) (krav-maga))
(C17 (sport-classique sport-main sport-debout) (boxe))
(C18 (sport-classique sport-main sport-sol) (lutte))
(C19 (sport-classique sport-main sport-soletdebout) (mma))
	


                          ;;; Type endurance (avec un E) :

(E1 (endurance velo ) ( cyclisme))
(E2 (endurance pieds ) (course))
(E3 (course vite ) ( sprint))
(E4 (course  grande ) (marathon))
(E5 (course  moyenne ) (footing))
				 
					 
                          ;;; Type extreme (EX) : (EX33 manquant suite à une erreur de frappe)

(EX30 (extreme montagne) (sport-montagne))
(EX31 (extreme non-vertige) (sport-altitude))
(EX32 (extreme vitesse) ( sport-vitesse))
(EX34 (sport-altitude sport-non-vitesse sport-ville) ( escalade))
(EX35 (sport-vitesse sport-ville sport-pres-sol) (f1))
(EX36 (sport-montagne sport-pres-sol)  (ski-freestyle))
(EX37 (sport-montagne sport-altitude)  (saut-ski))
(EX38 (extreme non-montagne) (sport-ville))
(EX39 (extreme vertige) (sport-pres-sol))
(EX40 (extreme non-vitesse) ( sport-non-vitesse))
(EX41 (sport-altitude sport-vitesse sport-ville)(saut-parachute))



			 
				 
                           ;;; Type Atlhé (A) :
(A38 (athletisme viser ) ( sport-delancer))
(A39 (athletisme saut ) ( sport-saut))
(A40 (sport-delancer  concentration)(tir-a-larc))
(A41 (sport-delancer  force)(lancer-poids))
(A42 (sport-delancer precision)(lancer-javelot))
(A43 (sport-saut sport-altitude) ( perche ))
(A44 (sport-saut vertige) ( saut-longueur/largeur))
(A45 (athletisme) (cheerleading))
(A46 (athletisme non-vertige)(sport-altitude))

	

                          ;;; Type Ballon (B) : 

(B46 (balle duel)(sport-a-deux))
(B47 (sport-a-deux sport-filet sport-objet sport-nonrebond) (badminton))
(B48 (sport-a-deux table)(ping-pong))
(B49 (sport-a-deux sport-filet sport-objet sport-rebond)(tennis))
(B50 (precision mains)(petanque))
(B51 (precision sport-objet)(golf))
(B52 (balle non-contact)(sport-nontouche))
(B53 (sport-detouche mainetpied non-melee)(foot-us))
(B54 (balle contact)(sport-detouche))
(B55 (sport-objet sport-detouche)(hoccle-glace))
(B56 (pied)(football))
(B57 (sport-a-deux sport-filet mains) (volley))
(B58 (balle rebonds) (sport-rebond))
(B59 (balle non-rebond) (sport-nonrebond))
(B60 (balle filet)(sport-filet))
(B61 (balle objet)(sport-objet))
(B62 (balle oui-aquatique)(sport-aquatique))
(B63 (sport-rebond mains sport-detouche)(handball))
(B64 (sport-rebond mains sport-nontouche)(basketball))
(B65 (sport-detouche mainetpied melee)(rugby))
(B66 (sport-nonrebond mains sport-detouche)(ultimate))
(B68 (sport-aquatique)(water-polo))
(B69 (sport-objet sport-nontouche)(baseball))

	

                             ;;; Type Fitness (F) : 

(F66 (fitness musique)(sport-en-musique))
(F68 (sport-en-musique non-artistique latine non-eau)(zumba))
(F69 (sport-en-musique non-artistique dance non-eau)(aerobic))
(F70 (sport-en-musique artistique non-eau)(danse))
(F71 (eau) ( sport-aquatique))
(F72 (sport-en-musique sport-aquatique)(aqua-gym))
(F73 (non-musique reflexion non-eau)(yoga))
(F74 (non-musique non-reflexion non-eau)(gym))


                             ;;; Type Equitation (E) :

(EQ75 (equitation tranquille) ( ballade-equitation))
(EQ76 (equitation challenge ) ( obstacle-equitation))


                            ;; Type Natation  (N) :

(N77 (natation) (sport-aquatique))
(N78 (sport-aquatique artistique-eau seul) (natation-plongeon))
(N79 (sport-aquatique artistique-eau deux) (natation-synchronise))
(N81 (sport-aquatique non-artistique-eau) (natation-course))


                            ;;; Type Glisse (G)

(G82 (glisse montagne)(ski))
(G83 (glisse non-montagne oui-artistique-neige)(patin-a-glace))
(G84 (glisse non-montagne non-artistique-neige) (roller))

))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; fonctions de services (dans l'ordre d'explication du rapport/compte-rendu) ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;La première re-initialise les variables globales afin de pouvoir lancer la procédure complète 
;sans se soucier du traitement précédent... Permet aussi de relancer la procédure complétement si aucun sport n'est trouvé en adéquation avec les critère

(defun clean-var()
	(setq *Base-de-faits* '())
	(setq *Base-historique-question* '())
	(setq *liste-marques* '())
	(setq *liste-categories* '())
)



;Fonctions de vérification de saisie, très utilse : au départ gérée intégralement à chaque saisie puis externalisé
;Une pour les liste une pour les atome, deux construites sur le même schéma
;Chaque fonction controle si la valeur entree par l'utilisateur correspond bien a une des valeurs attendues ( ici passees en parametre pour vérification)



(defun verification_saisie (test) 
  (let ((k nil))
    (loop   ;Boucle INFINE, ne s'arretant SSI x appartient a test c'est à dire est une valeur attendue dans le cas présent
      (setq k (read))
      (if (not (member k (liste-arg test)))
          (format t "~%entree invalide, recommencez~%")
        (return k)
        )
      )
    )
)

(defun verification_saisie_liste (test) 
  (let ((k nil))
    (loop  
      (setq k (read))
      (if (not (member k test))
          (format t "~%entree invalide, recommencez~%")
        (return k)
        )
      )
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Concernant l'interaction Homme-Machine ;;;;;;;;;;;;;;;;;;;;;;;;;; 


;Obtenir le nom d'un sport

(defun Base-de-donnee-nom (item)
  (cadr (assoc 'nom item))
)

;Trouve la valeur associée à un sport & à son mot clé

(defun Base-de-donnee-valeur (sport cle)
  (cadr (assoc cle sport))
)



;;;; MEMO : Pas défaut TOUS les sports sont marqués .... ;;;;;

(defun initialisation-marques ()
  (let (k)
    (dolist (k *Base-de-donnee*)
      (push (Base-de-donnee-nom k) *liste-marques*)
      )
    )
)
				
;; En découle directement un nouveau marquage ... 
;; Exemple type : on marque des sports d'abord par l'endroit (inte/exté) puis par le type (glisse ?) 

(defun marquage (cle val)
  (let (NouvelleMarque)
    (dolist (k *Base-de-donnee*)
      (when (member (Base-de-donnee-nom k) *liste-marques*)
        (case cle
          ('age (when (or (null (Base-de-donnee-valeur k cle)) (<= (Base-de-donnee-valeur k cle) val))
                  (push (Base-de-donnee-nom k) NouvelleMarque)
                  ))
          ('endroit (when (or (equal (Base-de-donnee-valeur k cle) 'deux) (equal (Base-de-donnee-valeur k cle) val))
                      (push (Base-de-donnee-nom k) NouvelleMarque)
                      ))
          ('but (dolist (y val)
                  (when (member y (Base-de-donnee-valeur k cle))
                    (if (not (member (Base-de-donnee-nom k) NouvelleMarque))                         
                        (push (Base-de-donnee-nom k) NouvelleMarque)
																								  
                      ))))
          
          (otherwise (when (equal (Base-de-donnee-valeur k cle) val)
                       (push (Base-de-donnee-nom k) NouvelleMarque)
                       ))
          )
        )
      )
    (setq *liste-marques* NouvelleMarque)
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;; Voici nos 4 questions de base pour restreindre notre immense base de sports (voir la justification de la dernière question) ;;
; Les éléments entre accolades sous-entendes ce que le programme attend comme chaine de caractère à rentrer (puis à vérifier) ;;


(defun questions-preli()
  (let (reponse)
    (format t "Plutot sport d'{interieur} ou bien en {exterieur} ? ")
    (setq reponse (verification_saisie_liste '(interieur exterieur)))
    (marquage 'endroit reponse)
    
    (format t "Plutot sport {individuel} ou {collectif} ? ")
    (setq reponse (verification_saisie_liste '(individuel collectif)))
    (marquage 'type reponse)
    
    (format t "Quel est votre age ? {integer attendu} ")
    (setq reponse (read))
    (marquage 'age reponse)
    
    (format t "Pourquoi faites vous du sport ? {detendre social muscler depenser}, plusieurs choix possibles, a specifier entre parentheses ")
    (setq reponse (read))
    (marquage 'but reponse)
	)
)



				
;;;;;;;;;;;;;;;;;;; Faire une liste des catégories à partir des sports précédemment slectionnes ;;

(defun liste-categorie( liste-des-sports)
  (let (categories)
    (dolist (k *Base-de-donnee* categories)
      (when (member (Base-de-donnee-nom k) liste-des-sports)
				
        (when (not (member (Base-de-donnee-valeur k 'categorie) categories))
          (push (Base-de-donnee-valeur k 'categorie) categories)
          )
        )
      )
    )
  )


;;;;;;;;;;;;;;;; Specifions plus précisemment la categorie vers laquelle nous devons nous orienter .... ;;

(defun Questions-spec-categorie (liste-des-sports) 
  (let ((reponse nil)(list-categories (liste-categorie liste-des-sports)))
    (if (member 'natation list-categories)
        (progn 
          (format t "L'eau vous derange-t-elle ? ")
          (if (eq (verification_saisie_liste '(oui non)) 'oui)
              (push 'eau reponse)
            ))
      )
    (if (member 'athletisme list-categories)
        (progn 
          (format t "Etes vous quelqu'un d'endurant ? ")
          (if (eq (verification_saisie_liste '(oui non)) 'oui)
              (progn
                (push 'endurance reponse)
                (push 'athletisme reponse)
                (push 'extreme reponse)
                )
            ))
      (if (member 'endurance list-categories)
          (progn 
            (format t "Etes vous quelqu'un d'endurant ? ")
            (if (eq (verification_saisie_liste '(oui non)) 'oui)
                (progn
                  (push 'endurance reponse)
                  (push 'athletisme reponse)
                  (push 'extreme reponse)
                  )
              ))
        (if (member 'extreme list-categories)
            (progn 
              (format t "Etes vous quelqu'un d'endurant ? ")
              (if (eq (verification_saisie_liste '(oui non)) 'oui)
                  (progn
                    (push 'endurance reponse)
                    (push 'athletisme reponse)
                    (push 'extreme reponse)
       
                    )
                ))
          )
        )
      )
		
    (if (member 'combat list-categories)
        (progn 
          (format t "Etes vous allergique aux sports de contact ? ")
          (if (eq (verification_saisie_liste '(oui non)) 'oui)
					;;(push 'contact reponse)
              (push 'combat reponse)
            ))
      )
		
    (if (member 'fitness list-categories)
        (progn 
          (format t "Etes vous deranges par les sports rythmés ? ")
          (if (eq (verification_saisie_liste '(oui non)) 'oui)
              (push 'fitness reponse)
            ))
      )
    (if (member 'glisse list-categories)
        (progn 
          (format t "Appreciez-vous la vitesse ? ")
          (if (eq (verification_saisie_liste '(oui non)) 'oui)
              (push 'glisse reponse)
            (push 'extreme reponse)
            ))
		
      (if (member 'extreme list-categories)
          (progn 
            (format t "Aimez-vous la vitesse ? ")
            (if (eq (verification_saisie_liste '(oui non)) 'oui)
                (push 'extreme reponse)
              (push 'glisse reponse)
              ))
        ))
    (if (member 'balle list-categories)	
        (progn 
          (format t "Aimez-vous les sports de ballon ? " )
          (if (eq (verification_saisie_liste '(oui non)) 'oui)
              (push 'balle reponse)
            ))
      )
    (if (member 'endurance list-categories)	
        (progn 
          (format t "Avez-vous un mental d'acier ? " )
          (if (eq (verification_saisie_liste '(oui non)) 'oui)
              (push 'endurance reponse)
            ))
      )
    (if (member 'equitation list-categories)	
        (progn 
          (format t "Savez vous monter a cheval ? " )
          (if (eq (verification_saisie_liste '(oui non)) 'oui)
              (push 'equitation reponse)
            ))
      )
    (REMOVE-DUPLICATES reponse)))
				

			  
;;;;;;;;;;;;;;;;;;; Grâce aux questions précédentes on épure ;; 
(defun choix-categorie (liste-des-sports)
  (let (choix (reponse (Questions-spec-categorie liste-des-sports)))
    reponse
		;;(dolist (k *Base-de-regle* choix)
		;;	(when (member (cadr k) reponse)
		;;		(push (caddr k) choix)
		;;	)
		;;)
	)
)
			
;;;;;;;;;;;;;;;;;;;;; Fait l'intersection de deux ensemble : la liste de sport et les sports de la catégorie épurée  ;;
(defun sports-valide (sport categories )
  
  (let (liste-des-sports S)
    (dolist (k sport)
      (dolist (y *Base-de-donnee*)
        (when (eq k (Base-de-donnee-nom y))
          (setq S y)
          (return nil)
          )
        )
      (when (member (Base-de-donnee-valeur S 'categorie) categories)
        (push k liste-des-sports)
        )
      )
    liste-des-sports
    )
)


;;;;;;;;;;;;;;;;;;; L'utilisateur choisi la catégorie ;; On la vérifie ensuite ;;

(defun choix ( categories )
  (let ((choix))
    (if (> (list-length categories) 1)
        (progn
          (format t "Choissisez une catégorie de sport parmi les suivantes :")
          (print categories)
          (setq choix (verification_saisie_liste categories))
          (setq *liste-categories* choix)
          )
      
      (progn
        (setq *liste-categories* (car categories))
        )
      )
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MOTEUR ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;; Verification si un mot clé appartient à la base de faits ;;
(defun existe (cle)
  (member cle *Base-de-faits*)
)


;;;;;;;;;;;;;;;;;;;; Boucle sur liste de règle, récupère premisses de chaque règle, passe par analyse-premisse pour savoir si valide ou non : si oui ajoute à candidats

(defun test-regle-candidate ()
  (let (candidats premisses but Prem)
    (dolist (k *Base-de-regle* candidats)
      (setq premisses (cadr k))
      (setq but (caddr k))
      
      (setq Prem (analyse-premisse premisses but))
      (when Prem
        (dolist (k Prem)
          (push k candidats)
          )
        )
      )
    )
  )


;;;;;;;;;;;;;;;;;;;;;;;;; Boucle pour tester si la premisse en cours de test appartient à la base de faits ou non.. Retourne celles qui en font parti

(defun analyse-premisse (premisses but)
  (let (baseExist result)
    (if (existe but)
        nil
      (dolist (k premisses)
        (if (member k *Base-de-faits*)
            (setq baseExist T)
          (push k result)
          )
        )
      )
    (if baseExist result nil)
    )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Fonction centrale : travail sur la liste des regles candidates... Passe par recup-questions pour avoir la liste des questions
; de la catégorie choisie, pose la question, recupère la réponse, test la validiter, ajoute la réponse à la base de faits puis avance dans le chainage
; grâce à check-regle

(defun chainage-avant (missing)
  (let ((base-q (cdr (assoc *liste-categories* *Base-de-questions*))) item reponse baseExist baseTrouvee)
    (loop 		
      (setq item (recup-questions missing base-q))
      (when item
        (loop
          (format t (cadr item))
          (setq reponse (verification_saisie item) )
          
          (dolist (k (caddr item))
            (when (equal reponse (car k)) (push (cadr k) *Base-de-faits*) (verif-regle) (setq baseExist t))
            
            )
          (when baseExist (return nil))
          )
        (push (car item) *Base-historique-question*)
        (dolist (k (caddr item))
          (when (member (car k) missing) (delete (car k) missing))
          )
        (setq baseTrouvee t)
        (return t)
        )
      (setq missing (cdr missing))
      (when (null missing) (return nil))
      )
    baseTrouvee
    )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Génère la liste des questions en fonction du mot clef.. On ne l'ajoute pas si elle a déjà été posé.. Il existe des redondances



(defun recup-questions (missing base-q)
  (let (result)
    (loop	      (dolist (k (caddr (car base-q)))		;; on parcourt le 3e argument d'une question
        (when (not (member (car (car base-q)) *Base-historique-question*))
          (when (equal (cadr k) (car missing)) (setq result (car base-q)) (return nil))
          )
        )
      (setq base-q (cdr base-q))
      (when (null base-q) (return nil))
      )
    result
	)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Avance dans le chainage de la façon suivante : boucle sur la base de règle et analyse les premisses de la base de faits
; Si les premisses d'une règles sont presentes --> ajout le but à la base de faits et on avance ainsi;

(defun verif-regle ()
  (let (premisses but baseExist)
    (dolist (k *Base-de-regle*)
      (setq premisses (cadr k))
      (setq but (caddr k))
      (setq baseExist t)
			
      (when (not (member but *Base-de-faits*))
        (dolist (y premisses)
          (when (not (member y *Base-de-faits*)) (setq baseExist nil))
          )
        (when baseExist (push (car but) *Base-de-faits*))
        )
      )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Fonction du moteur d'inférence faisant le lien entre tous les questions de la partie deux que l'on vient de traiter

(defun moteur_inference ()
  (let (baseTrouvee sport)
    (setq baseTrouvee (chainage-avant (test-regle-candidate)))
    (setq sport (sport-final))
    (when baseTrouvee
      (when (not sport) (setq sport (moteur_inference)))
      )
    (if sport
        sport
      nil
      )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Analyse la base de faits, s'il y a un sport marque alors c'est l'élu, 
(defun sport-final ()
  (let (sport)
    ;;(dolist (k *Base-de-donnee*)
    (dolist (k *Base-de-faits*)
      (when (member k *liste-marques*) (setq sport k) (return nil))
      ;;(when (member (Base-de-donnee-nom k) *Base-de-faits*) (setq sport (Base-de-donnee-nom k)) (return nil))
      )
    sport
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Renvoie une liste constituée des arguments passés

(defun liste-arg(argument)
  (let ((liste))
    (dolist (y (caddr argument))
      (push (car y) liste)
      )
    
    liste
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Au cas où aucun sport n'est elu ...

(defun echec-sport()
  (let ((reponse)(sport))
    (dolist (k *Base-de-donnee*)
      (if (member (cadr(assoc 'nom k )) *Base-de-faits*)
				(push (cadr(assoc 'nom k )) sport)
        )
      )
    (if sport
        (format t "Aucun sport ne correspondant exactement à toutes  vos réponses n'a été trouvé,le sport le plus proche est le suivant : ~A" (car sport) )
      (progn 
        (format t "Aucun sport n'a été trouvé ! Souhaitez-vous recommencer ? {oui/non} ")
        (setq reponse (verification_saisie_liste '(oui non)))
        (if (eq reponse 'oui)
            (lancement-proc)
          )
        )
      
      )
    )	
)

			

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Fonction finale à lancer pour l'interaction complète homme machine avec le chainage, les questions : lien partie I. et II.

(defun lancement-proc ()
  (let (liste-bis listecategorie sport)
    (clean-var)
    (initialisation-marques)
    (questions-preli) ;; On obtient une liste de sports
    (setq listecategorie (choix-categorie *liste-marques*)) ;; Pour en déduire une liste de catégories
    (setq liste-bis (sports-valide *liste-marques* listecategorie)) ;; On obtient une liste de sports épurée de certaines catégories
    (choix listecategorie)	;; Puis on charge la catégorie finalement élue dans *liste-categories*
    (setq *Base-de-faits* `(,*liste-categories*));; On charge dans *Base-de-faits* la catégorie élue
		
    (when (member 'eau listecategorie)	 
      (push 'oui-aquatique *Base-de-faits*)	;; Le cas particulier de l'eau ...
      )

    (setq *liste-marques* (sports-valide liste-bis *Base-de-faits*))
    (if (setq sport (moteur_inference));;: On lance le moteur d'inférence pour analyser nos bases et les confronter
        (format t "Le sport qui vous est le plus adapté est: ~A" sport)
      (echec-sport)
      )
    )
)	