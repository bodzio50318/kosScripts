
runoncepath("0:/engineLib").

print "Press l to launch".
set ship:control:pilotmainthrottle to 1.
RCS ON.
set ch to terminal:input:getchar().


set mainEngine to SHIP:PARTSDUBBED("ME1")[0].
set secondEngine to SHIP:PARTSDUBBED("SE1")[0].

if ch = "l" {
    print "Waiting for startup ...".
    //splill up
    wait until isEngineGo(mainEngine,0.95).
    print "launch".
    stage.
    print "first stage burn".
    wait until isEngineRunning(mainEngine).
    wait 1.
    print "meco".
    stage.
    wait 1.
    print "se satrt".
    stage.
    wait 1.
    print "fairing sep".
    stage.
    wait until isEngineRunning(secondEngine).
    print "seco".
    wait 1.
    print "sep".
    stage.
    wait 1.
    print "thrid stage running".
    stage.
}
print "END of control!".