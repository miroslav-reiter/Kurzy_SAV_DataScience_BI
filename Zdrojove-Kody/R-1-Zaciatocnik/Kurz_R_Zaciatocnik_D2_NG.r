# -*- coding: utf-8 -*-

# -- D1 --

# # 📊 Kurz Jazyk R I. Začiatočník
# **🧑‍🏫 Lektor:** Miroslav Reiter  
# **📥 LinkedIn kontakt:** https://www.linkedin.com/in/miroslav-reiter/  
# 
# **✅ Osnova:** https://itkurzy.sav.sk/node/161
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


# # Príklad Jazyk Markdown 
# 


# Vitajte na **online kurz R**
# Naučíme sa spolu:
# 1. Jazyk ~~Python~~ R
# 2. Premenné a Konštanty  
# 3. Dátové Typy  
# 4. Funkcie a Operátory  


# # 🎁 Akú verziu Jazyka R používame a kde je Rko nainštalované?
# Funkcie home a version


# Kde je Rko nainštalované?
R.home()

# Komplexné informácie o verzií, platforme, os, revízie a iné
# # (alt + 35)
# alt + medzera
# win + medzera
R.version



# Vytiahne informáciu o os a platforme
# $ Pomenovaný zoznam (list), dátový rámec (dataframe), podmnožina stĺpcov (subset)
R.version$os
R.version$platform

# Alternatíva cez funkcie
R.Version()$version
R.Version()$version.string

# # 🖨 Používateľský Výstup, Tlač


# Mriežka (Alt + 35) - Komentár (Poznámky a Dokumentácia)
print("Ahoj, Svet")
print("Ahoj, Svet 2", quote = FALSE)
print(paste("Ahoj", "Čauko", "Servus", "Ciao"))
# \n
cat("Hello, World \n\n")
writeLines("Vitaj na kurze R")

# Využitie Premenných (Variables)
premenna = "Kurz Jazyka R 1"
print(premenna)

# Styl jazyk R
premenna2 <- "Kurz Jazyka R 2"
print(premenna2)


# Príkazový Riadok (CMD)
# Rscript ahojsvet.R

# # 🎲 Aritmetické Operátory (Operácie) pre Skalárne Dátové Typy


# + - * / ;
# 2+3
# 2*3
# 9/3
# 2/3
# 5*4/3
# (5*4)/9
# 5*(4/9)

# 1 + 5; 3 * 3 - 8

# Mocnina
# 2^5
# 2**5

# Realne delenie /
5/2

# Delenie so zvyskom (modulo)
5 %% 2

# Celociselne delenie
5 %/% 2

# Infix Operátory Backticks (Spatne uvodzky) ` `
# Môžete zavolať operátor ako funkciu
`+`(2, 3)
`*`(2, 3)
`>`(2, 3)

# # 🔥 Zabudované Funkcie a Konštanty


# Zaokruhlovanie, orezanie
# cat("ceiling\n")
# print(ceiling(9.000001))
# # Ctrl + d (duplikuj riadok)
# print(ceiling(9.999999))
# print(ceiling(9.00000))

# cat("floor\n")
# print(floor(9.000001))
# print(floor(9.999999))

# cat("round\n")
# print(round(9.99))
# print(round(9.0000))
# print(round(9.00001))
# print(round(9.856))
# print(round(9.856, digits = 2))

# cat("trunc\n")
# print(trunc(9.999))
# print(trunc(9.0000))
# print(trunc(9.00001))
# print(trunc(9.856))

# Aritmetika
# print(abs(-91))
# print(log(10))
# print(log10(10))
# print(exp(10))
# print(sqrt(81))
# print(sin(4 * pi))
# print(max(-9,5,0,-3,6,10))
# print(min(-9,5,0,-3,6,10))

# Plot Grafy
# plot(sin(4 * pi))
# plot(sin, 0, 2 * pi)

x = seq(0, 2 * pi, length.out = 100)
y = sin(x)
#plot(x,y, type = "l")

# Character (string-retazcov)
# print(tolower("EVA NEKRIC NA MNA!"))
# print(toupper("tichucko som povedal..."))
# print(paste("jeden", 1, 'dva', 2, "tri"))

