# -*- coding: utf-8 -*-

# -- Uvod-Priemery --

# # 📊 Kurz Jazyk R a Data Science II. Dáta, Grafy, Balíčky, Štatistika
# 
# **🧑‍🏫 Lektor:** Miroslav Reiter  
# **📥 LinkedIn kontakt:** https://www.linkedin.com/in/miroslav-reiter/  
# 
# **✅ Osnova:** https://itkurzy.sav.sk/node/162
# 
# **🎞️ YouTube videá:** https://www.youtube.com/c/IT-AcademySK  
# **📇 Zdrojové kódy a materiály:** https://github.com/miroslav-reiter/Kurzy_SAV_Analytika_Python_R  
# 
# **😊 Emojis:** Win + .  
# **🔖 MarkDown Dokumentácia:** https://www.markdownguide.org/getting-started/


# # 🆘 Markdown a R-Markdown
# Jednoduchý **značkovací jazyk**, ktorý slúži na **úpravu jednoduchého textu** a jeho následný **prevod na formátovaný text** publikovateľný na webe, najmä vo **formáte HTML**. Umožňuje pomocou jednoduchých formátovacích značiek vyznačiť v texte nadpisy a zoznamy, doplniť odkazy, obrázky atď. 
# 
# Cieľom jazyka je, aby bol **text dobre čitateľný** a **publikovateľný** aj v pôvodnom formáte jednoduchého textu.
# 
# ```markdown
# # (Znak Mriežky/Hashes) - Nadpisy (Heading) - Ctrl + [
# ```
# # (Znak Mriežky/Hashes) - Nadpisy (Heading) 
# 
# ```markdown
# # Hlavný Nadpis - Nadpis 1. úrovne H1
# ```
# # Hlavný Nadpis - Nadpis 1. úrovne H1
# ```markdown
# 
# ## Podnadpis - Nadpis 2. úrovne H2
# ```
# ## Podnadpis - Nadpis 2. úrovne H2
# ```markdown
# 
# ## Podpodnadpis - Nadpis 3. úrovne H3
# ```
# ## Podpodnadpis - Nadpis 3. úrovne H3
# 
# ```markdown
# **Tučný Text** (Znak 2x Hiezdička/Asterisk) - Tučný Text (Bold) - Ctrl + B
# ```
# **Tučný Text** (Znak 2x Hiezdička/Asterisk) - Tučný Text (Bold)
# 
# ```markdown
# *Kurzíva Text* (Znak 1x Hiezdička/Asterisk) - Kurzíva Text (Italics) - Ctrl + I
# ```
# *Kurzíva Text* (Znak 1x Hiezdička/Asterisk) - Kurzíva Text (Italics)  
# 
# ```markdown
# ~~Prečiarknutý Text~~ (Znak 2x Vlnovka/Tilde) - Prečiarknutý Text (Strike) - Alt + S
# ```
# ~~Prečiarknutý Text~~ (Znak 2x Vlnovka/Tilde) - Prečiarknutý Text (Strike) - Alt + S
# 
# 
# ```markdown
# - Priemer
# - Medián
# - Modus
# ```
# Nečíslovaný Zoznam (Unordered list UL) - Ctrl + l
# - Priemer
# - Medián
# - Modus
# 
# ```markdown
# - Priemer
# - Medián
# - Modus
# ```
# Číslovaný Zoznam (Ordered list OL) 
# 1. Aritmetický Priemer
# 2. Harmonický Priemer
# 3. Geometrický Priemer
# 
# ```{r echo=T}
# 5+6
# 5*6/7*8
# (5*6)/7*8
# ```


# # 🔥 Aritmetický (Nevážený) Priemer 




# Equivalent

# Vector s NA


# Odstranenie NA hodnot

# # ✅ Aritmetický Trimovaný/Skrátený Priemer v R


# Vzorka vektora


# Arithmeticky priemer


# Arithmeticky priemer skrateny o 10%
# (odstráni prvý a posledný prvok v tomto príklade)

# # 🏫 Aritmetický (Vážený) Priemer 


# Sample vector

# Weights (should sum up to 1)


