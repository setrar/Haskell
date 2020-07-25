

> f :: Num a => a -> a
> f = (^2)

To apply the f variable to a richer type, we need to make that type an instance of the Functor class and use the fmap function:

-- fmap function Functor
fmap f (Just 5)
fmap (f . read) getLine
