{-# LANGUAGE OverloadedStrings #-}

module RoutesSpec where

import Network.Wai (Application)
import Web.Scotty (scottyApp)

import Test.Hspec
import Test.Hspec.Wai

import Routes

app :: IO Application
app = scottyApp routes

spec :: Spec
spec = with app $ do
	describe "Hello world" $ do
		it "should produce a 200 response code" $ do
			get "/" `shouldRespondWith` 200

	describe "Echo" $ do
		it "should echo back a word said to it" $ do
			get "/echo/foo" `shouldRespondWith` "You said foo"