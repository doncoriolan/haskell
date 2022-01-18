import Data.List
import System.IO
import System.Process
import Control.Monad.State.Lazy

main :: IO ()
main = do
    putStrLn "What stream would you like?"
    putStrLn "1)stream1.mp4  2)stream2.mp4  3)stream3.mp4  4)stream4.mp4  5)stream5.mp4"
    mp4Video <- getLine
    putStrLn "Thank you for choosing a stream."
    let action | mp4Video == "1" = void $ createProcess (proc "/usr/bin/ffprobe" ["-i", "/home/learning_haskell/video_files/stream1.mp4"])
               | mp4Video == "2" = void $ createProcess (proc "/usr/bin/ffprobe" ["-i", "/home/learning_haskell/video_files/stream2.mp4"])
               | mp4Video == "3" = void $ createProcess (proc "/usr/bin/ffprobe" ["-i", "/home/learning_haskell/video_files/stream3.mp4"])
               | otherwise = putStrLn "wrong option"
    action
