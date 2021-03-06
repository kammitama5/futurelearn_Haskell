Find the course [here](https://www.futurelearn.com/courses/functional-programming-haskell/)

## Terms

- synctactic sugar 
- Church-Rosser theorem
- Reduction

- Concatenating an empty list is a no-op conceptually
  - eg. ```[]++xs == xs++[]``` evaluates to ```True```

# futurelearn_Haskell
Exercises from Future Learn's Haskell Course

## Reduction

- converting an expression to a simpler form 

  - eg. ((a + b) + (c + d)) -> multiple reduction paths
  
- evaluate a + b or c+ d first, then eval rest of expression


- Church-Rosser theorem
  - Correctness doesn't depend on order of evaluation
  - Compiler can change the order to improve upon performance, without affecting result


## List comprehensions 

- ```[5*x | x <- [1..5]]``` gives ```[5, 10..25]```

## Indexing list

Use ```!!!```
eg. ```[1,2,3,5] !! 3``` returns 5.


## Head, tail

- Head and tail of empty list is an exception 

```
head :: [a] -> a 
head [1,2,3]
```
- returns 1 (translate: from a list, return first element)
- tail returns other elements that are not head

```
add3nums x y z = x + y + z 
10 + 4* add3nums 1 2 3
```
- gives 34 because (1+2+3=6 -> x 4 = 24 + 10 = 34)

```
(\x -> x + 1) 4
```
- gives 5 because 4 + 1 = 5

## This is just beautiful!

- this function returns the sum and product in a list

```
definition
sumprod = \ x y -> [x+y,x*y] 
input 
sumprod 3 8 returns [11, 24]
```

## Append

```
23 : [48, 41, 44]
returns [23, 48, 41, 44]
```

## Boolean

```
\= is not equal
```

```
[(x,y) | x<-[False, True], y<-[False, True]]
gives [(False,False),(False,True),(True,False),(True,True)]
```

## Is in List (elem)

``` `elem` ```

## Zip (Interleave?) and Zip3

```
zip [1,3,5] [2,4,6]
gives [(1,2),(3,4),(5,6)]
```

```
zip3 [1,2,3] [1,2,3] [1,2,3]
gives [(1,1,1), (2,2,2), (3,3,3)]
```

## IO Monad

- sequencing is vital for IO
- ```do``` is syntactic sugar
- ```bind``` is part of the IO Monad
- use ```<-``` inside a ```do``` to associate input values with names

```
output -> putStrLn
```

```
input -> getLine
```

- ask user for input and return output

```
do { putStrLn "what is your name?"; x <- getLine; putStrLn ("hello " ++ x) }
```


