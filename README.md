# Haskell Blog Generator

This is a simple blog generator written in Haskell. It takes a set of input strings, and generates a set of HTML files as output. As a learning project follows [Learn Haskell by building a blog generator](https://lhbg-book.link). 

## Requirement

This project is developed under GHC 9.4.4 on MacOS Ventura.

## Project Structure

```
├── hello.hs
├── Html.hs
├── Html
│   └── Internal.hs
└── README.md
```

## Usage

- Clone this project with `--depth 1`
- Edit `myhtml_` strtucture in `hello.hs`
- Compile the `hello.hs` with `ghc hello.hs`
- Or you can write your own `main.hs` and use built-in `render` function
- Run the binary file you compiled, and redirect the std output to a new file

#### Shell command

```shell
./hello > hello.html
```

## Example Input

```haskell
html = html_
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
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.