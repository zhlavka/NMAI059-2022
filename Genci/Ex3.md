## Dáta

Budeme pracovať s datasetom USAccDeaths (nachádza sa defaultne v Rku). Zdroj dát si môžeme zobraziť v Rku pomocou príkazu `?USAccDeaths`. Dataset obsahuje údaje o počte neúmyselných úmrtí (nech tým autor chcel povedať čokoľvek) v USA za každý mesiac v rokoch 1973 - 1978.

**Dataset**
```
       Jan   Feb   Mar   Apr   May   Jun   Jul   Aug   Sep   Oct   Nov   Dec
1973  9007  8106  8928  9137 10017 10826 11317 10744  9713  9938  9161  8927
1974  7750  6981  8038  8422  8714  9512 10120  9823  8743  9129  8710  8680
1975  8162  7306  8124  7870  9387  9556 10093  9620  8285  8466  8160  8034
1976  7717  7461  7767  7925  8623  8945 10078  9179  8037  8488  7874  8647
1977  7792  6957  7726  8106  8890  9299 10625  9302  8314  8850  8265  8796
1978  7836  6892  7791  8192  9115  9434 10484  9827  9110  9070  8633  9240
```
## Hypotéza a jej testovanie - uprav na párový test

Budeme porovnávať počet úmrtí v roku 1974 a 1978. Rok 1974 je posledným (celým) rokom kedy ešte prebiehala vojna vo Vietname (skončila 30.4.1975). Zaujíma nás, či je priemerný počet úmrtí v roku 1978 vyšší ako v roku 1974, keďže množstvo vojakov sa vrátilo domov.

**Hypotézy**

*Nulová hypotéza*: Priemerný počet úmrtí v roku 1974 je (približne) rovnaký ako v roku 1978.

*Alternatívna hypotéza*: Priemerný počet úmrtí v roku 1978 je signifikantne vyšší ako v roku 1978.

**Metodológia**: Počet úmrtí budeme porovnávať pomocou jednostranného dvojvýberového testu s Welchovou korekciou na hladine 0.05.

**Výsledky**: Priemerný počet úmrtí medzi rokmi 1974 (priemer = 8718,5) a 1978 (priemer = 8802) sa signifikantne nelíši.



*Výstup testu*:
```
Welch Two Sample t-test

data:  r1 and r2
t = -0.21876, df = 21.704, p-value = 0.5856
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -739.3329       Inf
sample estimates:
mean of x mean of y 
   8718.5    8802.0 
```
