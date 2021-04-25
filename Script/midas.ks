print "Press l to launch".
set ship:control:pilotmainthrottle to 1.
set ch to terminal:input:getchar().


set mainEngine to SHIP:PARTSDUBBED("ME1")[0].

if ch = "l" {
stage.
wait until mainEngine:THRUST>0.98*mainEngine:MAXTHRUST.
stage.
}