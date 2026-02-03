BEGIN ~HB#Mot~


    
    
CHAIN

    IF ~Global("HB#Bagarre","GLOBAL",12)~ THEN~HB#Mot~ Tranche
    @700103
    == ~HB#HendR~ @700108
    == ~HB#Mot~ @700109
    == ~HB#HendR~ @700110
    == ~HB#Corma~ @700111
    == ~HB#HendR~ @700112
    == ~HB#Corma~ @700113 =@700114 =@700115
    END IF ~~ THEN DO ~SetGlobal("HB#Bagarre","GLOBAL",13)~ EXIT

