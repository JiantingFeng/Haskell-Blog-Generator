import           Html

main :: IO ()
main = putStrLn (render myhtml)

myhtml :: Html
myhtml =
  html_
    "Compiling programs with ghc"
    ( append_
      ( p_ "Running ghc invokes the Glasgow Haskell Compiler (GHC), and can be used to compile Haskell modules and programs into native executables and libraries." )
      ( append_
        ( p_ "Create a new Haskell source file named hello.hs, and write the following code in it:" )
        ( append_
          ( code_ "main = putStrLn \"Hello, Haskell!\"")
          ( append_
            ( p_ "Now, we can compile the program by invoking ghc with the file name:")
            ( append_
              ( code_ "➜ ghc hello.hs\n [1 of 1] Compiling Main             ( hello.hs, hello.o )\n Linking hello ...")
              ( append_
                ( p_ "GHC created the following files:")
                ( append_
                  ( ul_ [p_ "hello.hi - Haskell interface file", p_ "hello.o - Object file, the output of the compiler before linking", p_ "hello (or hello.exe on Microsoft Windows) - A native runnable executable."])
                  ( append_
                    ( p_ "GHC will produce an executable when the source file satisfies both conditions:")
                    ( append_
                      ( ol_ [p_ "Defines the main function in the source file", p_ "Defines the module name to be Main, or does not have a module declaration"])
                      ( p_ "Otherwise, it will only produce the .o and .hi files.")
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
