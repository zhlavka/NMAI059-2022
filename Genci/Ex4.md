## Základné informácie o použitom datasete

Použil som Raisin dataset z [tejto](https://www.muratkoklu.com/datasets/) stránky. Je potrebné zmeniť desatinné čiarky na bodky a potom to naloadovať do Rka.

Dáta obsahujú údaje o 900 sušených hrozienkach dvoch druhov. Jednotlivé atribúty sú *Area*, *MajorAxisLength*, *MinorAxisLength*, *Eccentricity*, *ConvexArea*, *Extent* a *Perimeter* (predstavte si hrozienko, je celkom jasné čo znamenajú). Keď si dáta vykreslíme pomocou príkazu `plot(raisin_data[,1:7])` dostávame takéto grafy (po dvoch atribútoch):

![Grafy](Pictures/E04P01.png)


## PCA

PCA budeme robiť na škálovaných dátach, kedže niektoré hodnoty sú udávané v centimetroch, niektoré v milimetroch štvrocových a podobne. Ako výsledok dostávame:

```
Importance of components:
                          PC1    PC2     PC3     PC4     PC5     PC6     PC7
Standard deviation     2.1982 1.2055 0.79275 0.23838 0.14768 0.08019 0.03179
Proportion of Variance 0.6903 0.2076 0.08978 0.00812 0.00312 0.00092 0.00014
Cumulative Proportion  0.6903 0.8979 0.98770 0.99582 0.99894 0.99986 1.00000
```

Vidíme, že za 98% rozpytu v našich dátach zodpovedajú iba prvé tri komponenty. Na obrázku nižšie môžeme vidieť, ktoré to sú.

![PCA](Pictures/E04P02.png)
