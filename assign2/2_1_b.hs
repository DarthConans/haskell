#!/usr/bin/env stack
-- stack --install-ghc runghc
my_append :: [a] -> [a] -> [a]
my_append xs ys = foldr (:) ys xs

main = do
    print(my_append [1,5,7] [-1,-3,-5])