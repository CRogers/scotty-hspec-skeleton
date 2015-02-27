{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty

main :: IO ()
main = scotty 3000 $ do
    get "/" $ html "<h1>Hello world!</h1>"
