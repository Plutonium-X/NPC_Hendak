BEGIN ~HB#HendB~

IF ~~ THEN BEGIN Interessant
SAY @800012
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Oui
SAY @800285
IF ~~ THEN EXTERN ~BKORGAN~ Lard
END

IF ~~ THEN BEGIN Deconcentre
SAY @800289
IF ~~ THEN EXTERN ~BKORGAN~ Pari
END

IF ~~ THEN BEGIN Fort
SAY @800293
IF ~~ THEN EXTERN ~BKORGAN~ Saligaud
END

IF ~~ THEN BEGIN Tenu
SAY @800295
IF ~~ THEN EXIT
END


////BANTERS JAN JANSEN

CHAIN
IF WEIGHT #-999 ~InParty("Jan")
                 Global("HB#HendaTalkJan","GLOBAL",0)
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Jan",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BJAN HendaTalkJan1
@800000
DO ~ SetGlobal("HB#HendaTalkJan","GLOBAL",1)~
== "HB#HendB" @800001
== BJAN @800002
== "HB#HendB" @800003
== BJAN @800004
== "HB#HendB" @800005
== BJAN @800006
== "HB#HendB" @800007
END IF ~~ THEN EXTERN ~BJAN~ Couturiere


CHAIN
IF WEIGHT #-999 ~InParty("Jan")
                 Global("HB#HendaTalkJan","GLOBAL",1)
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Jan",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BJAN HendaTalkJan2
@800013
DO ~ SetGlobal("HB#HendaTalkJan","GLOBAL",2)~
== "HB#HendB" @800014
== BJAN @800015
== "HB#HendB" @800016
== BJAN @800017
== "HB#HendB" @800018
== BJAN @800019
== "HB#HendB" @800020
== BJAN @800021
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Jan")
                 Global("HB#HendaTalkJan","GLOBAL",2)
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Jan",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkJan3
@800022
DO ~ SetGlobal("HB#HendaTalkJan","GLOBAL",3)~
== BJAN @800023
== "HB#HendB" @800024
== BJAN @800025
== "HB#HendB" @800026
== BJAN @800027
== "HB#HendB" @800028
== BJAN @800029
== "HB#HendB" @800030
== BJAN @800031
EXIT


////BANTERS NALIA

