module Routes where

import Web.Scotty

routes :: ScottyM ()
routes = do
    get "/" $ html "<h1>Hello world!</h1>"
