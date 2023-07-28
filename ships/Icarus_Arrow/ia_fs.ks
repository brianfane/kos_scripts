RUNPATH("0:/ia_init.ks").
STAGE.
LOCK met TO TIME:SECONDS - ms.
WAIT 3.0.
STAGE.

WAIT 2.0.
LOCK tP TO 90 - ((90 - fP) * (met - 5) / (70 - 5)).
LOCK STEERING TO HEADING(90, tP).
UNTIL tP <= fP {
 WAIT 2.
}
LOCK STEERING TO HEADING(90, 55).
WAIT 20.
STAGE.
WAIT 5.

STAGE.
WAIT 1.1.
d1:DOEVENT("decouple").
b2:DOEVENT("activate engine").
WAIT w.
s:DOEVENT("activate engine").
WAIT 1.40 - w. 
d2:DOEVENT("decouple").
WAIT 90.
