BEGIN ~HB#Ben~

IF ~Global("HB#BenExists","GLOBAL",2)~ THEN BEGIN Fouine
SAY @0
IF ~~ THEN EXTERN ~HB#HendJ~ Parle
END

IF ~~ THEN BEGIN Gladiateur
SAY @2
IF ~~ THEN EXTERN ~HB#HendJ~ Question
END

IF ~~ THEN BEGIN Honte
SAY @4 = @5 = @6
IF ~~ THEN EXTERN ~HB#HendJ~ Bibelot
END

IF ~~ THEN BEGIN Marchandise
SAY @8
IF ~~ THEN EXTERN ~HB#HendJ~ Faire
END

IF ~~ THEN BEGIN Pitie
SAY @21
IF ~~ THEN REPLY @13 GOTO Esclavage
IF ~~ THEN REPLY @22 DO ~SetGlobal("HB#BenExists","GLOBAL",3) 
                         Enemy()~ EXIT
END

IF ~~ THEN BEGIN Esclavage
SAY @14 = @15
IF ~~ THEN REPLY @16 GOTO Serpent
END

IF ~~ THEN BEGIN Serpent
SAY @17 = @171 = @172 = @173
IF ~~ THEN EXTERN ~HB#HendJ~ TuMens
END

IF ~~ THEN BEGIN Verite
SAY @19 = @191
IF ~~ THEN REPLY @192 GOTO Dirige
END

IF ~~ THEN BEGIN Dirige
SAY @193 = @194
IF ~~ THEN DO ~SetGlobal("HB#BenExists","GLOBAL",3)
SetGlobal("HB#Pirates","GLOBAL",1)
AddexperienceParty(5000)
AddJournalEntry(@30,QUEST)
EscapeArea()~ EXIT
END

APPEND ~HB#HendJ~

    IF ~~ THEN BEGIN Parle
        SAY @1
        IF ~~ THEN EXTERN ~HB#Ben~ Gladiateur
    END

    IF ~~ THEN BEGIN Question
     SAY @3
     IF ~~ THEN EXTERN ~HB#Ben~ Honte
    END

    IF ~~ THEN BEGIN Bibelot
     SAY @7
     IF ~~ THEN EXTERN ~HB#Ben~ Marchandise
    END

    IF ~~ THEN BEGIN Faire
     SAY @9
     IF ~~ THEN REPLY @10 GOTO Bien
     IF ~~ THEN REPLY @20 EXTERN ~HB#Ben~ Pitie

    END

    IF ~~ THEN BEGIN Bien
     SAY @11
     IF ~~ THEN REPLY @12 EXTERN ~HB#Ben~ Esclavage
    END
  
    IF ~~ THEN BEGIN TuMens
     SAY @18
     IF ~~ THEN EXTERN ~HB#Ben~ Verite
     END

END