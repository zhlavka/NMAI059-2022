## Konfidenčný interval pre pravdepodobnosť úspechu <br />

Hádzanie kockou v R: <br />
+ `dice = floor(runif(10, min=1, max=7))` <br />
+ `show = data.frame(dice)` <br />

Výsledok:
+ `2 2 6 3 1 2 5 5 4 6 `<br />

Pravdepodobnosť úspechu je teda 0.2.

Na základe [vzorca z prednášky](https://www.youtube.com/watch?v=C1sH4UVuYuk) dokážeme vypočítať konfidenčný interval so spoľahlivosťou 90% = (-0.01, 0.41):

+ `p <-0.2`
+ `low <- p - (1.645/sqrt(10))*sqrt(p*(1-p))`
+ `high <- p + (1.645/sqrt(10))*sqrt(p*(1-p))`

