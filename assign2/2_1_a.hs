#!/usr/bin/env stack
-- stack --install-ghc runghc
f :: [[Int]] -> [[Int]]
f x = map(filter(even)) x
--2..sqrt(x)
main = do
       print(f [[3,2,4],[1]])
       print(f [[0,0,0],[3,9,10,5]])
       let a = f [[0,0,0],[3,9,10,5]]
       print(a)