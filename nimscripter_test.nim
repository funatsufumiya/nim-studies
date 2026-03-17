import nimscripter
proc doThing(): int = 42
exportTo(myImpl, doThing) # The name of our "nimscript module" is `myImpl`
const 
  scriptProcs = implNimScriptModule(myImpl) # This emits our exported code
  ourScript = NimScriptFile("assert doThing() == 42") # Convert to `NimScriptFile` for loading from strings
let intr = loadScript(ourScript, scriptProcs)
