Another advantage of static types is type inference. The compiler can tell you essential information needed to use an API. Let’s say we have the following function:

> traverse_ f = foldr ((*>) . f) (pure ())

It’s concise but a bit cryptic. How do you know what it takes as input and what it produces as output? GHCi will report this information:

 :t traverse_

traverse_  :: (Foldable t, Applicative f) => (a -> f b) -> t a -> f ()

Specialise it to concrete types, such as [] and IO, and you get a pretty decent description of how to use it:

 traverse_ :: (a -> IO b) -> [a] -> IO ()
 traverse_ f = foldr ((*>) . f) (pure ())

Even on an occasion when a Haskell library is poorly documented, it’s often possible to chase the types to figure out how to use it.


