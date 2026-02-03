BEGIN ~HB#Dunca~

IF ~Global("HB#Pirates","GLOBAL",2)~ THEN BEGIN Voulez
SAY @0
IF ~~ THEN REPLY @1 GOTO Ouais
END

IF ~~ THEN BEGIN Ouais
SAY @2
IF ~~ THEN REPLY @3 GOTO Contacts
END

IF ~~ THEN BEGIN Contacts
SAY @4
IF ~~ THEN REPLY @5 GOTO Secret
IF ~ReputationLT(Player1,10)~ THEN REPLY @6 GOTO Affaires1
IF ~ReputationGT(Player1,9)~ THEN REPLY @6 GOTO Affaires2
IF ~ReputationLT(Player1,10)~ THEN REPLY @7 GOTO Affaires1
IF ~ReputationGT(Player1,9)~ THEN REPLY @7 GOTO Affaires2
END

IF ~~ THEN BEGIN Secret
SAY @8
IF ~ReputationLT(Player1,10)~ THEN REPLY @9 GOTO Affaires1
IF ~ReputationGT(Player1,9)~ THEN REPLY @9 GOTO Affaires2
IF ~~ THEN REPLY @10 GOTO Echec
END

IF ~~ THEN BEGIN Echec
SAY @11
IF ~~ THEN EXTERN ~HB#HendJ~ Miserable
END

IF ~~ THEN BEGIN Affaires1
SAY @40
IF ~PartyGoldGT(999)~ THEN REPLY @41 GOTO Genereux1
IF~PartyGoldGT(499)~ THEN REPLY @42 GOTO Genereux2
IF ~PartyGoldGT(99)~ THEN REPLY @43 GOTO Radin
IF ~PartyGoldLT(100)~ THEN EXIT
END

IF ~~ THEN BEGIN Genereux1
SAY @12 = @13
IF ~~ THEN DO ~SetGlobal("HB#Pirates","GLOBAL",3)
MoveToObject(Player1)
GiveItem("HB#key01",Player1)
TakePartyGold(1000)
AddJournalEntry(@14,QUEST)~ EXIT
END

IF ~~ THEN BEGIN Genereux2
SAY @12 = @13
IF ~~ THEN DO ~SetGlobal("HB#Pirates","GLOBAL",3)
MoveToObject(Player1)
GiveItem("HB#key01",Player1)
TakePartyGold(500)
AddJournalEntry(@14,QUEST)~ EXIT
END

IF ~~ THEN BEGIN Radin
SAY @44
IF ~~ THEN DO ~SetGlobal("HB#Pirates","GLOBAL",100)~ EXIT
END


IF ~~ THEN BEGIN Affaires2
SAY @15
IF ~~ THEN EXTERN ~HB#HendJ~ Miserable
END


//RETOUR VERS DUNCAN

IF ~Global("HB#Pirates","GLOBAL",100)~ THEN BEGIN Pourquoi
SAY @30
IF ~ReputationLT(Player1,10)~ THEN REPLY @31 GOTO Affaires1
IF ~ReputationGT(Player1,9)~ THEN REPLY @31 GOTO Repondu
END

IF ~~ THEN BEGIN Repondu
SAY @32
IF ~~ THEN EXIT
END


APPEND ~HB#HendJ~

    IF ~~ THEN BEGIN Miserable
    SAY @16
    IF ~ !Global("WorkingForAran","GLOBAL",0)~ THEN REPLY @17 GOTO Indices
    IF ~ Global("WorkingForAran","GLOBAL",0)~ THEN REPLY @19 GOTO Allies
    END

    IF ~~ THEN BEGIN Indices
    SAY @18
    IF ~~ THEN DO ~SetGlobal("HB#Pirates","GLOBAL",100)
    AddJournalEntry(@21,QUEST)~ EXIT
    END
    
    IF ~~ THEN BEGIN Allies
    SAY @20
    IF ~~ THEN DO ~SetGlobal("HB#Pirates","GLOBAL",100)
    AddJournalEntry(@21,QUEST)~ EXIT
    END
    
END