# Weighted mean

# # 📐 Geometrický Priemer v R
# - Je vždy **menší** alebo **rovný** ako **aritmetický priemer** rovnakého súboru dát (a rovná sa mu iba v prípade, ak sú všetky hodnoty v súbore rovnaké).
# - Je zrejmé, že geometrický priemer má zmysel iba pre dáta, v ktorých sú všetky hodnoty **kladné čísla**
# - To umožňuje definovať aritmeticko-geometrický priemer, ktorý vždy leží medzi aritmetickým a geometrickým priemerom
# - Geometrický priemer je **n-tá odmocnina súčinu prvkov** vektora 
# - Na jej výpočet môžete použiť funkcie exp, mean a log alebo použiť funkciu geometric.mean z psych, ktorá v prípade potreby obsahuje argument na.rm
# 
# ## 🧰 Použitie
# - Geometrický priemer sa na rozdiel od aritmetického priemeru používa na koeficienty, napr. na výpočet priemerného rastu: ak rast cien bol postupne 20 %, 10 %, potom 15 % pokles a 10 % rast, tak priemerný rast sa rovná (1,20 · 1,10 · 0,85 · 1,10)1/4 ≅ 1,054, 
# - čiže priemerný rast je približne 5,4 %. Toto číslo vyjadruje, že výsledná cena by bola taká istá aj v prípade, ak by rast bol konštantný, každý rok 5,4 % (lebo 1,0544 ≅ 1,2 · 1,1 · 0,85 · 1,1).


# Sample vector


# Geometric mean


 # Alternative (which includes the na.rm argument)

# # 🧑‍💼 Harmonický Priemer
# - Harmonický priemer (vždy z nenulových a kladných hodnôt) je definovaný ako podiel počtu meraní a sumy prevrátených hodnôt
# 
# ## 🧰 Použitie
# - Na charakterizovanie hodnôt, ktoré predstavujú napríklad **výkonové limity**
# - Teda **dosiahnuť u každej osoby ten istý výkon pri rôznom čase** alebo **rôzny výkon za jednotku času** (1. osoba urobí prácu za hod, teda jej hodinový výkon je, …,atď.) 
# - Tiež sa používa na **výpočet priemernej rýchlosti**, ak sú **vzdialenosti konštantné** a **čas premenlivý**. 
# - V prípade rôznych vzdialeností a rovnakých časov sa však musí použiť aritmetický priemer.


 

# iris

# # 📳 Modus (Mode)
# 


 

# ### Vlastná Funkcia Modus


 

# -- Balicky --

# # 📦 Balíčky a ich Prehľad


# Zoznam nainštalovaných balíčkov

# Zoznam Starých Balíčkov

# Aktualizácie Balíčkov

# Pomocník a Help
# dplyr
# yarrr 
    

 

# Inštalácia Balíčkov z Adresára v PC/Servery

# Hromadná Inštalácia Balíčkov

# # 🐙 Jazyk R a GitHub


# Podpora Inštalácie balíčkov z GitHubu

 # Inštalácia ggplot2 z GitHubu

# # 🆘 Pomocník a Zoznam Funkcií v balíku R


# Zoznam funkcií v balíku R


# Používanie Balíčkov a Pipes

# # 🔎 Zoznam Stĺpcov/Premenných Datasetu a ich Zobrazenie


# Data o piratoch

# V R existuje jeden spôsob, ako dočasne načítať balík bez použitia funkcie library(). 
# Na to môžete jednoducho použiť notačný balík::function notation
# Tento zápis jednoducho povie R, aby načítal balík len pre tento jeden kus kódu


 #install.packages("RColorBrewer")


# -- Datumy --

# # 📆 Dátumy (Dates)




# # 🧾 Formátovanie Dátumov






# -- Sapply-Priemery-Agregacia --

# # 🐋 Sapply a Agregácia


# ?USArrests
# USArrests obsahuje štatistiky v zatknutí na 100 000 obyvateľov za napadnutie, vraždu a znásilnenie v každom z 50 štátov USA v roku 1973. 
# Uvádza sa aj percento populácie žijúcej v mestských oblastiach.


