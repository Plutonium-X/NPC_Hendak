BEGIN ~HB#HendR~

//QUETES

IF ~Global("HB#Poursuite","GLOBAL",3)~ THEN BEGIN Dette
SAY @410
IF ~~ THEN REPLY @411 GOTO Tete
IF ~~ THEN REPLY @415 GOTO Calmer
END

IF ~~ THEN BEGIN Tete
SAY @412
IF ~~ THEN REPLY @413 GOTO Recherche
END

IF ~~ THEN BEGIN Calmer
SAY @416
IF ~~ THEN REPLY @417 GOTO Recherche
END

IF ~~ THEN BEGIN Recherche
SAY @414
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",4)
              AddexperienceParty(29000)
              AddJournalEntry(@418,QUEST_DONE)
              SetDialog("HB#HendJ")~ EXIT

END



//// LE SINGE VULGAIRE

IF ~Global("HB#Poursuite","GLOBAL",5)~ THEN BEGIN Taverne
SAY @420
IF ~~ THEN REPLY @421 GOTO Homme
END

IF ~~ THEN BEGIN Homme
SAY @422
IF ~~ THEN REPLY @423 GOTO Bras
END


IF ~~ THEN BEGIN Bras
SAY @424
IF ~~ THEN REPLY @425 GOTO Familier
END

IF ~~ THEN BEGIN Familier
SAY @426
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",6)
              SetDialog("HB#HendJ")~ EXIT
END



////APRES LA MORT DU SERPENT

IF ~Global("HB#Poursuite","GLOBAL",17)~ THEN BEGIN Medaillon
SAY @427
IF ~~ THEN REPLY @428 GOTO Diable
END

IF ~~ THEN BEGIN Diable
SAY @429
IF ~~ THEN REPLY @430 GOTO Souvenir
IF ~~ THEN REPLY @436 GOTO Projets
END

IF ~~ THEN BEGIN Souvenir
SAY @431
IF ~~ THEN REPLY @432 GOTO Chef
IF ~~ THEN REPLY @434 GOTO Traverser
END

IF ~~ THEN BEGIN Chef
SAY @433
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",18)
              SetGlobal("HB#Chasseurs","GLOBAL",1)
              AddJournalEntry(@438,QUEST_DONE)
              SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Traverser
SAY @435
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",18)
              SetGlobal("HB#Chasseurs","GLOBAL",1)
              AddJournalEntry(@438,QUEST_DONE)
              SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Projets
SAY @437
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",18)
              SetGlobal("HB#Chasseurs","GLOBAL",1)
              AddJournalEntry(@438,QUEST_DONE)
              SetDialog("HB#HendJ")~ EXIT
END




//ARRIVEE A LA PASSE DU PETIT CROC

IF ~Global("HB#Chasseurs","GLOBAL",2)~ THEN BEGIN Musique
SAY @439
IF ~~ THEN REPLY @440 GOTO Voir
END

IF ~~ THEN BEGIN Voir
SAY @441
IF ~~ THEN DO ~SetGlobal("HB#Chasseurs","GLOBAL",3)
              SetDialog("HB#HendJ")~ EXIT
END


//APRES LE COMBAT FINAL
IF ~Global("HB#Chasseurs","GLOBAL",10)~ THEN BEGIN Crapules
SAY @450
IF ~~ THEN REPLY @451 GOTO Ame
END

IF ~~ THEN BEGIN Ame
SAY @452
IF ~~ THEN DO ~SetGlobal("HB#Chasseurs","GLOBAL",11)
              SetGlobal("HB#Dorwin","GLOBAL",1)
              AddJournalEntry(@453,QUEST_DONE)
              SetDialog("HB#HendJ")~ EXIT
END


//ROMANCE

IF ~Global("HB#HendaLoveTlk","LOCALS",2)~ THEN BEGIN Ciel
  SAY @700000
  IF ~~ THEN REPLY @700001 GOTO Volonte
  IF ~~ THEN REPLY @700002 GOTO Compagnie

