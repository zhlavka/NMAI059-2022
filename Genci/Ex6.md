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

Pozrieme sa samostatne na súvis počtu valcov na váhe auta a jeho konskej sile. Interpetácia však nie je jednoduchá, keďže náš faktor je umelo vytvorený a používame spojité nezávislé premenné.

```R
# cylinder ~ weight

a = mean(d$weight)
m1 = glm(cylinders ~ I(weight-a), data = d, family = binomial)
summary(m1)

Deviance Residuals: 
     Min        1Q    Median        3Q       Max  
-2.92471  -0.16679  -0.03795   0.08686   2.41961  

Coefficients:
               Estimate Std. Error z value Pr(>|z|)    
(Intercept)   0.5374623  0.2391378   2.248   0.0246 *  
I(weight - a) 0.0067441  0.0008103   8.323   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 542.41  on 391  degrees of freedom
Residual deviance: 138.30  on 390  degrees of freedom
AIC: 142.3

Number of Fisher Scoring iterations: 7
```

Šanca, že auto s priemernou hmotnosťou má viac ako 5 valcov je `exp(0.5374623) = 1.711658` pre auto s priemernou hmotnoťou. S každou librou hmotnosti navyše sa táto šanca zvýši o `exp(0.0067441) = 1.006767`.

```r
b = mean(d$horsepower)
m2 = glm(cylinders ~ I(horsepower-b), data = d, family = binomial)
summary(m2)

Deviance Residuals: 
     Min        1Q    Median        3Q       Max  
-2.10355  -0.45914  -0.09449   0.13617   2.49543  

Coefficients:
                  Estimate Std. Error z value Pr(>|z|)    
(Intercept)        0.83174    0.22059   3.770 0.000163 ***
I(horsepower - b)  0.12011    0.01379   8.709  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 542.41  on 391  degrees of freedom
Residual deviance: 234.27  on 390  degrees of freedom
AIC: 238.27

Number of Fisher Scoring iterations: 7
```

Šanca, že auto s priemernou konskou silou má viac ako 5 valcov je `exp(0.83174) = 2.297313` pre auto s priemernou hmotnoťou. S každou jednotkou konskej sily (vraj cca 735 W) navyše sa táto šanca zvýši o `exp(0.12011) = 1.127621`.
