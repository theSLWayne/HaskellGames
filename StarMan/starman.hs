-- Function for checking the player's guess.
-- Outcome is a boolean value.
-- I addition to that, the updated displayed string needs to be returned. (the displayed string is updated if the user's guess is correct.
--  the "-"'s are replaced with correct characters.)
-- Inputs to the checking function: 1. The secret word(String) 2. Current displayed string(String) 3. Character guessed by the user(Char)

check :: String -> String -> Char -> (Bool, String)
check word display c = (
  c `elem` word,
  [if x == c then c
    else y | (x,y) <- zip word display])

-- The next function is to handle the turn of the user to enter a new guess.
-- First, the number of guesses left is checked. If it is 0, then the game is over.
-- If there are any guesses left, whether the player has got the whole word correct or not is checked.
-- If both of those checks are okay, the player is given the chance to enter a new guess.

turn :: String -> String -> Int -> IO ()
turn word display n =
  do if n == 0
      then putStrLn "You Lose."
      else if word == display
          then putStrLn ("Correct answer: " ++ word ++ "\nYou win!")
          else makeguess word display n

makeguess :: String -> String -> Int -> IO ()
makeguess word display n =
  do putStrLn (display ++ "  " ++ take n (repeat '*'))
     putStr "Enter your guess: "
     q <- getLine
     let (correct, display') = check word display (q!!0)
     let n' = if correct then n else n-1
     turn word display' n'


starman :: String -> Int -> IO ()
starman word n = turn word ['-' | x <- word] n
