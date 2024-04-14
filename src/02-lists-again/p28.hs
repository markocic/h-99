import Data.List (sortBy, groupBy)
import Data.Function (on)
-- Problem 28
-- Sorting a list of lists according to length of sublists.


{- a) We suppose that a list contains elements that are lists themselves. 
 - The objective is to sort the elements of this list according to their
 - length. E.g. short lists first, longer lists later, or vice versa.
-}

lsort :: [[a]] -> [[a]]
lsort = sortBy (compare `on` length)

{- 
 - b) Again, we suppose that a list contains elements that are lists 
 - themselves. But this time the objective is to sort the elements of this 
 - list according to their length frequency; i.e., in the default, where 
 - sorting is done ascendingly, lists with rare lengths are placed first,
 - others with a more frequent length come later.
-}

lsort' :: [[a]] -> [[a]]
lsort' xs = concat . lsort $ groupBy grouping (lsort xs)
    where grouping :: [a] -> [a] -> Bool
          grouping x y = length x == length y

