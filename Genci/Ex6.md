# Dáta

Opäť budeme pracovať s datasetom `Auto` z knižnice `ISLR`.

# Preprocessing dát

Chceme robiť logistickú regresiu, pričom závislá premenná bude počet valcov motora. Keď sa pozrieme na histogram jednotlivých hodnôt, najväčší zmysel dáva rozdelenie do skupín pre 3-5 valcov a 6-8 valcov. V tejto fáze ešte aj zahodíme názvy jednotlivých áut.

```R
library(ISLR)
data(Auto)
d = Auto
hist(d$cylinders)
d$cylinders[d$cylinders < 6] = 0
d$cylinders[d$cylinders > 5] = 1
d = d[,-9]
```

# Kontingenčná tabuľka

V našich dátach máme aktuálne dve fektorové premenné. Pozrime sa na ich závislosť:

```
table(d$cylinders,d$origin)
   
      1   2   3
  0  69  64  73
  1 176   4   6
```

Už teraz vidíme, že o nezávislosti môžeme tak maximálne snívať, no pre istotu urobíme aj Pearsonov Chi-squared test. Dopadol takto:

```
Pearson's Chi-squared test

data:  d$cylinders and d$origin
X-squared = 155.88, df = 2, p-value < 2.2e-16
```

Nezávislosť teda zamietame.

# Logistická regresia

Pozrieme sa samostatne na súvis počtu valcov na váhe auta a jeho konskej sile.
