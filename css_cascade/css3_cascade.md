# CSS Cascade

The process of combining several styles and resolving conflicts between them.

## Specificity

Scale : 1, 10, 100, 1000

> Element Selector 0,0,0,1

> Class Selector 0,0,1,0

> ID Selector 0,1,0,0

> Inline Style 1,0,0,0

> [Note] *, >, +, ~ combinators and :not() which is  one of the Pseudo Class don't have any influence on the specificity

> [Example]
> *                                 -- 0000
> a                                 -- 0001
> a.link                            -- 0011
> li:nth-child(2) a:hover           -- 0022
> :nth-child(2), :hover -> class 20 / li, a -> element 2
> .nav:nth-child(2) a:hover         -- 0031
> #outer a                          -- 0101
> #outer #inner a                   -- 0201
> style="color: tan"                -- 1000
>                                   -- !important

