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
