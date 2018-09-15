#!/usr/bin/env stack
-- stack --install-ghc runghc
allEven :: [Int] -> Bool
allEven [] = True
allEven(x:xs) = ((x `mod` 2) == 0) && allEven(xs)

-- if(x `mod` 2 == 0) then allEven(xs) else False
-- 

main = do
       print (allEven [1,3,5,8,6])
       print (allEven [2])
       print (allEven[2,4,6,0])