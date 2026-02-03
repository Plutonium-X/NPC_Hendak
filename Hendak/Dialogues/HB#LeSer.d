BEGIN ~HB#LeSer~

IF ~Global("HB#Pirates","GLOBAL",5)~ THEN BEGIN Cachette
SAY @0
IF ~~ THEN EXTERN ~HB#HendJ~ Insistance
END

IF ~~ THEN BEGIN Vermine
SAY @2
IF ~~ THEN EXTERN ~HB#HendJ~ Memoire
END

IF ~~ THEN BEGIN Beaucoup
SAY @4
IF ~~ THEN EXTERN ~HB#HendJ~ Revendu
END

IF ~~ THEN BEGIN Rebut
SAY @6 = @7
IF ~~ THEN DO ~SetGlobal("HB#Pirates","GLOBAL",6)
              Enemy()~ EXIT
END


IF ~Global("HB#Poursuite","GLOBAL",2)~ THEN BEGIN Fuite
SAY @8
IF ~~ THEN EXTERN ~HB#HendJ~ Lache
END

IF ~~ THEN BEGIN Temps
SAY @10
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",3)
              EscapeArea()~ EXIT
END


//COMBAT A BRYNNLAW

IF ~Global("HB#Poursuite","GLOBAL",10)~ THEN BEGIN Baston
SAY @20
IF ~~ THEN EXTERN ~HB#HendJ~ Navire
END

IF ~~ THEN BEGIN Commerce
SAY @22
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",11)
              Enemy()~ EXIT
END


//MORT DU SERPENT

IF ~Global("HB#Poursuite","GLOBAL",14)~ THEN BEGIN Baston
SAY @23= @24= @25
IF ~~ THEN DO ~SetGlobal("HB#Poursuite","GLOBAL",15)
               AddXPObject(Player1,15000)
               AddXPObject(Player2,15000)
               AddXPObject(Player3,15000)
               AddXPObject(Player4,15000)
               AddXPObject(Player5,15000)
               AddXPObject(Player6,15000)~ EXIT
END



APPEND ~HB#HendJ~

    IF ~~ THEN BEGIN Insistance
        SAY @1
        IF ~~ THEN EXTERN ~HB#LeSer~ Vermine
    END
    
    
    IF ~~ THEN BEGIN Memoire
    SAY @3
    IF ~~ THEN EXTERN ~HB#LeSer~ Beaucoup
    END
    
    IF ~~ THEN BEGIN Revendu
    SAY @5
    IF ~~ THEN EXTERN ~HB#LeSer~ Rebut
    END
    
    IF ~~ THEN BEGIN Lache
    SAY @9
    IF ~~ THEN EXTERN ~HB#LeSer~ Temps
    END
    
    IF ~~ THEN BEGIN Navire
    SAY @21
    IF ~~ THEN EXTERN ~HB#LeSer~ Commerce
    END


END