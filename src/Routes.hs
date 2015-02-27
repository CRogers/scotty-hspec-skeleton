{-# LANGUAGE OverloadedStrings #-}

module Routes where

import Data.Monoid ((<>))
import Web.Scotty

routes :: ScottyM ()
routes = do
    get "/" $ html "<h1>Hello world!</h1>"
    get "/echo/:foo" $ do
    	foo <- param "foo"
    	text $ "You said " <> foo