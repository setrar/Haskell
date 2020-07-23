
Syntactic Sugar: https://en.wikibooks.org/wiki/Haskell/Syntactic_sugar

> blockyDo xs ys = do
>    x <- xs
>    y <- ys
>    return (x, y)


> blockyPlain xs ys =
>   xs >>=
>   \x -> ys >>=
>   \y -> return (x, y)

> blockyPlain_reloaded xs ys =
>    concat (map (\x ->
>                 concat (map (\y ->
>                              return (x, y))
>                         ys))
>            xs)
