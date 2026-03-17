import winim/clr
proc example1() =
  ## Create a CLR object (aka. C# instance) and call the method
  var mscor = load("mscorlib")
  var rand = mscor.new("System.Random")
  echo rand.Next()

proc example2() =
  ## Create a type object and call the static method
  var mscor = load("mscorlib")
  var Int32 = mscor.GetType("System.Int32")
  echo @Int32.Parse("12345")

proc example3() =
  ## Compile some code and run it
  var code = """

    using System;
    public class Test {
      public void Hello() {
        Console.WriteLine("Hello, world");
      }
    }
    """
  var res = compile(code)
  var o = res.CompiledAssembly.new("Test")
  o.Hello()

example1()
example2()
example3()