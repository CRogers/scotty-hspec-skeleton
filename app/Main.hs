module Main where

import Web.Scotty

import Routes (routes)

main :: IO ()
main = scotty 3000 routes
