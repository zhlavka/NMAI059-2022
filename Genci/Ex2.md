Máme gamma rozdelenie, pričom zafixujeme parameter `scale = 2`.

```
set.seed(21)
x = rgamma(100, shape=2, scale=2)
mean(x)
[1] 4.008039

odhad = mean(x)^2/var(x)
odhad
[1] 1.925679
```
