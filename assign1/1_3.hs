#!/usr/bin/env stack
-- stack --install-ghc runghc
-- | comment
isPrime :: Int -> Bool
isPrime 1 = False
isPrime x = length(filter(==0) (map (x `mod` ) [2..(x-1)])) == 0

main = do
       print (isPrime 3)
       print (isPrime 7)
       print (isPrime 8)
       print (filter(isPrime) [1..30])
       let a = filter(isPrime) [1..]
       print "Whatever"
       print a