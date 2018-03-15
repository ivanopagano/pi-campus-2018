# pi-campus contest

This code was quickly put up to solve the Pi-Campus competition for March 2018 in Rome.

The requirement was to compute as many decimal digits as possible for the π constant, within a 30-minutes timeframe.

I barely sketched the code to make the computation and didn't submit any answer, but I spent some extra time later on to finish the job.

I am really impressed by the result of using `CReal` haskell arbitrary precision types, which actually was the real show-stopper for me, being 
yet unexperienced with real-life coding in haskell.

The current solution was tested to produce 1000 digits in less than a minute, but could be pushed on to produce more using more terms of the 
mathematical series to compute the number.

It's based on the [BBP formula](https://en.wikipedia.org/wiki/Bailey%E2%80%93Borwein%E2%80%93Plouffe_formula), though rather interesting solutions 
exists based on simpler and possibly faster decompositions using `arctan` functions.