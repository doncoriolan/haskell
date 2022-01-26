import Data.List
import System.IO
import System.Process
import Control.Monad.State.Lazy

main :: IO ()
main = do
    putStrLn "Enter 1 for mp4 file. Enter 2 for stream URL"
    numPick <- getLine
    if numPick == "1" then do
         putStrLn "Enter File Location"
         fileLocation <- getLine
         void $ createProcess (proc "/usr/bin/ffmpeg" ["-i", fileLocation, "testing.mp4"])
         putStrLn "Thanks for entering File location"
    else do
         putStrLn "Were done"
         main