# Určíme priemery jednotlivých premenných/stlpcov


# Bez chýbajúcich hodnôt



#install.packages("Hmisc")

# Data o piratoch
#install.packages('yarrr')
library(yarrr)
#?pirates
#pirates
# Ake su nazvy/mena stlpcov/premennych


# Maticove/Tabulkove zobrazenie

# Aky je priemerny vek piratov?


# Aký bol najvyšší pirát?


# Koľko je pirátov z každého pohlavia?

# Vypočítajte priemerný vek, zvlášť pre každé pohlavie
# prvy parameter x bol predtym formula pozri dokumentaciu a chybove hlaska



# -- Deskriptivna-Statistika --

# # 📊 Deskriptívna (Opisná) Štatistika


# ## 💣 Dáta o Zločinosti


# Min, 1st Quartile, Median, Mean, 3rd Quartile, Max

#install.packages("Hmisc")
#  4  Variables      50  Observations
# n  missing distinct     Info     Mean      Gmd      .05      .10  .25      .50      .75      .90      .95
# 5 lowest  and 5 highest values

#?fivenum
# Tukey's five number summary (minimum, lower-hinge, median, upper-hinge, maximum

# install.packages("pastecs")

# install.packages("psych")

# -- Frekvencne-Tabulky --

# # 🎨 Frekvenčné Tabuľky


# ## 🧃 Kvalitatívne Dáta (Kategoriálne Dáta)
# - Vzorka údajov sa nazýva kvalitatívna, známa aj ako kategorická, ak jej hodnoty patria do súboru známych definovaných neprekrývajúcich sa tried
# - Bežné príklady zahŕňajú študentskú známku (A, B, C, D alebo F), rating komerčných dlhopisov (AAA, AAB, ...) a veľkosti topánok spotrebného oblečenia (1, 2, 3, ...)
# - Príklady sú založené na vstavanom dátovom rámci R s názvom painters
# - Je to súhrn technických informácií niekoľkých klasických maliarov 18. storočia
# - Súbor údajov patrí do balíka MASS a pred použitím sa musí vopred načítať do pracovného priestoru R
# 
# https://www.r-tutor.com/elementary-statistics/interval-estimation/interval-estimate-population-mean-known-variance
#   


 #library(MASS)




# # Frekvenčné tabuľky
# Distribúcia početnosti/frekvencie dátovej premennej je súhrnom výskytu dát v kolekcii neprekrývajúcich sa kategórií.
# 
# ## 🧰 Príklad
# V súbore údajov maliari je frekvenčné rozdelenie premennej Škola súhrnom počtu maliarov v každej škole.
# 
# ## 🤔 Problém
# Nájdite rozdelenie početností/frekvencií maliarskych škôl v súbore údajov maliari.
# 
# ## 💡 Riešenie
# Tabuľkovú funkciu použijeme na výpočet frekvenčného rozdelenia premennej Škola.


#library(MASS)                 

# -- Grafy --

# # 📊📈 Grafy (Charts)


x <- c(0.103, 0.528, 0.221, 0.260, 0.091,
            1.314, 1.732, 0.244, 1.981, 0.273,
            0.461, 0.366, 1.407, 0.079, 2.266)

# Histogram of the data

x <- rnorm(500)

set.seed(1)
x <- rnorm(500)

set.seed(1)


# Create scatterplot

# Create scatterplot

# Create scatterplot
#install.packages("yarrr")
library("yarrr")

# Create a linear regression model

#pirateplot

# pirateplot pony

# Show me the pony palette!

# Show me the xmen palette!

# Permutacie s opakovanim/replace True
# od 0 do 10 - 500x opakovanie
x <- sample(0:10,500,replace=TRUE)
x
boxplot(x,horizontal=TRUE) 
text(x=fivenum(x),labels=fivenum(x),y=1.25)

teploty_f1 = c(57, 57, 57, 58, 63, 66, 66, 67, 67, 68, 69, 70, 70, 70, 70, 72, 73, 75, 75, 76, 76, 78, 79, 81)

