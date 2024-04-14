import Data.List (sortBy)
import Data.Function (on)
-- Problem 28
-- Sorting a list of lists according to length of sublists.


lsort :: [[a]] -> [[a]]
lsort = sortBy (compare `on` length)