END

IF ~~ THEN BEGIN Volonte
SAY @700003
IF ~~ THEN REPLY @700004 GOTO Compagnie
END

IF ~~ THEN BEGIN Compagnie
SAY @700005 = @700006
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",1)
               SetDialog("HB#HendJ")~ EXIT
END



IF ~Global("HB#HendaLoveTlk","LOCALS",4)~ THEN BEGIN Ribald
SAY @700007= @700008= @700009
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END

//ENFANT DE BHAAL

IF ~Global("HB#HendaLoveTlk","LOCALS",6)~ THEN BEGIN Silence
SAY @700010
IF ~~ THEN REPLY @700011 GOTO Enfant
IF ~~ THEN REPLY @700012 GOTO Silencieux
IF ~~ THEN REPLY @700013 GOTO Parler
END

IF ~~ THEN BEGIN Silencieux
SAY @700015
IF ~~ THEN DO ~SetGlobal("HB#HendaRomanceActive","GLOBAL",3)
              SetDialog("HB#HendJ")~ EXIT
END

IF ~~ THEN BEGIN Parler
SAY @700014= @700016
IF ~~ THEN REPLY @700017 GOTO Confiance
IF ~~ THEN REPLY @700018 GOTO Sarevok
END



IF ~~ THEN BEGIN Enfant
SAY @700016
IF ~~ THEN REPLY @700017 GOTO Confiance
IF ~~ THEN REPLY @700018 GOTO Sarevok
END


IF ~~ THEN BEGIN Confiance
SAY @700019
IF ~~ THEN REPLY @700020 GOTO Secrets
IF ~~ THEN REPLY @700022 GOTO Caractere
IF ~~ THEN REPLY @700024 GOTO Sarevok
END

IF ~~ THEN BEGIN Secrets
SAY @700021
IF ~~ THEN DO ~SetGlobal("HB#HendaRomanceActive","GLOBAL",3)
              SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Caractere
SAY @700023
IF ~~ THEN DO ~SetGlobal("HB#HendaRomanceActive","GLOBAL",3)
              SetDialog("HB#HendJ")~ EXIT
END

IF ~~ THEN BEGIN Sarevok
SAY @700025
IF ~~ THEN REPLY @700026 GOTO Sarevok1
IF ~~ THEN REPLY @700027 GOTO Sarevok2
END

IF ~~ THEN BEGIN Sarevok1
SAY @700028
IF ~~ THEN REPLY @700030 GOTO Lutter
IF ~~ THEN REPLY @700032 GOTO Equilibre
IF ~~ THEN REPLY @700034 GOTO Submerger
END

IF ~~ THEN BEGIN Sarevok2
SAY @700029
IF ~~ THEN REPLY @700030 GOTO Lutter
IF ~~ THEN REPLY @700032 GOTO Equilibre
IF ~~ THEN REPLY @700034 GOTO Submerger
END

IF ~~ THEN BEGIN Lutter
SAY @700031
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END

IF ~~ THEN BEGIN Equilibre
SAY @700033
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END

IF ~~ THEN BEGIN Submerger
SAY @700035
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END

//VALBISE

IF ~Global("HB#HendaLoveTlk","LOCALS",8)~ THEN BEGIN Contree
SAY @700036
IF ~~ THEN REPLY @700037 GOTO Typique
IF ~~ THEN REPLY @700041 GOTO Morsure
IF ~~ THEN REPLY @700047 GOTO Causer
END


IF ~~ THEN BEGIN Typique
SAY @700038
IF ~~ THEN REPLY @700039 GOTO Havredest
IF ~~ THEN REPLY @700040 GOTO Havredest
END

IF ~~ THEN BEGIN Morsure
SAY @700042
IF ~~ THEN REPLY @700043 GOTO Havredest
IF ~~ THEN REPLY @700044 GOTO Glacial
END