boxplot(teploty_f1, horizontal=TRUE, axes = FALSE, staplewex = 1)
text(x=fivenum(teploty_f1),labels=fivenum(teploty_f1),y=1.25)

teploty_f1 = c(57, 57, 57, 58, 63, 66, 66, 67, 67, 68, 69, 70, 70, 70, 70, 72, 73, 75, 75, 76, 76, 78, 79, 81)

boxplot(teploty_f1, horizontal=TRUE, axes = FALSE, staplewex = 1)
text(x = boxplot.stats(teploty_f1)$stats, labels = boxplot.stats(teploty_f1)$stats, y = 1.25)

summary(teploty_f1)

teploty_f1 = c(57, 57, 57, 58, 63, 66, 66, 67, 67, 68, 69, 70, 70, 70, 70, 72, 73, 75, 75, 76, 76, 78, 79, 81)

boxplot(teploty_f1, axes = FALSE, staplewex = 1)
text(y = boxplot.stats(teploty_f1)$stats, labels = boxplot.stats(teploty_f1)$stats, x = 1.25)

# Teploty bez outliers (odľahlé/extrémne hodnoty)
teploty_f1 = c(57, 57, 57, 58, 63, 66, 66, 67, 67, 68, 69, 70, 70, 70, 70, 72, 73, 75, 75, 76, 76, 78, 79, 81)

teploty_C1 <- as.integer(round((teploty_f1-32)/1.8))

teploty_C1

# Teploty s outliers (odľahlé/extrémne hodnoty)
# Zmenila sa prva a posledna hodnota (z 57 na 52 a z 81 na 89)
teploty_f2 = c(52, 57, 57, 58, 63, 66, 66, 67, 67, 68, 69, 70, 70, 70, 70, 72, 73, 75, 75, 76, 76, 78, 79, 89)

boxplot(teploty_f2, horizontal=TRUE, axes = FALSE, staplewex = 1)
text(x = boxplot.stats(teploty_f2)$stats, labels = boxplot.stats(teploty_f2)$stats, y = 1.25)

summary(teploty_f2)

y<-rpois(5000,10)
boxplot(y,horizontal=TRUE)
text(x=fivenum(y),labels=fivenum(y),y=1.25)

# -- t-test --

# # 🧪 T-test
# * Metóda matematickej štatistiky
# 
# ## 🧰 Použitie
# V praxi sa t-test často používa na **porovnanie**, či sa **výsledky meraní** na **1. skupine významne líšia** od **výsledkov meraní na 2. skupine**.
# 
# Umožňuje **overiť** niektorú z nasledujúcich **hypotéz**:  
# * H1.  či **1 normálne rozdeleni**e, z ktorého pochádza **určitý náhodný výber**, má **určitú konkrétnu strednú hodnotu/medián**, pričom **rozptyl/variancia je neznámy/a**  
#     * 🕺 v tomto prípade môže byť náhodný výber tvorený buď jednotlivými hodnotami --> **jednovýberový t-test** 
#     * 👭 alebo dvojicami hodnôt, pri ktorých sa skúmajú ich rozdiely --> **párový t-test**      
# * 👯 H2. či **2 normálne rozdelenia** majúce **rovnaký (hoci neznámy) rozptyl**, z ktorých pochádzajú 2 nezávislé náhodné výbery, **majú rovnaké stredné hodnoty/mediány** resp. **rozdiel týchto stredných hodnôt/mediánov** je **rovný určitému danému číslu** --> **dvojvýberový t-test**
# 
# ## 🤔 Princíp (Ako to funguje)
# 1. Ak **náhodný výber** pochádza z **normálneho rozdelenia**, potom **výberový priemer/mean** má aj **normálne rozdelenie** s **rovnakou strednou hodnotou/mediánom**
# 2. **Rozdiel výberového priemeru** a **strednej hodnoty** **normovaný pomocou skutočného rozptylu** by potom mal **normálne rozdelenie** s **nulovou strednou hodnotou** a **jednotkovým rozptylom**. 
# 3. **Skutočný rozptyl** však **nie je známy**. 
# 4. Ak je nahradený odhadom pomocou výberového rozptylu, vznikne **T rozdelenie**, ktoré s **rastúcim počtom stupňov voľnosti** **konverguje (približuje sa/zbieha) na normálne rozdelenie**.


