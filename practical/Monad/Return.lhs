Prelude> :t return Nothing
return Nothing :: Monad m => m (Maybe a)

Prelude> :t return Just
return Just :: Monad m => m (a -> Maybe a)

Prelude> :t return Nothing
return Nothing :: Monad m => m (Maybe a)

Prelude> :t return 0
return 0 :: (Monad m, Num a) => m a

Prelude> :t return "toto"
return "toto" :: Monad m => m [Char]

Prelude> :t return []
return [] :: Monad m => m [a]

Prelude> :t return 'p'
return 'p' :: Monad m => m Char

Prelude> :t return ['p']
return ['p'] :: Monad m => m [Char]

> import Prelude
> import Control.Monad

> import Euterpea
