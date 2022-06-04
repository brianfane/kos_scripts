FUNCTION pitch {
    PARAMETER s.
    RETURN 90 - VANG(s:up:vector, s:facing:forevector).
}

FUNCTION roll {
    PARAMETER s.
    LOCAL tx IS VDOT(s:facing:topvector, s:up:vector).
    LOCAL vy IS VCRS(s:up:vector, s:facing:forevector).
    LOCAL ty IS VDOT(s:facing:topvector, vy).
    RETURN arctan2(ty, tx).
}

FUNCTION fdo {
    LOCAL s IS ship.
    RETURN LIST(pitch(s), roll(s)).
}

UNTIL 1 > 2 {
    CLEARSCREEN.
    LOCAL o IS fdo().
    PRINT(o[0]).
    PRINT(o[1]).
    WAIT 2.
}