CHAIN
IF WEIGHT #-999 ~InParty("Nalia")
Global("HB#HendaTalkNalia","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkNalia1
@800032
DO ~SetGlobal("HB#HendaTalkNalia","GLOBAL",1)~
== BNALIA @800033
== "HB#HendB" @800034
== BNALIA @800035
== "HB#HendB" @800036
== BNALIA @800037
== "HB#HendB" @800038
== BNALIA @800039
== "HB#HendB" @800040
== BNALIA @800041 = @800042 = @800043
== "HB#HendB" @800044
== BNALIA @800045
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Nalia")
Global("HB#HendaTalkNalia","GLOBAL",1)
Dead("Torgal")
CombatCounter(0)
!See([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkNalia2
@800046
DO ~SetGlobal("HB#HendaTalkNalia","GLOBAL",2)~
== BNALIA @800047
== "HB#HendB" @800048
== BNALIA @800049
== "HB#HendB" @800050
== BNALIA @800051
== "HB#HendB" @800052
== BNALIA @800053
== "HB#HendB" @800054
== BNALIA @800055
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Nalia")
Global("HB#HendaTalkNalia","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BNALIA HendaTalkNalia3
@800056
DO ~SetGlobal("HB#HendaTalkNalia","GLOBAL",3)~
== "HB#HendB" @800057
== BNALIA @800058
== "HB#HendB" @800059
== BNALIA @800060
== "HB#HendB" @800061
== BNALIA @800062
== "HB#HendB" @800063
== BNALIA @800064
== "HB#HendB" @800065
== BJAN IF ~InParty("Jan")~ THEN @800066
== "HB#HendB" @800067 = @800068
== BNALIA @800069
== "HB#HendB" @800070
EXIT



////BANTERS AERIE

CHAIN
IF WEIGHT #-999 ~InParty("Aerie")
Global("HB#HendaTalkAerie","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkAerie1
@800071
DO ~SetGlobal("HB#HendaTalkAerie","GLOBAL",1)~
== BAERIE @800072
== "HB#HendB" @800073
== BAERIE @800074
== "HB#HendB" @800075
== BAERIE @800076
== "HB#HendB" @800077
== BAERIE @800078
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Aerie")
Global("HB#HendaTalkAerie","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BAERIE HendaTalkAerie2
@800079
DO ~SetGlobal("HB#HendaTalkAerie","GLOBAL",2)~
== "HB#HendB" @800080
== BAERIE @800081
== "HB#HendB" @800082
== BAERIE @800083
== "HB#HendB" @800084
== BAERIE @800085
== "HB#HendB" @800086
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Aerie")
Global("HB#HendaTalkAerie","GLOBAL",2)
AreaType(OUTDOOR)
TimeofDay(NIGHT)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BAERIE HendaTalkAerie3
@800087
DO ~SetGlobal("HB#HendaTalkAerie","GLOBAL",3)~
== "HB#HendB" @800088
== BAERIE @800089
== "HB#HendB" @800090
== BAERIE @800091
== "HB#HendB" @800092
== BAERIE @800093
== "HB#HendB" @800094
== BAERIE @800095
== "HB#HendB" @800096
EXIT





////BANTERS ANOMEN

CHAIN
IF WEIGHT #-999 ~InParty("Anomen")
Global("HB#HendaTalkAnomen","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkAnomen1
@800097
DO ~SetGlobal("HB#HendaTalkAnomen","GLOBAL",1)~
== BANOMEN @800098
== "HB#HendB" @800099
== BANOMEN @800100
== "HB#HendB" @800101
== BANOMEN @800102
== "HB#HendB" @800103
== BANOMEN @800104
== "HB#HendB" @800105
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Anomen")
Global("HB#HendaTalkAnomen","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BANOMEN HendaTalkAnomen2
@800106
DO ~SetGlobal("HB#HendaTalkAnomen","GLOBAL",2)~
== "HB#HendB" @800107
== BANOMEN @800108
== "HB#HendB" @800109
== BANOMEN @800110
== "HB#HendB" @800111
== BANOMEN @800112
== "HB#HendB" @800113
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Anomen")
Global("HB#HendaTalkAnomen","GLOBAL",2)
Dead("HB#LeSer")
CombatCounter(0)
!See([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BANOMEN HendaTalkAnomen3
@800114
DO ~SetGlobal("HB#HendaTalkAnomen","GLOBAL",3)~
== "HB#HendB" @800115
== BANOMEN @800116 = @800117
== "HB#HendB" @800118
== BANOMEN @800119
EXIT




////BANTERS CERND

CHAIN
IF WEIGHT #-999 ~InParty("Cernd")
Global("HB#HendaTalkCernd","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkCernd1
@800120
DO ~SetGlobal("HB#HendaTalkCernd","GLOBAL",1)~
== BCERND @800121
== "HB#HendB" @800122
== BCERND @800123
== "HB#HendB" @800124
== BCERND @800125
== "HB#HendB" @800126
== BCERND @800127
== "HB#HendB" @800128
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Cernd")
Global("HB#HendaTalkCernd","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BCERND HendaTalkCernd2
@800129
DO ~SetGlobal("HB#HendaTalkCernd","GLOBAL",2)~
== "HB#HendB" @800130
== BCERND @800131
== "HB#HendB" @800132
== BCERND @800133
== "HB#HendB" @800134
== BCERND @800135
== "HB#HendB" @800136
== BCERND @800137
== "HB#HendB" @800138
== BCERND @800139
== "HB#HendB" @800140
== BCERND @800141
=="HB#HendB" @800142
== BCERND @800143
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Cernd")
Global("HB#HendaTalkCernd","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkCernd3
@800144
DO ~SetGlobal("HB#HendaTalkCernd","GLOBAL",3)~
== BCERND @800145
== "HB#HendB" @800146
== BCERND @800147 = @800148
== "HB#HendB" @800149
EXIT





////BANTERS EDWIN

CHAIN
IF WEIGHT #-999 ~Global("HB#HendaTalkEdwin","GLOBAL",0)
                 InParty("Edwin")
                 InParty("HB#Henda")
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Edwin",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BEDWIN HendaTalkEdwin1
@800150
DO ~ SetGlobal("HB#HendaTalkEdwin","GLOBAL",1)~
== "HB#HendB" @800151
== BEDWIN @800152
== "HB#HendB" @800153
== BEDWIN @800154
== "HB#HendB" @800155
== BEDWIN @800156
== "HB#HendB" @800157
== BEDWIN @800158
EXIT


CHAIN
IF WEIGHT #-999 ~Global("HB#HendaTalkEdwin","GLOBAL",1)
                 InParty("Edwin")
                 InParty("HB#Henda")
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Edwin",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BEDWIN HendaTalkEdwin2
@800159
DO ~ SetGlobal("HB#HendaTalkEdwin","GLOBAL",2)~
== "HB#HendB" @800160
== BEDWIN @800161
== "HB#HendB" @800162
== BEDWIN @800163
== "HB#HendB" @800164
== BEDWIN @800165
EXIT


CHAIN
IF WEIGHT #-999 ~Global("HB#HendaTalkEdwin","GLOBAL",2)
                 InParty("Edwin")
                 InParty("HB#Henda")
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Edwin",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkEdwin3
@800166
DO ~ SetGlobal("HB#HendaTalkEdwin","GLOBAL",3)~
== BEDWIN @800167
== "HB#HendB" @800168
== BEDWIN @800169
== "HB#HendB" @800170
== BEDWIN @800171
== "HB#HendB" @800172
EXIT


////BANTERS HAERDALIS

CHAIN
IF WEIGHT #-999 ~Global("HB#HendaTalkHaerDalis","GLOBAL",0)
                 InParty("Haer'Dalis")
                 InParty("HB#Henda")
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Haer'Dalis",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BHAERDA HendaTalkHaerDalis1
@800173
DO ~ SetGlobal("HB#HendaTalkHaerDalis","GLOBAL",1)~
== "HB#HendB" @800174
== BHAERDA @800175
== "HB#HendB" @800176
== BHAERDA @800177
== "HB#HendB" @800178
== BHAERDA @800179
EXIT


CHAIN
IF WEIGHT #-999 ~Global("HB#HendaTalkHaerDalis","GLOBAL",1)
                 InParty("Haer'Dalis")
                 InParty("HB#Henda")
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Haer'Dalis",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkHaerDalis2
@800180
DO ~ SetGlobal("HB#HendaTalkHaerDalis","GLOBAL",2)~
== BHAERDA @800181
== "HB#HendB" @800182
== BHAERDA @800183
== "HB#HendB" @800184
== BHAERDA @800185
== "HB#HendB" @800186
EXIT


CHAIN
IF WEIGHT #-999 ~Global("HB#HendaTalkHaerDalis","GLOBAL",2)
                 InParty("Haer'Dalis")
                 InParty("HB#Henda")
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Haer'Dalis",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BHAERDA HendaTalkHaerDalis3
@800187
DO ~ SetGlobal("HB#HendaTalkHaerDalis","GLOBAL",3)~
== "HB#HendB" @800188
== BHAERDA @800189 = @800190
== "HB#HendB" @800191
== BHAERDA @800192
EXIT




////BANTERS IMOEN

CHAIN
IF WEIGHT #-999 ~Global("HB#HendaTalkImoen","GLOBAL",0)
                 InParty("Imoen2")
                 InParty("HB#Henda")
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Imoen2",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BIMOEN2 HendaTalkImoen1
@800193
DO ~ SetGlobal("HB#HendaTalkImoen","GLOBAL",1)~
== "HB#HendB" @800194
== BIMOEN2 @800195
== "HB#HendB" @800196
== BIMOEN2 @800197
== "HB#HendB" @800198
== BIMOEN2 @800199
== "HB#HendB" @800200
== BIMOEN2 @800201
EXIT


CHAIN
IF WEIGHT #-999 ~Global("HB#HendaTalkImoen","GLOBAL",1)
                 InParty("Imoen2")
                 InParty("HB#Henda")
                 CombatCounter(0)
                 !See([ENEMY])
                 !StateCheck("Imoen2",CD_STATE_NOTVALID)
                 !StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BIMOEN2 HendaTalkImoen2
@800202
DO ~ SetGlobal("HB#HendaTalkImoen","GLOBAL",2)~
== "HB#HendB" @800203
== BIMOEN2 @800204
== "HB#HendB" @800205
== BIMOEN2 @800206
== "HB#HendB" @800207
END IF ~~ THEN EXTERN ~BIMOEN2~ Rugissement




////BANTERS JAHEIRA

CHAIN
IF WEIGHT #-999 ~InParty("Jaheira")
Global("HB#HendaTalkJaheira","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkJaheira1
@800210
DO ~SetGlobal("HB#HendaTalkJaheira","GLOBAL",1)~
== BJAHEIR @800211
== "HB#HendB" @800212
== BJAHEIR @800213
== "HB#HendB" @800214
== BJAHEIR @800215
== "HB#HendB" @800216
== BJAHEIR @800217
== "HB#HendB" @800218
== BJAHEIR @800219
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Jaheira")
Global("HB#HendaTalkJaheira","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BJAHEIR HendaTalkJaheira2
@800220
DO ~SetGlobal("HB#HendaTalkJaheira","GLOBAL",2)~
== "HB#HendB" @800221
== BJAHEIR @800222
== "HB#HendB" @800223
== BJAHEIR @800224
== "HB#HendB" @800225
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Jaheira")
Global("HB#HendaTalkJaheira","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BJAHEIR HendaTalkJaheira3
@800226
DO ~SetGlobal("HB#HendaTalkJaheira","GLOBAL",3)~
== "HB#HendB" @800227
== BJAHEIR @800228
== "HB#HendB" @800229
== BJAHEIR @800230
== "HB#HendB" @800231
== BJAHEIR @800232
== "HB#HendB" @800233
EXIT



////BANTERS KELDORN

CHAIN
IF WEIGHT #-999 ~InParty("Keldorn")
Global("HB#HendaTalkKeldorn","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BKELDOR HendaTalkKeldorn1
@800234
DO ~SetGlobal("HB#HendaTalkKeldorn","GLOBAL",1)~
== "HB#HendB" @800235
== BKELDOR @800236
== "HB#HendB" @800237
== BKELDOR @800238
== "HB#HendB" @800239
== BKELDOR @800240
EXIT



CHAIN
IF WEIGHT #-999 ~InParty("Keldorn")
Global("HB#HendaTalkKeldorn","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BKELDOR HendaTalkKeldorn2
@800241
DO ~SetGlobal("HB#HendaTalkKeldorn","GLOBAL",2)~
== "HB#HendB" @800242
== BKELDOR @800243
== "HB#HendB" @800244
== BKELDOR @800245
== "HB#HendB" @800246
== BKELDOR @800247
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Keldorn")
Global("HB#HendaTalkKeldorn","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkKeldorn3
@800248
DO ~SetGlobal("HB#HendaTalkKeldorn","GLOBAL",3)~
== BKELDOR @800249
== "HB#HendB" @800250
== BKELDOR @800251
== "HB#HendB" @800252
== BKELDOR @800253 = @800254
EXIT


////BANTERS KORGAN

CHAIN
IF WEIGHT #-999 ~InParty("Korgan")
Global("HB#HendaTalkKorgan","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BKORGAN HendaTalkKorgan1
@800255
DO ~SetGlobal("HB#HendaTalkKorgan","GLOBAL",1)~
== "HB#HendB" @800256
== BKORGAN @800257
== "HB#HendB" @800258
== BKORGAN @800259
== "HB#HendB" @800260
== BKORGAN @800261
EXIT



CHAIN
IF WEIGHT #-999 ~InParty("Korgan")
Global("HB#HendaTalkKorgan","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BKORGAN HendaTalkKorgan2
@800262
DO ~SetGlobal("HB#HendaTalkKorgan","GLOBAL",2)~
== "HB#HendB" @800263
== BKORGAN @800264
== "HB#HendB" @800265
== BKORGAN @800266
== "HB#HendB" @800267
== BKORGAN @800268
== "HB#HendB" @800269
== BKORGAN @800270
== "HB#HendB" @800271
== BKORGAN @800272
== "HB#HendB" @800273 = @800274
== BKORGAN @800275
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Korgan")
Global("HB#HendaTalkKorgan","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkKorgan3
@800276
DO ~SetGlobal("HB#HendaTalkKorgan","GLOBAL",3)~
== BKORGAN @800277
== "HB#HendB" @800278
== BKORGAN @800279
== "HB#HendB" @800280
== BKORGAN @800281
== "HB#HendB" @800282
END IF ~~ THEN EXTERN ~BKORGAN~ Salive



////BANTERS MAZZY


CHAIN
IF WEIGHT #-999 ~InParty("Mazzy")
Global("HB#HendaTalkMazzy","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkMazzy1
@800296
DO ~SetGlobal("HB#HendaTalkMazzy","GLOBAL",1)~
== BMAZZY @800297
== "HB#HendB" @800298
== BMAZZY @800299
== "HB#HendB" @800300
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Mazzy")
Global("HB#HendaTalkMazzy","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BMAZZY HendaTalkMazzy2
@800301
DO ~SetGlobal("HB#HendaTalkMazzy","GLOBAL",2)~
== "HB#HendB" @800302
== BMAZZY @800303
== "HB#HendB" @800304
== BMAZZY @800305
== "HB#HendB" @800306
== BMAZZY @800307
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Mazzy")
Global("HB#HendaTalkMazzy","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkMazzy3
@800308
DO ~SetGlobal("HB#HendaTalkMazzy","GLOBAL",3)~
== BMAZZY @800309
== "HB#HendB" @800310
== BMAZZY @800311
== "HB#HendB" @800312
== BMAZZY @800313
== "HB#HendB" @800314
== BMAZZY @800315
EXIT




////BANTERS MINSC


CHAIN
IF WEIGHT #-999 ~InParty("Minsc")
Global("HB#HendaTalkMinsc","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkMinsc1
@800316
DO ~SetGlobal("HB#HendaTalkMinsc","GLOBAL",1)~
== BMINSC @800317
== "HB#HendB" @800318
== BMINSC @800319
== "HB#HendB" @800320
== BMINSC @800321
== "HB#HendB" @800322
== BMINSC @800323
== "HB#HendB" @800324
== BMINSC @800325
== "HB#HendB" @800326
== BMINSC @800327
== "HB#HendB" @800328
EXIT



CHAIN
IF WEIGHT #-999 ~InParty("Minsc")
Global("HB#HendaTalkMinsc","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BMINSC HendaTalkMinsc2
@800329
DO ~SetGlobal("HB#HendaTalkMinsc","GLOBAL",2)~
== "HB#HendB" @800330
== BMINSC @800331
== "HB#HendB" @800332
== BMINSC @800333
== "HB#HendB" @800334
== BMINSC @800335
== "HB#HendB" @800336
== BMINSC @800337
EXIT




 CHAIN
IF WEIGHT #-999 ~InParty("Minsc")
Global("HB#HendaTalkMinsc","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkMinsc3
@800338
DO ~SetGlobal("HB#HendaTalkMinsc","GLOBAL",3)~
== BMINSC @800339
== "HB#HendB" @800340
== BMINSC @800341
== "HB#HendB" @800342
== BMINSC @800343
EXIT




////BANTERS VALYGAR



CHAIN
IF WEIGHT #-999 ~InParty("Valygar")
Global("HB#HendaTalkValygar","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkValygar1
@800344
DO ~SetGlobal("HB#HendaTalkValygar","GLOBAL",1)~
== BVALYGA @800345
== "HB#HendB" @800346
== BVALYGA @800347
== "HB#HendB" @800348
== BVALYGA @800349
== "HB#HendB" @800350
== BVALYGA @800351
EXIT



CHAIN
IF WEIGHT #-999 ~InParty("Valygar")
Global("HB#HendaTalkValygar","GLOBAL",1)
AreaType(FOREST)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BVALYGA HendaTalkValygar2
@800352
DO ~SetGlobal("HB#HendaTalkValygar","GLOBAL",2)~
== "HB#HendB" @800353
== BVALYGA @800354
== "HB#HendB" @800355
== BVALYGA @800356
== "HB#HendB" @800357
== BVALYGA @800358
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Valygar")
Global("HB#HendaTalkValygar","GLOBAL",2)
Dead("HB#LeSer")
Dead("Lavok")
CombatCounter(0)
!See([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BVALYGA HendaTalkValygar3
@800359
DO ~SetGlobal("HB#HendaTalkValygar","GLOBAL",3)~
== "HB#HendB" @800360
== BVALYGA @800361
== "HB#HendB" @800362
== BVALYGA @800363
EXIT



////BANTERS VICONIA

CHAIN
IF WEIGHT #-999 ~InParty("Viconia")
Global("HB#HendaTalkViconia","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BVICONI HendaTalkViconia1
@800364
DO ~SetGlobal("HB#HendaTalkViconia","GLOBAL",1)~
== "HB#HendB" @800365
== BVICONI @800366
== "HB#HendB" @800367
== BVICONI @800368
== "HB#HendB" @800369
== BVICONI @800370
== "HB#HendB" @800371
== BVICONI @800372
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Viconia")
Global("HB#HendaTalkViconia","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BVICONI HendaTalkViconia2
@800373
DO ~SetGlobal("HB#HendaTalkViconia","GLOBAL",2)~
== "HB#HendB" @800374
== BVICONI @800375
== "HB#HendB" @800376
== BVICONI @800377
== "HB#HendB" @800378
== BVICONI @800379
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Viconia")
Global("HB#HendaTalkViconia","GLOBAL",2)
AreaType(FOREST)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BVICONI HendaTalkViconia3
@800380
DO ~SetGlobal("HB#HendaTalkViconia","GLOBAL",3)~
== "HB#HendB" @800381
== BVICONI @800382
== "HB#HendB" @800383
== BVICONI @800384
EXIT


////BANTERS YOSHIMO

CHAIN
IF WEIGHT #-999 ~InParty("Yoshimo")
Global("HB#HendaTalkYoshimo","GLOBAL",0)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN BYOSHIM HendaTalkYoshimo1
@800385
DO ~SetGlobal("HB#HendaTalkYoshimo","GLOBAL",1)~
== "HB#HendB" @800386
== BYOSHIM @800387
== "HB#HendB" @800388
== BYOSHIM @800389
== "HB#HendB" @800390
== BYOSHIM @800391
EXIT


CHAIN
IF WEIGHT #-999 ~InParty("Yoshimo")
Global("HB#HendaTalkYoshimo","GLOBAL",1)
CombatCounter(0)
!See([ENEMY])
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("HB#Henda",CD_STATE_NOTVALID)~ THEN "HB#HendB" HendaTalkYoshimo2
@800392
DO ~SetGlobal("HB#HendaTalkYoshimo","GLOBAL",2)~
== BYOSHIM @800393
== "HB#HendB" @800394
== BYOSHIM @800395
EXIT





////BANTERS JAN JANSEN

APPEND ~BJAN~

IF ~~ THEN BEGIN Couturiere
SAY @800008 = @800009
IF ~~ THEN REPLY @800010 GOTO Elminster
END

IF ~~ THEN BEGIN Elminster
SAY @800011
IF ~~ THEN EXTERN ~HB#HendB~ Interessant
END

END


////BANTERS IMOEN

APPEND ~BIMOEN2~

IF ~~ THEN BEGIN Rugissement
SAY @800208
IF ~~ THEN REPLY @800209 EXIT
END

END


////BANTERS KORGAN

APPEND ~BKORGAN~

IF ~~ THEN BEGIN Salive
SAY @800283
IF ~~ THEN REPLY @800284 EXTERN ~HB#HendB~ Oui
IF ~~ THEN REPLY @800291 GOTO Mome
END

IF ~~ THEN BEGIN Mome
SAY @800292
IF ~~ THEN EXTERN ~HB#HendB~ Fort
END

IF ~~ THEN BEGIN Lard
SAY @800286
IF ~~ THEN EXTERN ~HB#HendB~ Deconcentre
END

IF ~~ THEN BEGIN Pari
SAY @800290
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Saligaud
SAY @800294
IF ~~ THEN EXTERN ~HB#HendB~ Tenu
END

END