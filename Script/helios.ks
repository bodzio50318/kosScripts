
runoncepath("0:/engineLib").

print "Press l to launch".
set ship:control:pilotmainthrottle to 1.
RCS ON.
set ch to terminal:input:getchar().


set mainEngine to SHIP:PARTSDUBBED("ME1")[0].
set secondEngine to SHIP:PARTSDUBBED("SE1")[0].

if ch = "l" {
    //start up
    stage.
    //splill up
    wait until isEngineGo(mainEngine,0.95).
    //launch
    stage.

    //first stage burn
    wait until isEngineRunning(mainEngine).
    //meco
    stage.
    wait 1.
    stage.
    //fairing decouple
    wait 5.
    stage.
    //second stage burn
    wait until isEngineRunning(secondEngine).
    wait 1.
    stage.
}
print "END of control!".