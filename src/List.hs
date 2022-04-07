module List (
  myLast,
  myButLast,
  elementAt,
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

elementAt :: [a] -> Int -> Maybe a
elementAt (x:_) 0 = Just x
elementAt (_:xs) i = elementAt xs (i - 1)
elementAt [] _ = Nothing

