let a = repeat 'a'
take 3 a 

let fibs = 1:1:(zipWith (+) fibs (tail fibs))
take 8 fibs
-- returns [1,1,2,3,5,8,13,21]