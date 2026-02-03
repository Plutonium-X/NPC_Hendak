BEGIN ~HB#JD~

IF ~Global("HB#Chasseurs","GLOBAL",5)~ THEN BEGIN Invites
SAY @0 = @1
IF ~~ THEN REPLY @2 GOTO Viande
IF ~~ THEN REPLY @7 GOTO Honorable
END


IF ~~ THEN BEGIN Savoir
SAY @35 = @36
IF ~~ THEN REPLY @37 GOTO Devoue
END


IF ~~ THEN BEGIN Devoue
SAY @38
IF ~~ THEN REPLY @39 GOTO Possible
IF ~~ THEN REPLY @41 GOTO Battre
END

IF ~~ THEN BEGIN Possible
SAY @40
IF ~~ THEN DO ~SetGlobal("HB#Chasseurs","GLOBAL",6)~EXIT
END

IF ~~ THEN BEGIN Battre
SAY @42
IF ~~ THEN DO ~SetGlobal("HB#Chasseurs","GLOBAL",6)~EXIT
END





//APRES L'EVASION
IF ~Global("HB#Chasseurs","GLOBAL",8)~ THEN BEGIN Halte
SAY @70
IF ~~ THEN REPLY @71 GOTO Fausser
IF ~~ THEN REPLY @72 GOTO Fausser
END





CHAIN

    IF ~~ THEN~HB#JD~ Viande
    @3
    == ~HB#Krod~ @4
    == ~HB#JD~ @5
    END IF ~~ THEN REPLY @6 GOTO Honorable


CHAIN

    IF ~~ THEN~HB#JD~ Honorable
    @8
    == ~HB#Ania~ @9
    == ~HB#Kelsh~ @10
    == ~HB#JD~ @11
    == ~HB#Minta~ @12
    == ~HB#JD~ @13
    == ~HB#Ulzar~ @14
    == ~HB#JD~ @15
    == ~HB#Krod~ @16
    == ~HB#JD~ @17
    == ~HB#Krod~ @18
    == ~HB#JD~ @19
    == ~HB#Krod~ @20
    == ~HB#JD~ @21
    == ~HB#Krod~ @22
    == ~HB#JD~ @23
    == ~HB#HendJ~ @24
    == ~HB#JD~ @25
    == ~HB#HendJ~ @26
    == ~HB#JD~ @27
    == ~HB#HendJ~ @28
    == ~HB#JD~ @29
    == ~HB#HendJ~ @30
    == ~HB#JD~ @31
    == ~HB#HendJ~ @32
    == ~HB#JD~ @33
    END IF ~~ THEN REPLY @34 GOTO Savoir
    
    CHAIN

    IF ~~ THEN~HB#JD~ Fausser
    @60
    == ~HB#Ania~ @61
    == ~HB#Ulzar~ @62
    == ~HB#Krod~ @63
    == ~HB#Kelsh~ @64
    == ~HB#Minta~ @65
    END IF ~~ THEN DO ~SaveGame(0)
					  SetGlobal("HB#Chasseurs","GLOBAL",9)
                      Enemy()
                      ActionOverride("HB#JD",Enemy())
                      ActionOverride("HB#Ania",Enemy())
                      ActionOverride("HB#Ulzar",Enemy())
                      ActionOverride("HB#Krod",Enemy())
                      ActionOverride("HB#Kelsh",Enemy())
                      Wait(1)
					  ~EXIT
