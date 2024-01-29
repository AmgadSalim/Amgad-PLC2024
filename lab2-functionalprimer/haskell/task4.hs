ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask prompt
    else if line == "Quit"
      then putStrLn("quitting...")
    else putStrLn ("you said: " ++ reverse line)
  

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt
