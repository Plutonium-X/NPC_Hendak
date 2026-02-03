BEGIN ~HB#HendJ~

//SOUVENIR KULDAHAR

IF ~Global("HB#Kuldahar","GLOBAL",1)~ THEN BEGIN Souvenir
SAY @600000
IF ~~ THEN REPLY @600001 GOTO Kuldahar
END

IF ~~ THEN BEGIN Kuldahar
SAY @600002= @600003= @600004
IF ~~ THEN REPLY @600005 GOTO Emerveillement
END

IF ~~ THEN BEGIN Emerveillement
SAY @600006
IF ~~ THEN DO ~SetGlobal("HB#Kuldahar","GLOBAL",2)~ EXIT
END



//INTERJECTIONS//

 // CELVAN

  IF ~~ THEN BEGIN HendakCelvan1
    SAY @600008
    IF ~~ THEN EXIT
  END




// AMALAS

  IF ~~ THEN BEGIN HendakAmalas2
   SAY @600010
   IF ~~ THEN EXTERN RUFFIAN HendakAmalas3
  END

  IF ~~ THEN BEGIN HendakAmalas4
   SAY @600012
   IF ~~ THEN EXTERN RUFFIAN HendakAmalas5
  END





// ARAN LINVAIL - GUILDE DES VOLEURS DE L'OMBRE


INTERJECT_COPY_TRANS ARAN 0 SeverAran1

  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600014
  == ARAN        IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600015
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600016
  == ARAN        IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600017
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600018
  == ARAN        IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600019
END





// DOMPTEUR - COURONNE DE CUIVRE

INTERJECT_COPY_TRANS BEAST 0 HendakBeast
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600020
END

// OEIL AVEUGLE

INTERJECT_COPY_TRANS BHEYE 0 HendakBheye
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600021
END



// GARCON CIRQUE

INTERJECT_COPY_TRANS BOY1 0 HendakBoy1
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600022
END



// CALAHAN

INTERJECT_COPY_TRANS CALAHA 0 SeverCalahan
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600023
END



APPEND CELVAN

  IF WEIGHT #-1 ~See("HB#Henda")
  InParty("HB#Henda")
 !StateCheck("HB#Henda",CD_STATE_NOTVALID)
  RandomNum(2,1)
  Global("HB#HendaCelvan","AR0300",0)~ THEN BEGIN HendakCelvan
    SAY @600007
    IF ~~ THEN DO ~SetGlobal("HB#HendaCelvan","AR0300",1)~ EXTERN ~HB#HendJ~ HendakCelvan1
  END
END



// ROMEO & JULIETTE

INTERJECT_COPY_TRANS CROTHF01 3 HendakRomeo
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600024
END

// ABOLETH

INTERJECT_COPY_TRANS DAABOL 9 HendakAbol
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600025
END

// MARCHAND D'ESCLAVE

INTERJECT_COPY_TRANS DADROW3 6 Hendakdadr1
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600026
END

// DELON

INTERJECT_COPY_TRANS DELON 15 HendakDelon
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600027
END




// FIRKRAAG DRAGON

INTERJECT_COPY_TRANS FIRKRA02 5 Hendakfirkra2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600029
END



// ONCLE GERHAR - FAMILLE JANSEN

INTERJECT_COPY_TRANS GERHAR 0 Hendakgerhar
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600030
END

// PHILOSOPHE PACIFISTE

INTERJECT_COPY_TRANS GPHIL01 3 HendakGphilo
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600031
END



// CLAIRE

INTERJECT_COPY_TRANS PIRMUR10 4 Hendakclaire
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600032
END

// SARLES 

INTERJECT_COPY_TRANS SCSARLES 8 HendakSarles
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600033
END

// AVENTURIERS DES VAUX

INTERJECT_COPY_TRANS SEVPAT01 1 HendakSevpat
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600034
END


// TANNEUR

INTERJECT_COPY_TRANS TANNER 7 HendakTanneur
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600035
END

// AVENTURIERS EGOUTS

INTERJECT_COPY_TRANS TARNOR 1 HendakTarnor
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600036
END

INTERJECT_COPY_TRANS TARNOR 4 HendakTarnor2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600037
END

// PRETRE DE HELM


INTERJECT_COPY_TRANS BHOISIG 33 HendakBhoisig
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600038
END




// OGRE - CHEZ LES ILLITHIDS

INTERJECT_COPY_TRANS UDOGRE 6 Hendakudogre
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600039
END



// ELHAN


INTERJECT_COPY_TRANS C6ELHAN2 73 HendakElhan
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600040
END

//// YOSHIMO

INTERJECT_COPY_TRANS YOSHJ 113 HendakYoshi
== "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600114
END

// MAITRE DES ESCLAVES

INTERJECT_COPY_TRANS PMASTER 0 HendakMaster
== "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600115
  == PMASTER IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @699115
END


//// FALDORN 