# # 🧪 1-výberovy t-test (One Sample t-test)


# ## 👨‍🏫 Interpretácia t-testu
# 1. **Testová štatistika t** teda **nadobúda hodnoty -3,1834** pri **9. stupňoch voľnosti** 
# 2. Počet stupňov voľnosti df je v tomto teste o 1 nižšiu ako počet meraní N (df = N - 1)
# 3. Zodpovedajúca **p-hodnota je 0,01112**, čo je **menšie ako 0,05** a tak môžeme **0 hypotézu na zadanej hladine významnosti zamietnuť**
# 4. Môžeme povedať, že **stredná hodnota/medián výšky mužov kmeňa Apačov nie je 175 cm**, ale zrejme o niečo menšia
# 5. Program vypísal **aritmetický priemer výšok meranej skupiny 165,7 cm** a jeho 95 % konfidenčný interval približne 159,1 až 172,3 cm 
# 6. Takže **skutočná stredná hodnota výšok** bude najskôr niekde v **uvedenom intervale**


# Muži kmeňa Apačov majú mať podľa zdrojov priemernú výšku 175 cm. 
# Antropológ, ktorý kmeň navštívil, zmeral výšky 10 náhodne vybraných mužov kmeňa
# V poradí veľkosti tu boli muži vysokí: 153, 156, 156, 161, 166, 167, 168, 174, 175 a 181 cm. 
# Na hladine významnosti α = 0,05 máme testovať, či údaj v literatúre zodpovedá antropológovým meraniam. 
# Predpokladáme, že výšky členov nejakej skupiny ľudí sú približne normálne rozdelené.

# Vektor pre 10 náhodnych apačov
apaci <- c(153, 156, 156, 161, 166, 167, 168, 174, 175, 181)


# V jednovýberovom t-teste porovnávate údaje z 1 skupiny údajov s nejakým predpokladaným priemerom/mean/mu. 
# Napríklad, ak niekto povedal, že piráti majú v priemere 5 tetovaní, mohli by sme vykonať jednovzorkový test porovnávajúci údaje zo vzorky pirátov s predpokladaným priemerom 5. 
# Na vykonanie jednovzorkového t-testu v R pomocou t .test(), zadajte vektor ako hlavný argument x a nulovú hypotézu ako argument mu
# Vykonáme t-test, aby sme zistili, či sa priemerný počet tetovaní, ktoré vlastnia piráti, je iný/líši od 5

# Data o piratoch
#install.packages('yarrr')
library(yarrr)
#?pirates
#pirates


# Čo sa stane, ak zmením nulovú hypotézu na strednú hodnotu 9,4? Pretože priemer vzorky bol 9,43, čo je takmer 9,4, štatistika testu by sa mala znížiť a hodnota p by sa mala zvýšiť

# # 🥼 Dvojvýberový t-test (Two Sample t-test)


# Muži kmeňa Apacov majú podľa zdrojov mať rovnakú priemernú výšku ako muži kmeňa Mohykanov. 
# Antropológ, ktorý oba kmene navštívil, zmeral výšky desiatich náhodne vybraných mužov každého kmeňa. cm. 
# Na 5% hladine významnosti máme testovať, či údaj v literatúre zodpovedá antropológovým meraniam za predpokladu, že variabilita/rozptyl výšok oboch skupín je rovnaký.
apaci <- c(153, 156, 156, 161, 166, 167, 168, 174, 175, 181)
mohykani <- c(160, 165, 168, 170, 171, 174, 176, 181, 181, 183)



# Formulacia/zapis dvojvýberového t-testu


# IV = eyepatch (0 or 1)
# DV = tattoos




# Vypis mi všetky prvky v objekte htest


# Teraz môžeme napríklad získať prístup k intervalu spoľahlivosti pre stredné rozdiely pomocou $

# Interval spoľahlivosti pre priemerné rozdiely