IF ~~ THEN BEGIN Glacial
SAY @700045
IF ~~ THEN REPLY @700046 GOTO Havredest
END


IF ~~ THEN BEGIN Causer
SAY @700048
IF ~~ THEN REPLY @700049 GOTO Havredest
IF ~~ THEN REPLY @700050 GOTO Plustard
END

IF ~~ THEN BEGIN Plustard
SAY @700051
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Havredest
SAY @700052
IF ~~ THEN REPLY @700053 GOTO Dixcites
IF ~~ THEN REPLY @700054 GOTO Dixcites
END

IF ~~ THEN BEGIN Dixcites
SAY @700055
IF ~~ THEN REPLY @700056 GOTO Contraire
END

IF ~~ THEN BEGIN Contraire
SAY @700057= @700058= @700059= @700060
IF ~~ THEN REPLY @700061 GOTO Sansdanger
END

IF ~~ THEN BEGIN Sansdanger
SAY @700062
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END


//LA FAMILLE

IF ~Global("HB#HendaLoveTlk","LOCALS",10)~ THEN BEGIN Famille1
SAY @700063
IF ~~ THEN REPLY @700064 GOTO Famille2
IF ~~ THEN REPLY @700065 GOTO Famille2
END

IF ~~ THEN BEGIN Famille2
SAY @700066
IF ~~ THEN REPLY @700067 GOTO Famille3
END

IF ~~ THEN BEGIN Famille3
SAY @700068= @700069= @700070
IF ~~ THEN REPLY @700071 GOTO Famille4
IF ~~ THEN REPLY @700072 GOTO Famille4
END

IF ~~ THEN BEGIN Famille4
SAY @700073= @700074= @700075
IF ~~ THEN REPLY @700076 GOTO Gachis1
IF ~~ THEN REPLY @700080 GOTO Douleur
END

IF ~~ THEN BEGIN Gachis1
SAY @700077
IF ~~ THEN REPLY @700078 GOTO Gachis2
END

IF ~~ THEN BEGIN Gachis2
SAY @700079
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Douleur
SAY @700081
IF ~~ THEN REPLY @700082 GOTO Cran
IF ~~ THEN REPLY @700086 GOTO Douleur2
END

IF ~~ THEN BEGIN Cran
SAY @700083
IF ~~ THEN REPLY @700084 GOTO Depart
IF ~~ THEN REPLY @700086 GOTO Douleur2
END

IF ~~ THEN BEGIN Douleur2
SAY @700087
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END

IF ~~ THEN BEGIN Depart
SAY @700085
IF ~~ THEN DO ~LeaveParty()
              EscapeArea()
              SetGlobal("HB#HendaRomanceActive","GLOBAL",3)
              SetDialog("HB#HendJ")~ EXIT
END


// EXCUSES

IF ~Global("HB#HendaLoveTlk","LOCALS",12)~ THEN BEGIN Seconde
SAY @700088
IF ~~ THEN REPLY @700089 GOTO Supporter
IF ~~ THEN REPLY @700090 GOTO Supporter
IF ~~ THEN REPLY @700091 GOTO Supporter
END


IF ~~ THEN BEGIN Supporter
SAY @700092
IF ~~ THEN REPLY @700093 GOTO Amiguerrier
IF ~~ THEN REPLY @700099 GOTO Boireuncoup
END


IF ~~ THEN BEGIN Amiguerrier
SAY @700094
IF ~~ THEN REPLY @700095 GOTO Comprends
IF ~~ THEN REPLY @700097 GOTO Sanguin
END


IF ~~ THEN BEGIN Comprends
SAY @700096 =@700100
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",1)
               SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Sanguin
SAY @700098 =@700100
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",1)
               SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Boireuncoup
SAY @700100
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",1)
               SetDialog("HB#HendJ")~ EXIT
END


//BAGARRE A LA COURONNE


