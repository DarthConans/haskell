#!/usr/bin/env stack
-- stack --install-ghc runghc
{-| a) Defines a tree, which is either a
       leaf or a Node and two trees, which
       represent the connection between the
       node and its two children.
       A leaf or a node might be empty, but if it's not,
       they're all the same type
-}

data MTree a = MLeaf (Maybe a)
        | MNode (Maybe a) (MTree a) (MTree a)

mTreeMap :: (a -> b) -> MTree a -> MTree b
mTreeMap (function) tree = tree

-- | https://en.wikibooks.org/wiki/Haskell/Other_data_structures

