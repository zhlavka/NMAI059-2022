Budeme hádzať osemstenom, pričom pravdpeodobnosť hodu je 0.1 pre čísla 1 - 7 a 0.3 pre číslo 8. Simulujme 500 hodov:

```
n = 500
throws = sample(1:8, size=n, replace=TRUE, prob=c(rep(0.1,7),0.3))
table(throws)

throws
  1   2   3   4   5   6   7   8 
 46  37  47  48  44  44  63 171
```

Považujme za úspešný hod taký, ktorého výslekdom je číslo 8. Ide vlastne o binomické rozdlenie s parametrom `p = 0.3`. Vieme, že náhodný výber veľkosti 500 z tohto rozdelenia má strednú hodnotu 0.3 a rozptyl 0,00042. Ako odhad úspešnosti zvolíme relatívnu početnosť hodu čísla 8, teda 171/500 (= 0.342). Zo vzorcov z prednášky potom dostávame konfidenčný interval (0.3018, 0.3821), ktorý sme spočítali ako `0.342 +- qnorm(0.975)*sqrt(0.3*0.7)/sqrt(500)`
