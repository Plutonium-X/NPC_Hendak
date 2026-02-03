 BEGIN ~HB#Smee~
 
 IF ~Global("HB#Poursuite","GLOBAL",6)~ THEN BEGIN Manche
SAY @427 = @428
IF ~~ THEN REPLY @429 GOTO Prononcer
       IF ~~ THEN REPLY @442 GOTO Tripote
       END

       IF ~~ THEN BEGIN Prononcer
       SAY @430
       IF ~~ THEN REPLY @431 GOTO Meeting
       END
       
       IF ~~ THEN BEGIN Meeting
       SAY @432
       IF ~~ THEN REPLY @433 GOTO Savoir
       IF ~PartyGoldGT(19)~ THEN REPLY @441 GOTO Rhum
       END
       
       IF ~~ THEN BEGIN Savoir
       SAY @434
       IF ~~ THEN REPLY @435 GOTO Mentez
       IF ~~ THEN REPLY @437 GOTO Degagez
       END
       
       IF ~~ THEN BEGIN Mentez
       SAY @436
       IF ~~ THEN EXTERN ~HB#HendJ~ Interroger
       END
       
       IF ~~ THEN BEGIN Degagez
       SAY @438
       IF ~~ THEN EXTERN ~HB#HendJ~ Interroger
       END
       
       IF ~~ THEN BEGIN Tripote
       SAY @443
       IF ~PartyGoldGT(19)~ THEN REPLY @444 GOTO Rhum
       IF ~~ THEN REPLY @445 GOTO Reconnaissance
       END
       
       IF ~~ THEN BEGIN Reconnaissance
       SAY @446
       IF ~~ THEN REPLY @447 GOTO Prononcer
       END
       
       IF ~~ THEN BEGIN Rhum
       SAY @448 = @449
       IF ~~ THEN REPLY @450 GOTO Rencontre
       IF ~~ THEN REPLY @451 GOTO Rencontre
       END
       
       IF ~~ THEN BEGIN Rencontre
       SAY @452
       IF ~~ THEN REPLY @453 GOTO Baraque
       END
       
       IF ~~ THEN BEGIN Baraque
       SAY @454
       IF ~~ THEN REPLY @455 GOTO Attendra
       END
       
       IF ~~ THEN BEGIN Attendra
       SAY @456
       IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",7)
              TakePartyGold(20)
              AddJournalEntry(@457,QUEST)
              SetDialog("HB#HendJ")
              EscapeArea()~ EXIT
       END

 //RETOUR VERS SMEE

IF ~Global("HB#Poursuite","GLOBAL",100)~ THEN BEGIN Encore
        SAY @458
        IF ~PartyGoldGT(19)~ THEN REPLY @459 GOTO Rhum
        IF ~~ THEN REPLY @460 GOTO Combines
        END

        IF ~~ THEN BEGIN Combines
        SAY @461
        IF ~PartyGoldGT(19)~ THEN REPLY @462 GOTO Rhum
        IF ~~ THEN REPLY @463 GOTO Poche
        END
        
        IF ~~ THEN BEGIN Poche
        SAY @464
        IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",101)
              AddJournalEntry(@465,QUEST)
              EscapeArea()~ EXIT
              END
              


APPEND ~HB#HendJ~

IF ~~ THEN BEGIN Interroger
SAY @439
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",100)
              AddJournalEntry(@440,QUEST)~ EXIT
END

END