Why Haskell?

I was instantly hooked into Haskell when I stumbled upon this piece of code:

> quicksort :: (Ord a) => [a] -> [a]
> quicksort [] = []
> quicksort (x:xs) =
>    let smallerSorted = quicksort [a | a <- xs, a <= x] 
>        biggerSorted = quicksort [a | a <- xs, a > x]
>    in  smallerSorted ++ [x] ++ biggerSorted

It is indeed not the most efficient implementation of a quicksort algorithm, but it is so terse while fully capturing the main idea of quicksort. I find it to be elegant.