# Porovnajte tetovania pirátov vo veku 29 a 30 rokov


# V argumente subset funkcie t.test() môžete vybrať ľubovoľnú podmnožinu údajov – nielen primárnu nezávislú premennú. 

# Napríklad, ak by sme chceli porovnať počet tetovaní medzi pirátmi, ktorí nosia čelenky alebo nie, ale len pre pirátky

?t.test

require(graphics)

t.test(1:10, y = c(7:20))      # P = .00001855
t.test(1:10, y = c(7:20, 200)) # P = .1245    -- NOT significant anymore

## Classical example: Student's sleep data
plot(extra ~ group, data = sleep)
## Traditional interface
with(sleep, t.test(extra[group == 1], extra[group == 2]))

## Formula interface
t.test(extra ~ group, data = sleep)

## Formula interface to one-sample test
t.test(extra ~ 1, data = sleep)

## Formula interface to paired test
## The sleep data are actually paired, so could have been in wide format:
sleep2 <- reshape(sleep, direction = "wide", 
                  idvar = "ID", timevar = "group")
t.test(Pair(extra.1, extra.2) ~ 1, data = sleep2)

# -- Import_Dat --

# # 📑 Import Súborov a Dát




# /data/notebook_files/Zoznam_Online_Kurzov.csv
# /data/notebook_files/! Data R/VITA/Zoznam_Online_Kurzov.csv



# ## 1. Spôsob spracovania CSV
# Štandardne čiarka ako oddeľovač a bodka (.) ako desatinná čiarka  
# 
# **read.csv**(file, # Názov súboru alebo úplná cesta k súboru  
# header = TRUE, # Či čítať hlavičku alebo nie  
# sep = ",", # Oddeľovač hodnôt  
# quote = """, # znak citácie  
# dec = ".", # desatinná čiarka  
# fill = TRUE, # Či vyplniť dát  
# comment.char = "", # Znak komentárov alebo prázdny reťazec  
# encoding = "UTF-8", # Kódovanie súboru  
# ...) # Ďalšie argumenty  


# ## 2. Spôsob spracovania CSV2
# Predvolene bodkočiarka ako oddeľovač a čiarka (,) ako desatinná čiarka
# 
# read.csv2(file, header = TRUE, sep = ";", quote = """, dec = ",", fill = TRUE, comment.char = "", encoding = "unknown", ...)  
# 
# Function Header Sep Dec  
# read.csv TRUE “,” “.”  
# read.csv2 TRUE “;” “,”  






# -- Export_Dat --

# # 🔥 Export Súborov a Dát


tabulka_chybajuce_data_export <- data.frame(
    # Stlpec A - 2 chybajuce hodnoty
    stlpec_A = c(10, 2, NA, 4, 5, 6, NA), 
    # Stlpec B - 1 chybajuca hodnota
    stlpec_B = c(NA, 20, 30, 40, 50, 90, 100),
    # Stlpec C - bez chybajucich hodnot
    stlpec_C = c(15, 35, 23, 23, 65, 41, 87)
)
tabulka_chybajuce_data_export


# ## Dimenzie dim()




# ## Export/Uloženie Dátový Rámec (Tabuľka) v R do CSV








#trees


#? write.table
# help(write.table)

# ## Export Dát z R do Microsoft Excel (XLS, XLSX)


# install.packages("openxlsx")

# install.packages("xlsx")
# Vyzaduje Java

# install.packages("writexl")
library(writexl)


# ## Export Dát z R do STATA (dta)


#install.packages("foreign")

# ## Export Dát z R do IBM SPSS (sps)


#install.packages("foreign")

#install.packages("haven")

# ## Export Dát z R do SAS (sas)


#install.packages("foreign")

# -- Eurostat-ggplot2 --

# # ℹ️ Eurostat


install.packages("eurostat")
install.packages("ggplot2")
library("eurostat")
library("ggplot2")


# install.packages("eurostat")
#install.packages("ggplot2")
library("eurostat")
library("ggplot2")


# # 🔦 Jazyk R a SQL (Balíček sqldf)


#install.packages("sqldf")
library(sqldf)

