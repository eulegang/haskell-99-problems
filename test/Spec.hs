import Test.Hspec

import List

main :: IO ()
main = hspec $ do
  context "first 10 questions" $ do
    describe "1) myLast" $ do
      it "last int" $ do
        List.myLast [1, 2, 3, 4] `shouldBe` Just 4
      it "last string" $ do
        List.myLast ['x', 'y', 'z'] `shouldBe` Just 'z'
      it "last nothing" $ do
        List.myLast [] `shouldBe` (Nothing :: Maybe Int)

    describe "2) myButLast" $ do
      it "butLast int" $ do
        List.myButLast [1, 2, 3, 4] `shouldBe` Just 3
      it "butLast One element" $ do
        List.myButLast [1] `shouldBe` Nothing
      it "butLast zero elements" $ do
        List.myButLast [] `shouldBe` (Nothing :: Maybe Int)
        
    describe "3) elementAt" $ do
      it "elementAt 2" $ do
        List.elementAt [1, 2, 3, 4] 2 `shouldBe` Just 3

      it "elementAt 0" $ do
        List.elementAt [1, 2, 3, 4] 0 `shouldBe` Just 1

      it "elementAt 10" $ do
        List.elementAt [1, 2, 3, 4] 10 `shouldBe` (Nothing :: Maybe Int)

    describe "4) myLength" $ do
      it "with 4" $ do
        List.myLength [1, 2, 3, 4] `shouldBe` 4
      it "with 2" $ do
        List.myLength [1, 2] `shouldBe` 2

    describe "5) myReverse" $ do
      it "..4" $ do
        List.myReverse [0, 1, 2, 3, 4] `shouldBe` [4, 3, 2, 1, 0]