meno = "Adam"
priezvisko = "Sangala"
cele_meno = paste(meno, priezvisko, sep=" *** ")
print(cele_meno)
length(cele_meno)
nchar(cele_meno)

zoznam_miest <- "Bratislava, Nitra, Trnava, Košice, Považská Bystrica"
print(strsplit(zoznam_miest, ","))
a = strsplit(zoznam_miest, ",")
print(length(a))
print(nchar(a))

print(substr("SK8411000000002926456123", start=5, stop=8))

IBAN <- "SK8411000000002926456123"
print(sub("SK","CZ", IBAN))

# # 💡 Zabudované Konštanty


# Konštanty
print(pi)
month.abb
month.name
letters
LETTERS

# Vyber dat - Slicing (Python way)
# Inclusive
month.name[1:5]


# (R way)
month.name[c(1:5)]
month.name[c(1:5, 7)]
month.name[c(1,2,3,7, 12)]
month.name[c(1,2,3,7, 12)]

# # 🗳️ Premenné/Objekty a Dátové Typy


# 5 skalárnych dátových typov sú číselné (numeric), znakové (character), celočíselné (integer), logické (logical) a komplexné (complex)
# Názov premennej priradenie hodnoty (= alebo <-)
a = 5
aa <- 5
#aa -> b
b = 5L
d = TRUE
e = T
f = FALSE
g = 10i
h = 10 - 10i
i = "Adam Šangala"
j = NULL
k = NA
l = Inf
n = NaN
o = 999.99

#identical(a, b)

#?NULL
#is.null(o)
?Inf

-5/0

# # ❇️ Formátovanie, Typy, Triedy


# Ukoncovacie sekvencie, escaped sequences
# \n new line novy riadok/odriadkuj
# \t tab tabulator
# \\ \
# \" "
# \' '

cat("typeof class: \n")
cat(typeof(a), "\n")
cat(typeof(d), "\n")
cat(typeof(b), "\n")

cat("\nclass class: \n")
cat(class(a), "\n")
cat(class(d), "\n")
cat(class(b), "\n")


cat("typeof str class: \n")
cat(typeof(str(a)), "\n")
cat(typeof(str(d)), "\n")
cat(typeof(str(b)), "\n")

writeLines("Mena \t Priezviska \t Emaily")
cat("C:\\temp\\data")

# ## 📊 Generovanie Dát a Grafy


test <- rnorm(n = 200, mean = 100, sd = 2)
test_prve_3 <- head(test, n = 3L)
test_posledne_3 <- tail(test, n = 3L)

summary(test)
#par(mfcol = c(1,3))
par(mfrow = c(1,2))
boxplot(test, horizontal = TRUE)
plot(test)
hist(test)


??mfcol

# Data
data <- c(10, 20, 30, 40, 50, 60, 100, 900)
data[-2]

dochadzka = c(T, T, F, T, "20")
dochadzka

# Inkluzivne
sekvencia1 = seq(10, 20)
sekvencia2 = c(10:20)
# pozicne
sekvencia3 = seq(1,20,2)

# argumenty/parametre
sekvencia4 = seq( by = 2, from = 1, to = 20)

sekvencia1
sekvencia2
sekvencia3
sekvencia4

# # ✅ Zabudované Štatistické Funkcie


vektor_cisel <- c(1:10, 40)
print(vektor_cisel)
print(mean(vektor_cisel))
print(sd(vektor_cisel))
print(median(vektor_cisel))
print(quantile(vektor_cisel))
print(quantile(vektor_cisel, 0.5))
print(quantile(vektor_cisel, 0.75))
print(range(vektor_cisel))
print(sum(vektor_cisel))
print(max(vektor_cisel))
print(min(vektor_cisel))

# dnorm
a <- seq(-5, 5, by = 0.1)
b <- dnorm(a, mean=2.5, sd = 0.5)
png(file="dnorm.png")
plot(a, b)
dev.off()

# pnorm
a <- seq(-7, 7, by = 0.2)
b <- pnorm(a, mean=2.5, sd = 2)

png(file="pnorm4.png")
bmp(file="pnorm4.bmp")
plot(a, b)
dev.off()


# rnorm

# dbinom


# # 🏢 Workspace











# # ℹ️ Bonus (packages)




# -- D2 --





