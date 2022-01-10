import Data.List
import System.IO
import System.Process

ffmpeg :: IO ()
ffmpeg = do
  putStrLn "What is the url?"
  urlforFfmpeg <- getLine
  fp <- createProcess (proc "/usr/bin/ffprobe" ["-i", urlforFfmpeg])
  putStrLn "FFPROBE finished"
