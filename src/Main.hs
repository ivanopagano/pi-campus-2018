module Main where
import Data.Number.CReal

main :: IO ()
main = return ()

{--
showCReal 1000 $ compute 1000
will work correctly to compute 1000 decimals 
 --}

a:: CReal -> CReal
a k = 4 / ((8 * k) + 1)

b:: CReal -> CReal
b k = 2 / ((8 * k) + 4)

c:: CReal -> CReal
c k = 1 / ((8 * k) + 5)

d:: CReal -> CReal
d k = 1 / ((8 * k) + 6)

factor :: CReal -> CReal
factor k = a k - b k - c k - d k

sum_factor :: Int -> CReal
sum_factor k = (factor $ fromIntegral k) / (16 ^ k)

compute :: Int -> CReal
compute n = sum $ take n $ map sum_factor [0..]