# *Dnes* je **pekný deň**


# ## Kurz Jazyk


# -- Vstup_UI_Controls --

# # Používateľský Vstup (input)


# meno <- readline(prompt = "Zadaj svoje meno: ")
# vek <- readline(prompt = "Zadaj svoj vek: ")
# print(typeof(vek))
# # Konvertovnie, explicitne pretypovanie
# vek <- as.integer(vek)
# print(typeof(vek))
# print(paste("Dobrý deň", meno, "mas", vek, "rokov"))

# vek <- as.numeric(vek)
# print(typeof(vek))

# # UI Prvky (Controls)




ckb_vop <- TRUE

print(paste("Dal si suhlas: ", ckb_vop))



dp_farby <- "modrá"

print(paste("Dal si suhlas: ", dp_farby))



txt_meno <- "Nikola"

print(paste("Ako sa volas: ", txt_meno))

dtp_nastup_praca <- as.Date("2344-05-25")

print(paste("Nastupil si: ", dtp_nastup_praca))



slider_1 <- 6





# -- Riadiace_Struktury --

# if else, else if

a <- 5
b <- 8
# > < >= <= == != <>
if (a > b) {
    cat("a je vacsie b")
} else if (a == b) {
    cat("a a b su rovnake")
} else {
    cat("b je vacsie a")
}

# Operator priradenia =
a = 3

# Operator porovnania ==
5 == 5
a == 3
a == 5

# # Cyklus while


i <- 1
while(i < 10){
    cat(paste(i, ". Chcem zit nonstop \n", sep=""))
    i <- i + 1
}

i <- 1
while(i < 100){
    if(i >= 50) {
        cat("Koncime...")
        break
    }
    cat(paste(i, ". Chcem zit nonstop \n", sep=""))
    i <- i + 10
}

# matrix()
# vector()
# array()
# data.frame()
zoznam_kurzy <- list("Kurz Data Science", "Kurz R", "Kurz SQL", "Kurz Python", "Kurz NoSQL")

for(kurz in zoznam_kurzy){
    cat(paste("🍩 ", kurz, "\n"))
}

x <- 1

repeat {

    if (x > 20) {
        cat("Koncime a ideme na obed")
        break
    }

    cat("Chcem zit nonstop \n")
    x <- x + 2
}

# -- Funkcie --

vypis_cau <- function() {
    print("Cau")
}

vypis_cau()

# Popis funkcie
# @t - titul napr. Ing
# @m - krstne meno napr. Adam
# vypis_cele_meno_student <- function(t, m, p) {

# Globalny priestor/Scope
a = 1
b <- 3
print("Globalny priestor/Scope")
print(a)

vypis_cele_meno_student <- function(titul, meno, priezvisko = "Sangala") {
    # Lokalny priestor
    # x1 = 3
    # print(x1)
    print(paste(titul, meno, priezvisko))
    print("Lokalny priestor/Scope")
    a <<- 22
    print(a)
}

print("Globalny priestor/Scope 2")
print(a)
#print(x1)

vypis_cele_meno_student("Ing.", "Adam")
vypis_cele_meno_student("Ing.", "Monika", "Dlha")
vypis_cele_meno_student("Bc.", "Tomas")

je_parne <- function(x) {
    if (x %% 2 == 0) {
        cat("Je to parne \n")
    }
    else {
        cat("Je to neparne \n")
    }
}

je_parne(5)
je_parne(6)

kosinus <- function(w = 1, min = -2 * pi, max = 2 * pi) {
    x <- seq(-2 * pi, 2 * pi, length = 200)
    plot(x, sin(w * x), type="l")
}

kosinus()
kosinus(w = 2)
kosinus(w = 3)
kosinus(w = 3, min = -3 * pi)

# -- Balicky --

#install.packages("dplyr")
#install.packages("tidyverse")
library(dplyr)

# pipe (|)  %>%
cars %>% subset(speed >= 10) %>% summary()

starwars %>% filter(sex == "male")
# select
# filter
# mutate
# arrange
# summarize

starwars %>% select(name, height, ends_with("color"))

starwars %>% arrange(name)

starwars %>% mutate(bmi = mass / ((height / 100))^2) %>% select (name:mass, bmi)

data()

