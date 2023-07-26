LOCK f TO SHIP:FACING:VECTOR.
LOCK rR TO SHIP:FACING * R(0, 90, 0).
LOCK rt TO rR:VECTOR.
LOCK t TO VCRS(f, r).
LOCK cP TO 90 - VANG(SHIP:UP:VECTOR, SHIP:FACING:FOREVECTOR).

LOCK THROTTLE TO 1.0.
LOCK STEERING TO UP.
STAGE.
SET ms TO TIME:SECONDS.
LOCK met TO TIME:SECONDS - ms.

WAIT 3.0.
STAGE.
WAIT 2.0.
LOCK tP TO 90 - ((90 - 45) * (met - 5) / (70 - 5)).
LOCK STEERING TO HEADING(90, tP).
UNTIL tP <= 45 {
 PRINT "Pitch: " + ROUND(cP, 2).
 WAIT 2.
}
LOCK STEERING TO HEADING(90, 45).
WAIT 30.