INTERJECT_COPY_TRANS CEFALDOR 2 HendakFaldorn
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600041
== CEFALDOR IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600042
== "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600043
  == CEFALDOR IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600044
END


// LOGAN, SEIGNEUR MARCHAND DE FRANC MARCHE

INTERJECT_COPY_TRANS CELOGAN 11 Hendaklogan
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600045
END



// GAAL

INTERJECT_COPY_TRANS CSGAAL 11 HendakGaal
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600046
END




// LADY DELCIA

INTERJECT_COPY_TRANS DELCIA 35 HendakDelcia
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600047
  == DELCIA   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600048
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600049
END



// CUISINIER TROLL

INTERJECT_COPY_TRANS FIRTRL01 0 HendakCuisinier
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600050
END




// KANGAXX 

INTERJECT_COPY_TRANS HLSKULL 8 HendakDemiliche
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600051
END


INTERJECT_COPY_TRANS HLDEMI 0 HendakDemiliche1
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600052
END





// KALAH

INTERJECT_COPY_TRANS KALAH2 13 HendakKalah
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600053
END




// ARAN BATEAU

INTERJECT_COPY_TRANS PPARAN2 0 HendPparan
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600054
END

// BODHI BATEAU

INTERJECT_COPY_TRANS PPBODHI3 0 HendPpbodhi1
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600054
END

// BODHI LABYRINTHE

INTERJECT_COPY_TRANS PPBODHI4 6 HendPpBodhi2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600055
END



// IRENICUS ASILE


INTERJECT_COPY_TRANS PPIRENI2 31 HendakIrenicus2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600056
END



// ROI SAHUAGIN

INTERJECT_COPY_TRANS SAHKNG01 36 HendakSahkng
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600057
END



// PRINCE SAHUAGIN

INTERJECT_COPY_TRANS SAHPR2 6 HendakSahpr
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600058
END



// SAMIA


INTERJECT_COPY_TRANS2 SAMIA 25 HendakSamia2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600059
  == SAMIA   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600060
END

// DRAGON ARGENT

INTERJECT_COPY_TRANS UDSILVER 0 HendakUdsilver
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600061
END



// ARDULACE

INTERJECT_COPY_TRANS UDARDUL 16 HendakUdardu
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600062
END



// SOLAUFEIN


INTERJECT_COPY_TRANS UDSOLA01 50 HendakSola
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600063
END


// VISAJ

INTERJECT_COPY_TRANS BREG01 7 HendakBreg
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600064
END




// ARAN LINVAIL ENNEMI

INTERJECT_COPY_TRANS ARAN02 0 HendakAran02
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600065
  == ARAN02 IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600066
END


// MINISTRE LLOYD

INTERJECT_COPY_TRANS UHMAY01 0 HendakLloyd
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600067
END



INTERJECT_COPY_TRANS UHMAY01 30 HendakLloyd2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600068
END



// IRENICUS

INTERJECT_COPY_TRANS SUJON 14 HendakSujon
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600069
  == SUJON  IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600070
END



// BODHI CHAPITRE 3

INTERJECT_COPY_TRANS BODHI2 5 HendakBodhi
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600071
END



// BODHI COMBAT FINAL

INTERJECT_COPY_TRANS C6BODHI 0 HendakBodend
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600072
END



// 1ERE MORT D'IRENICUS

INTERJECT_COPY_TRANS Player1 16 HendakIrenicus1
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600073
END


INTERJECT_COPY_TRANS Player1 25 HendakIrenicus2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600074
END



// SAEMON

INTERJECT_COPY_TRANS PPSAEM2 0 HendakSaemon
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600075
END



INTERJECT_COPY_TRANS PPSAEM3 1 HendakSaemon2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600076
END


INTERJECT_COPY_TRANS PPSAEM3 37 HendakSaemon3
  == "HB#HendJ"  IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600077
END

INTERJECT_COPY_TRANS PPSAEM3 57 HendakSaemon4
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600078
END



INTERJECT_COPY_TRANS PPSAEM 13 HendakSaemon5
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600079
END


INTERJECT_COPY_TRANS PPSAEM 52 HendakSaemon6
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600079
END

INTERJECT_COPY_TRANS PPSAEM 58 HendakSaemon7
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600080
END

// L'ARBRE DE VIE


EXTEND_BOTTOM Player1 33 
IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN GOTO HendakTree
END

APPEND Player1

  IF ~~ THEN BEGIN HendakTree
    SAY @600081
    IF ~~ THEN REPLY @600082 EXTERN "HB#HendJ" HendakArbre
    IF ~~ THEN REPLY @600083 EXTERN "HB#HendJ" HendakArbre
  END
END

APPEND "HB#HendJ"

  IF ~~ THEN BEGIN HendakArbre
    SAY @600084
    COPY_TRANS PLAYER1 33
  END
END

// PHAERE


INTERJECT_COPY_TRANS UDPHAE01 61 HendakPhae
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600085
END

INTERJECT_COPY_TRANS UDPHAE01 84 SeverPhae2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600086
END

