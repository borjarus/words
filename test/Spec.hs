import Test.Hspec
import Lib
import Data


main :: IO ()
main = hspec $ do
    describe "formatGrid" $ do
        it "Should concatenate every line wit newline" $ do
            (formatGrid ["abc", "def", "ghi"]) `shouldBe` "abc\ndef\nghi\n"

    describe "findWord" $ do
        it "Should find word that exist on the Grid" $ do
            findWord grid "HASKELL" `shouldBe` Just "HASKELL"
            findWord grid "PERL" `shouldBe` Just "PERL"
        it "Should not find word that don't exist on the Grid" $ do
            findWord grid "HAMSTER" `shouldBe` Nothing

    describe "findWords" $ do 
        it "Should find all the word that exist on the Grid" $ do 
            findWords grid languages `shouldBe` languages
        it "Should not find words that don't exist on the Grid" $ do 
            findWords grid ["FRENCH", "GERMAN","ENGLISH"] `shouldBe` []