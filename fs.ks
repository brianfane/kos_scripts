FUNCTION fdo {
    LOCAL s IS ship.
    LOCAL pitch IS 90 - VANG(s:up:vector, s:facing:forevector).
    LOCAL tx IS VDOT(s:facing:topvector, s:up:vector).
    LOCAL vy IS VCRS(s:up:vector, s:facing:forevector).
    LOCAL ty IS VDOT(s:facing:topvector, vy).
    RETURN LIST(pitch, arctan2(ty, tx)).
}

UNTIL 1 > 2 {
    CLEARSCREEN.
    LOCAL o IS fdo().
    PRINT(o[0]).
    PRINT(o[1]).
    WAIT 2.
}

LOCK THROTTLE TO 1.0.
WAIT 2.
STAGE.
WAIT 1.2.
STAGE.
WAIT 60.