IF ~Global("HB#HendaLoveTlk","LOCALS",14)~ THEN BEGIN Seconde
SAY @700101 = @700102
IF ~~ THEN DO ~SetGlobal("HB#Bagarre","GLOBAL",1)
               IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)~ EXIT
END


IF ~Global("HB#Bagarre","GLOBAL",16)~ THEN BEGIN Voyage
SAY @700116
IF ~~ THEN REPLY @700117 GOTO Respect1
IF ~~ THEN REPLY @700119 GOTO Respect2
END




IF ~~ THEN BEGIN Respect1
SAY @700118
IF ~~ THEN DO ~SetGlobal("HB#Bagarre","GLOBAL",17)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Respect2
SAY @700120
IF ~~ THEN DO ~SetGlobal("HB#Bagarre","GLOBAL",17)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END



IF ~Global("HB#HendaLoveTlk","LOCALS",16)~ THEN BEGIN Soleil
SAY @700121
IF ~~ THEN REPLY @700122 GOTO Bijoux
IF ~~ THEN REPLY @700123 GOTO Bijoux
END

IF ~~ THEN BEGIN Bijoux
SAY @700124= @700125
IF ~~ THEN REPLY @700126 GOTO  Epique
IF ~~ THEN REPLY @700128 GOTO  Effectivement
IF ~~ THEN REPLY @700130 GOTO  Souri
END

IF ~~ THEN BEGIN Epique
SAY @700127= @700131
IF ~~ THEN REPLY @700132 GOTO Cestout
END


IF ~~ THEN BEGIN Effectivement
SAY @700129= @700131
IF ~~ THEN REPLY @700132 GOTO Cestout
END

IF ~~ THEN BEGIN Souri
SAY @700131
IF ~~ THEN REPLY @700132 GOTO Cestout
END

IF ~~ THEN BEGIN Cestout
SAY @700133
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END



IF ~Global("HB#HendaLoveTlk","LOCALS",18)~ THEN BEGIN Raconte
SAY @700134
IF ~~ THEN  REPLY @700135 GOTO Sur
IF ~~ THEN REPLY @700136 GOTO Johanna
END

IF ~~ THEN BEGIN Sur
SAY @700137
IF ~~ THEN REPLY @700138 GOTO Continuons
IF ~~ THEN REPLY @700139 GOTO Johanna
END

IF ~~ THEN BEGIN Continuons
SAY @700140
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END


IF ~~ THEN BEGIN Johanna
SAY @700141
IF ~~ THEN REPLY @700142 GOTO Hrotgar
END

IF ~~ THEN BEGIN Hrotgar
SAY @700143
IF ~~ THEN REPLY @700144 GOTO Chasse
END

IF ~~ THEN BEGIN Chasse
SAY @700145= @700146= @700147 =@700148
IF ~~ THEN REPLY @700149 GOTO Precieuse
IF ~~ THEN REPLY @700150 GOTO Precieuse
END

IF ~~ THEN BEGIN Precieuse
SAY @700151
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               RealSetGlobalTimer("HB#HendaRomance","GLOBAL",3600)
               SetDialog("HB#HendJ")~ EXIT
END


IF ~Global("HB#HendaLoveTlk","LOCALS",20)~ THEN BEGIN Enfer
SAY @700152
IF ~~ THEN  REPLY @700153 GOTO Desarme
END

IF ~~ THEN BEGIN Desarme
SAY @700154= @700155
IF ~~ THEN REPLY @700156 GOTO Nage
END

IF ~~ THEN BEGIN Nage
SAY @700157= @700158= @700159
IF ~~ THEN REPLY @700160 GOTO Tigre
END

IF ~~ THEN BEGIN Tigre
SAY @700161= @700162
IF ~~ THEN REPLY @700163 GOTO Fin
END

IF ~~ THEN BEGIN Fin
SAY @700164
IF ~~ THEN DO ~IncrementGlobal("HB#HendaLoveTlk","LOCALS",1)
               SetDialog("HB#HendJ")~ EXIT
END