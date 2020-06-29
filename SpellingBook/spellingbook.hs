-- The speller function to return the created spelling book
speller :: [[Char]] -> [Char]
speller [] = ""
speller (x:xs) = init (init (([(head x)] ++ " is for " ++ x) ++ (if xs == [(last xs)] then ", and " ++ speller xs ++ "  "
  else ", " ++ speller xs)))
