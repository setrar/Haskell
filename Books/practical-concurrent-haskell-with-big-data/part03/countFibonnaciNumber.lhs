

> import Control.Parallel


> countFibonnaciNumber :: Int -> Int
> countFibonnaciNumber number | number <= 1 = 1
>        | otherwise = par number1 (pseq number2 (number1 + number2 + 1))
>                      where number1 = countFibonnaciNumber (number-1)
>                            number2 = countFibonnaciNumber (number-2)
