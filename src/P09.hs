-- Problem 09
-- (**) Pack consecutive duplicates of list elements into sublists.
module P09 where

pack :: (Eq a) => [a] -> [[a]]
pack x = pack' x []

pack' :: (Eq a) => [a] -> [[a]] -> [[a]]
pack' [] acc = acc
pack' (x:xs) acc = pack' b (acc ++ [x:a])
    where (a, b) = span ( == x) xs
