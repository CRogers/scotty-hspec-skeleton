# Scotty-Hspec Skeleton

## Getting started

Make sure you have GHC 7.8 and cabal.

1. Clone the repo
2. `cabal sandbox init` - Super important, if you don't do this first you may run into cabal problems.
3. `cabal update`
4. `cabal install --only-dependencies --enable-tests` - May takes some time at first.
5. `cabal build`

## Project Layout

* `src/` is where most of your code will live, such a routing and other logic. Technically it is a library.
* `test/` contains tests for `src` (and depends on the `src` library).
* `app/` produces an executable that runs your Scotty application (and depends on the `src` library).

## Ghci

To use ghci to get a repl, type `cabal repl`.

## Testing

Take a look inside test/ for examples. To run the tests, execute `./run_tests`. Alternatively, you can do `cabal test` but this will be slower.

You can also run the tests inside ghci - do `cabal repl hspec` and typing `:main`.

## Running the app

To compile and run the app, do `cabal run`. If this is too slow you can use `runhaskell` in a similar way to `./run_tests`.

You can also do this through ghci, by running `cabal repl your-app-name-here` and typing `:main`.

## Upgrading libraries

This uses `cabal freeze` to maintain a consistent set of libraries. To upgrade the libraries (if say this repo becomes out of date), simply delete `cabal.config`, `cabal install --only-dependencies --enable-tests` again  and run `cabal freeze`.
