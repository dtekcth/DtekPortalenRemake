Brainstorming möte
==================================
8/06 - 2015
--------------------------

## Närvarande ##

* Jacob Jonsson
* Johan Bowald
* Sebastian Lund
* Victor Hallen

## Vilken är målgruppen för sidan och varför besöker de vår sida? ##
Vi diskuterade målgruppen och konstaterade att våra egna teknologer är vår huvudsakliga målgrupp och sätt att locka dem till sidan är exempelvis:

## Uppdelning ##
Vi diskuterade möjligheten att dela upp sidan i två delar, där en del är själva kärnupplevelsen, "core features" och plugins är en annan del som tillåter utbyggbarhet och att besökare kan välja själv vilken funktionalitet som ska finnas på sidan.

Vår förhoppning är att bygga pluginsdelen så enkel och smidig som möjligt så att vem som helst skulle kunna bygga ett eget plugin utan att sätta sig in i hur sidan fungerar.


### "Core features" ###

* Aktuell info <br />
Sidan borde erbjuda aktuell information om vad som händer på sektionen just nu, på ett liknande sätt som sektionens redan existerande veckobrev.
Även dagens mat och länkar till scheman.

* Vad Styret jobbar med <br />
Det borde finnas utrymme för längre informationstexter om vad styret jobbar med och vad som händer på sektionen just nu. Bra för att sprida information inför sektionsmöten och allmänt för att öka transparansen på sektionen.

* Kontaktinformation <br />
Om oss och presentation för Styret och kanske framförallt Presidieenheten, med kortare presentationer.

* Föreningsprofiler
  - Presidiet
  - Styret
  - DRUST
  - D6
  - Delta
  - DAG
  - DNollK <br />
En egen hemsida för mottagningen, exempelvis nåbar genom dtek.se/mottagning och dnollk.se och hålla konsistent design med nya dtek.se-sidan.

  - DFoto <br />
Interagera DFotosidan i dtek.se som en del av sidan.
  
* Plugins <br />
Här låter vi saker som inte är direkt kopplade till vår "kärn-upplevelse" leva.
Exempel på plugins skulle kunna vara mat, schema, bibliotekssökning osv.

* Möjlighet att boka databussen. <br />
Ett enkelt och tydligt sätt att boka databussen redan på startsidan.

###  Plugins ###
Vi diskuterade möjligheten att låta plugins leva i ett eget utrymme på startsidan, med möjligheter att kunna flytta runt dem lite efter egen önskan.
Vidare funderade vi på om man ska kunna stänga av och lägga till plugins som vanlig besökare av sidan.

Om vi kan göra pluginsbiten så smidig och enkel att utveckla att vem som helst kan börja hacka på plugins så borde det öka hackerandan på sektionen. Dessutom skulle bidra till hela sidans nytta för teknologerna vilket gör att fler går dit oftare.

Svårigheten är att det blir rent designmässigt svårt att utveckla ett sådant system, men det är vårt mål.

#### Preliminär plugindesign ####
Vår ide är att hela projektets källmapp ska innehålla en plugin/ mapp som då innehåller en mapp per plugin som innehåller lite bra grejer. Exempel på struktur:

* /plugins
  - bowaldj/
      + plugin.jsx
      + style.sass
      + public/
      + plugin.html
* plugins.rb

##### Mappen plugins ######
Tanken med vår design är att det ska vara enkelt att bygga plugins med konsistent design tack vare att inkludera en SASS stilmall som innehåller sidans designprofil.

Andra designval är att promota React.js och JSX formatet, men att man också skulle kunna skriva vanlig HTML som refererar objekt i mappen public/.

##### Plugins.rb ######
I plugins.rb tänker vi oss att man har en typ av array eller liknande som listar vilka plugins som är aktiva och som får aktiveras (så att de inte är för gamla exempelvis). En annan sak som plugins.rb kan innehålla är konfigurationsalternativ för exempelvis om pluginet är ett sidebar-plugin eller en one-page-plugin exempelvis.

##### Bidra och utveckla plugins #####
Vår tanke att man har ett original-repo som innehåller sidan, vill man lägga till ett plugin så forkar man repot, lägger till sitt plugin och skickar en pull-request tillbaka till huvud-repot. Det är då upp till maintainarna (dHack eller WEBBREDAX) att godkänna plugins och se till att inget jättedumt händer.

## Arbetssätt och språk ##
### Förslag på språk och frameworks till sidan ###
Vi diskuterade lite alternativ för hur vi vill skriva sidan.

* Frontend
  - React.js
* Backend
  - Ruby
    + Sinatra (DSL för routing och vyer)
    + data_mapper (ORM)

### Arbetssätt ###
Vi diskuterade lite alternativ för vilket arbetssätt vi bör ha när vi skriver sidan.

* git
  - versionshantering
* trello
  - fördelning utav arbete "post-it" style

* fb-chatt
  - För diskussioner och allmänt tjöt
* maillista?
  - Ja.

## Tills nästa gång ##

* Prata med resten av gänget och ta in åsikter
* Gemensam dag
  - Dela upp arbete i sprints och grupper
* Veckomöten (tisdag?)
* Förhoppningsvis kan språk och ramverk vara satta tills fredag 12 juni.
* Nästa möte tisdag 16, 19:00 i kårhuset.
