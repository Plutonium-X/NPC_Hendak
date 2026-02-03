BEGIN ~HB#Henda~

// Acte I - Hendak est libre et vient de tuer Lehtinan. Substitution du personnage original et remplacement par celui-ci


// LA QUETE DES ENFANTS EST TERMINEE
// RECRUTEMENT DEFINITIF

IF ~Global("HB#EnfantsLiberes","GLOBAL",2)~ THEN BEGIN Remercie
SAY @0 = @1
IF ~~ THEN REPLY @2 GOTO Voyager
IF ~~ THEN REPLY @201 GOTO Quitter
END

IF ~~ THEN BEGIN Voyager
SAY @3
IF ~~ THEN REPLY @301 GOTO Cagoules
IF ~~ THEN REPLY @302 GOTO Cagoules
IF ~~ THEN REPLY @303 GOTO Reseau
END

IF ~~ THEN BEGIN Quitter
SAY @202
IF ~~ THEN DO ~SetGlobal("HB#EnfantsLiberes","GLOBAL",3)
                         EscapeArea()~ EXIT
END

IF ~~THEN BEGIN Cagoules
SAY @4 = @401= @402
IF ~~ THEN DO ~SetGlobal("HB#EnfantsLiberes","GLOBAL",3)
               SetGlobal("HB#HendakJoinedParty","GLOBAL",1)
               AddJournalEntry(@900000,QUEST)
                          JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Reseau
SAY @401= @402
IF ~~ THEN DO ~SetGlobal("HB#EnfantsLiberes","GLOBAL",3)
               SetGlobal("HB#HendakJoinedParty","GLOBAL",1)
               AddJournalEntry(@900000,QUEST)
                          JoinParty()~ EXIT
END

// DIALOGUE DE KICKOUT

BEGIN ~HB#HendP~

IF ~Global("HB#HendakJoinedParty","GLOBAL",1)~ THEN BEGIN KickOutHendak
SAY @403
IF ~~ THEN REPLY @404 GOTO Pays // Dialogue de confirmation d'éjection
IF ~~ THEN REPLY @407 DO ~JoinParty()~ EXIT // Erreur d'éjection, revient dans la party
END

IF ~~ THEN BEGIN Pays
SAY @405
IF ~~ THEN REPLY @408 GOTO Adieu // Hendak s'en va définitivement
IF ~~ THEN REPLY @407 DO ~JoinParty()~ EXIT // Erreur d'éjection, revient dans la party
END

IF ~~ THEN BEGIN Adieu
SAY @406
IF ~~ THEN DO ~SetGlobal("HB#HendakJoinedParty","GLOBAL",-1)
               EscapeArea()~ EXIT
END

