import Data.List
import System.IO
import System.Process
import Control.Monad.State.Lazy

main :: IO ()
main = do
    putStrLn "Pick a number?"
    putStrLn "From 1-5"
    numPick <- getLine
    putStrLn "Thank you for choosing a number."
    if numPick == "1" then  -- also fixed "1", because `getLine` returns String
       void $ createProcess (proc "/usr/bin/ls" [])
    else
       putStrLn "Do nothing"
    putStrLn "Were done here"
