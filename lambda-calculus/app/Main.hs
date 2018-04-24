module Main where

--import Lib

mul = \a b -> a * b

identity' = \x -> x


--SKI basis
identity x = x -- I combinator
constant x y = x -- K combinator
-- s x y z = x z (y z)
s f g x = f x (g x) -- S combinator
--s f g x = f x $ g x -- S combinator

apply f x = f x


-- f . g => f(g(x))
-- var compose = f => g => x => f(g(x))
--compose f g = \x -> f(g x)
compose f g x = f (g x)



main :: IO ()
main = putStrLn "Hello, world"