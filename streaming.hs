import Data.List
import System.IO
import System.Process

main :: IO ()
main = do
   putStrLn "Do you have a mp4 file or stream url?"
   putStrLn "Enter 1 for MP4. Enter 2 for stream URL"
   streamType <- getLine
   putStrLn "Thank you for your input"
   if streamType == "1" then do 
      putStrLn "What is the location of the mp4 file"
      fileLocation <- getLine
      putStrLn ("The file is located in " ++ fileLocation )
   else
      putStrLn "URL"
   putStrLn "Were done here"
