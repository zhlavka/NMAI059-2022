## Dáta

Budeme používať dataset Auto z knižnice ISLR. Podrobnosti o tomto datasete sa dočítate napríklad [tu](https://rdrr.io/cran/ISLR/man/Auto.html).

## Lineárna regresia

Budeme predikovať parameter *mpg* (miles per gallon). Zároveň pridáme parameter *forigin*, ktorý bude faktorom numerického parametra *origin* (predpokladáme, že ako faktor bude tento parameter významnejší). Začneme s modelom, ktorý bude využívať všetky parametre okrem *name* a pomocou funkcie `stepAIC()` následne získame optimálny model. Dostávame:

```R
d = Auto
d$forigin = factor(d$origin, levels=1:3, labels=c("American", "European", "Japanese"))
BiggestReg = lm(mpg ~ . - name, data = d)
stepAIC(BiggestReg, direction = "both")

# Best model
Call:
lm(formula = mpg ~ cylinders + displacement + horsepower + weight + 
    year + forigin, data = d)

Coefficients:
    (Intercept)        cylinders     displacement       horsepower           weight             year  foriginEuropean  
      -16.33231         -0.50277          0.02337         -0.02500         -0.00646          0.77388          2.63452  
foriginJapanese  
        2.85736
```

Optimálny model teda nevyužíva parameter *acceleration* a používa faktorový typ parametra *origin*. Grafické znázornenie vynecháme.
