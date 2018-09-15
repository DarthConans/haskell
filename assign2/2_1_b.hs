#!/usr/bin/env stack
-- stack --install-ghc runghc
-- | comment
my_append :: [a] -> [a] -> [a]
my_append xs ys = foldr (:) ys xs

main = do
       print(my_append ['a','b','c'] ['1','2','3'])