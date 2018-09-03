#!/usr/bin/env stack
-- stack --install-ghc runghc
-- | comment
quadsolns :: Float -> Float -> Float -> [Float]
quadsolns a b c =
         if ((b * b) - (4 * a * c)) < 0
            then []
         else
            [(-b + sqrt((b * b) - (4 * a * c)))/(2*a) , (-b - sqrt((b * b) - (4 * a * c)))/(2*a)  ]

main = do
       print (quadsolns 1 2 (-4))
       print (quadsolns 1 4 10)
       print (quadsolns 2 (-5) 3)