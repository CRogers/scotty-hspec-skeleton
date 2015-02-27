module Foo.BarSpec where

import Test.Hspec

import Bar

spec :: Spec
spec = do
    describe "Bar" $ do
        it "hopefullyTrue should equal True" $ do
            hopefullyTrue `shouldBe` True
