-- Problem 07
-- (**) Flatten a nested list structure.

data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (Elem a) = [a]
myFlatten (List a) = concatMap myFlatten a

