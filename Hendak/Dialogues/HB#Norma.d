BEGIN ~HB#Norma~

IF ~Global("HB#Bagarre","GLOBAL",3)~ THEN BEGIN Attention
SAY @1
IF ~~ THEN EXTERN ~HB#HendR~ Encore
END

IF ~~ THEN BEGIN Saugrenue
    SAY @3
    IF ~~ THEN DO ~SetGlobal("HB#Bagarre","GLOBAL",4)~ EXIT
END


IF ~Global("HB#Bagarre","GLOBAL",9)~ THEN BEGIN Tuele
SAY @4
IF ~~ THEN EXTERN ~HB#Mot~ Tapertoi
END

IF ~~ THEN BEGIN Cervelle
    SAY @6
    IF ~~ THEN EXTERN ~HB#Mot~ Abruti
END



CHAIN

    IF ~Global("HB#Bagarre","GLOBAL",6)~ THEN~HB#Norma~ Question
    @20
    == ~HB#HendR~ @10
    == ~HB#Norma~ @11
    == ~HB#HendR~ @12
    == ~HB#Norma~ @13
    == ~HB#HendR~ @14
    END IF ~~ THEN DO ~SetGlobal("HB#Bagarre","GLOBAL",7)~ EXIT



APPEND ~HB#HendR~

IF ~~ THEN BEGIN Encore
    SAY @2
    IF ~~ THEN EXTERN ~HB#Norma~ Saugrenue
    END
END
    
    
APPEND ~HB#Mot~

IF ~~ THEN BEGIN Tapertoi
    SAY @5
    IF ~~ THEN EXTERN ~HB#Norma~ Cervelle
    END
    
IF ~~ THEN BEGIN Abruti
    SAY @7
    IF ~~ THEN DO ~SetGlobal("HB#Bagarre","GLOBAL",10)~ EXIT
END
END