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

