STAGE.
WAIT 1.2.
STAGE.
UNTIL 1 > 2 {
SET t TO FACING:topvector.
SET f TO FACING:forevector.
SET u TO UP:vector.
PRINT(90 - VANG(u, f)).
PRINT(ARCTAN2(VDOT(t, VCRS(u, f)), VDOT(t, u))).
WAIT 2.
}