// PREMIERS VERTIGES

EXTEND_BOTTOM Player1 3
     IF ~IsValidForPartyDialog("HB#Henda")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN "HB#HendJ" HendakSlayer1
END

APPEND "HB#HendJ"

  IF ~~ THEN BEGIN HendakSlayer1
    SAY @600087
    IF ~~ THEN REPLY @600088 GOTO HendakTete
    IF ~~ THEN REPLY @600089 GOTO HendakRecupere
    IF ~~ THEN REPLY @600090 GOTO HendakFatigue
  END

  IF ~~ THEN BEGIN HendakTete
    SAY @600091
    IF ~~ THEN  EXIT
  END

  IF ~~ THEN BEGIN HendakRecupere
    SAY @600092
    IF ~~ THEN  EXIT
  END

  IF ~~ THEN BEGIN HendakFatigue
    SAY @600093
    IF ~~ THEN  EXIT
  END

END

// PREMIERE TRANSFORMATION

EXTEND_BOTTOM Player1 5
  IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN EXTERN "HB#HendJ" HendakSlayer2
END

APPEND "HB#HendJ"

  IF ~~ THEN BEGIN HendakSlayer2
    SAY @600094
  = @600095
  = @600096
  COPY_TRANS Player1 5
  END
END

// DEUXIEME TRANSFORMATION

EXTEND_BOTTOM PLAYER1 7
IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN EXTERN "HB#HendJ" HendakSlayer3
END

EXTEND_BOTTOM PLAYER1 10
IF ~Global("#SSlayerAttackHendak","GLOBAL",1) Dead("HB#Henda")~ THEN DO ~SetGlobal("#SSlayerAttackHendak","GLOBAL",0)~ GOTO 12
IF ~Global("#SSlayerAttackHendak","GLOBAL",1) !Dead("HB#Henda")~ THEN DO ~SetGlobal("#SSlayerAttackHendak","GLOBAL",0)~ EXTERN "HB#HendJ" HendakSlayer4
END	


APPEND "HB#HendJ"

  IF ~~ THEN BEGIN HendakSlayer3
    SAY @600097
    IF ~~ THEN REPLY @600098 GOTO PerteControle
    IF ~~ THEN REPLY @600099 GOTO PerteControle
    IF ~~ THEN REPLY @600100 GOTO PerteControle
  END

  IF ~~ THEN BEGIN PerteControle
    SAY @600101
    IF ~~ THEN DO ~SetGlobal("#SSlayerAttackHendak","GLOBAL",1)
                   ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
                   ActionOverride(Player1,Attack("HB#Henda"))~ EXIT
  END

  IF ~~ THEN BEGIN HendakSlayer4
    SAY @600102 = @600103
    IF ~~ THEN EXIT
  END

END

// BERNARD, COURONNE DE CUIVRE

INTERJECT_COPY_TRANS BERNARD 22 HendakBernard
  == BERNARD   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600104
  == "HB#HendJ"  IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600105
== BERNARD   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600106
  == "HB#HendJ"  IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600107
== BERNARD   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600108
END

// AMALAS, LA COURONNE DE CUIVRE

EXTEND_BOTTOM RUFFIAN 0
IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN EXTERN RUFFIAN HendakAmalas
END

APPEND RUFFIAN

  IF ~~ THEN BEGIN HendakAmalas
    SAY @600009
    IF ~~ THEN DO ~SetGlobal("HB#HendaAmalas","GLOBAL",1)~ EXTERN ~HB#HendJ~ HendakAmalas2
  END

  IF ~~ THEN BEGIN HendakAmalas3
    SAY @600011
    IF ~~ THEN EXTERN ~HB#HendJ~ HendakAmalas4
  END

  IF ~~ THEN BEGIN HendakAmalas5
    SAY @600013
    IF ~~ THEN DO ~SetGlobal("HB#HendaAmalas","GLOBAL",2)
                   ActionOverride("RUFPAL1",EscapeArea())
                   ActionOverride("RUFPAL2",EscapeArea())
                   EscapeArea()~ EXIT
  END
END




// KVEROSLAVA, ROM DE FRANC MARCHE

INTERJECT_COPY_TRANS TRGYP02 2 HendakKveroslava
  == TRGYP02   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600109
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600110
  == TRGYP02   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600111
END




// ELLESIME

INTERJECT_COPY_TRANS SUELLEAP 1 HendakEllesime
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600112
END



// IRENICUS COMBAT FINAL

INTERJECT_COPY_TRANS HELLJON 7 HendakHelljon
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600113
END

INTERJECT_COPY_TRANS HELLJON 8 HendakHelljon2
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600113
END

INTERJECT_COPY_TRANS HELLJON 9 HendakHelljon3
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600113
END

INTERJECT_COPY_TRANS HELLJON 10 HendakHelljon4
  == "HB#HendJ"   IF ~InParty("HB#Henda") !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN
  @600113
END