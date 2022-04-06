import Test.Hspec

main :: IO ()
main = hspec $ do

  it "should work" $ do
    1 `shouldBe` 1
