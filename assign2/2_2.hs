#!/usr/bin/env stack
-- stack --install-ghc runghc
data MTree a = MLeaf (Maybe a)
        | MNode (Maybe a) (MTree a) (MTree a)
              deriving (Show)

mTreeMap :: (a -> b) -> MTree a -> MTree b
mTreeMap f (MLeaf Nothing)        = MLeaf Nothing
mTreeMap f (MLeaf (Just a))       = MLeaf (Just(f(a)))
mTreeMap f (MNode Nothing t1 t2)  = MNode Nothing (mTreeMap f t1) (mTreeMap f t2)
mTreeMap f (MNode (Just n) t1 t2) = MNode (Just(f(n))) (mTreeMap f t1) (mTreeMap f t2)

mTreeFilter :: (a -> Bool) -> MTree a -> MTree a
mTreeFilter f (MLeaf Nothing)  = MLeaf Nothing
mTreeFilter f (MLeaf (Just a)) = if f(a)
                                     then MLeaf(Just(a))
                                 else
                                     MLeaf(Nothing)
mTreeFilter f (MNode Nothing t1 t2) = MNode Nothing (mTreeFilter f t1) (mTreeFilter f t2)                                     
mTreeFilter f (MNode (Just a) t1 t2) = if f(a)
                                           then (MNode (Just(a)) (mTreeFilter f t1) (mTreeFilter f t2))
                                       else (MNode Nothing (mTreeFilter f t1) (mTreeFilter f t2))
main  =
   do
      let a = MNode Nothing (MNode (Just 3) (MLeaf (Just 2)) (MLeaf (Just 1))) (MNode (Just 2) (MLeaf (Just 3)) (MLeaf (Just 4)))
      print "a:"
      print a
      let b = mTreeMap (* 2) a
      print "b:"
      print (b)
      print "c:"
      let c = mTreeFilter(==2) a
      print (c)

