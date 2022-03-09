Budeme hádzať osemstenom, pričom pravdpeodobnosť hodu je 0.1 pre čísla 1 - 7 a 0.3 pre číslo 8. Samozrejme, budeme odhadovať pravdepodobnosť toho, že hodíme číslo 8. Pre náhodný výber veľkosti 500 sme dostali takéto hodnoty:

```
n = 500
throws = sample(1:8, size=n, replace=TRUE, prob=c(rep(0.1,7),0.3))
table(throws)

throws
  1   2   3   4   5   6   7   8 
 46  37  47  48  44  44  63 171
```

Už na prvý pohľad vidieť, že číslo 7 padlo relatívne veľakrát. Uvidíme však, čo nám povie konfidenčný interval.

Odhad 
