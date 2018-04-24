module Church where

import Main (constant)


flip' f x y = f y x
-- flip' f = \x y -> f y x




--numbers
-- zero f x = x
zero = flip' constant

-- one f x = f x
one = ($)

-- two f x = f (f x)
two f x = f $ f x


--inc one = \f x -> f (one f x)
-- inc n = \f x -> f (n f x) --n + 1
inc n f x = f (n f x)

-- coder / decoder
-- church 0 _ x =  x
-- church 0 f x = zero f x
-- church n f x = \f x -> f $ church (n - 1) f x

unchurch n = n (+ 1) 0
