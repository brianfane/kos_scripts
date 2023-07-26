SET b2 TO SHIP:PARTSDUBBED("BOOSTER2")[0].
SET d1 TO SHIP:PARTSDUBBED("DECOUPLER1")[0].
SET d2 TO SHIP:PARTSDUBBED("DECOUPLER2")[0].
SET s TO SHIP:PARTSDUBBED("SUSTAINER")[0].
SET w TO 0.7.

LOCK THROTTLE TO 1.

PRINT("Launch").
STAGE.
WAIT 1.1.
PRINT("Drop B1/Light B2").
d1:GETMODULE("ModuleDecouple"):DOEVENT("decouple").
b2:GETMODULE("ModuleEnginesRF"):DOEVENT("activate engine").
WAIT w.
PRINT("Light sustainer").
s:GETMODULE("ModuleEnginesRF"):DOEVENT("activate engine").
WAIT 1.15 - w. 
d2:GETMODULE("ModuleDecouple"):DOEVENT("decouple").
WAIT 90.
