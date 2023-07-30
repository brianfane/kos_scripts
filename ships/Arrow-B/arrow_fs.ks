RUNPATH("0:/arrow_init.ks").
LOCK THROTTLE TO 1.

PRINT("Launch").
STAGE.
WAIT 1.1.
PRINT("Drop B1/Light B2").
d1:GETMODULE("ModuleDecouple"):DOEVENT("decouple").
FOR b IN b2 {
  b:GETMODULE("ModuleEnginesRF"):DOEVENT("activate engine").
}
WAIT w.
PRINT("Light sustainer").
s:GETMODULE("ModuleEnginesRF"):DOEVENT("activate engine").
WAIT 1.20 - w. 
d2:GETMODULE("ModuleDecouple"):DOEVENT("decouple").
WAIT 90.
