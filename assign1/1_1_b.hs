#!/usr/bin/env stack
-- stack --install-ghc runghc

f :: [Int] -> [Int]
f(x) = zipWith(*) [0..length(x)] x

main = do
       print (f[3,5,7])
       print (f[])
       print (f[1])