
runoncepath("0:/engineLib").

print "Press l to launch".
set ship:control:pilotmainthrottle to 1.
set ch to terminal:input:getchar().


set mainEngine to SHIP:PARTSDUBBED("ME1")[0].

if ch = "l" {
    stage.
    wait until isEngineGo(mainEngine,0.95).
    stage.
    wait until mainEngine:flameout.
    wait 5.
    stage.
    ag1 on. 
}