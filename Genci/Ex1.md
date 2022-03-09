# Gamma rozdelenie

Generický text o rozdelení si môžete prečítať na [Wikipédii](https://en.wikipedia.org/wiki/Gamma_distribution). Zatiaľ stačí vedieť, že rozdelenie má dva parametre a dva rôzne spôsoby parametrizácie. My budeme pracovať s parametrami *shape* a *scale* (druhá možnosť je použiť *shape* a *rate*). 

## Hustota a distribučná funkcia

Najprv si nakreslíme distribučnú funkciu. Predpokladajme hustoty s týmito parametrami:
```
x = seq(0,10, by=0.1)
plot(x,dgamma(x,shape=1,rate=2),type="l",col="red")
lines(x,dgamma(x,shape=2,rate=2),col="orange")
lines(x,dgamma(x,shape=3,rate=2),col="yellow")
lines(x,dgamma(x,shape=5,rate=1),col="green")
lines(x,dgamma(x,shape=9,rate=0.5),col="black")
lines(x,dgamma(x,shape=7.5,rate=1),col="blue")
```
Dostávame tento obrázok:

![Hustota](Pictures/E01P01.png)
