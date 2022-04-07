module List (
myLast,
myButLast
) where 

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast [x] = Just x
myLast (_:ls) = myLast ls

myButLast :: [a] -> Maybe a
myButLast [] = Nothing
myButLast (x:xs) = inner x xs
  where
    inner _ [] = Nothing
    inner a [b] = Just a
    inner _ (x:xs) = inner x xs

