function isEngineGo {
  parameter engine.
  parameter level.
    return engine:THRUST>level*engine:MAXTHRUST.
}.

function isEngineRunning {
  parameter engine.
    return engine:fuelflow=0.
}.