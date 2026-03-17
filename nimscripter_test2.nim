import nimscripter

const script = NimScriptFile"proc fancyStuff*(a: int) = assert a in [10, 300]" # Notice `fancyStuff` is exported
let intr = loadScript(script) # We are not exposing any procedures hence single parameter
intr.invoke(fancyStuff, 10) # Calls `fancyStuff(10)` in vm
intr.invoke(fancyStuff, 300)
