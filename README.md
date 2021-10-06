# MyI3WM

Jest to projekt Window tiling managera który ma być dostępny w wersji gotowej i ma wymagać jedynie minimalnej konfiguracji przez urzytkownika


# Linux baza
Co do bazy: osobiście używam Manjaro i wszystko będzie tworzone pod Manjaro i systemy bazowane na archu, jednak nie wykluczam późniejszej możliwości stworzenia wersji na systemy bazowane na debianie.

Manjaro:' https://manjaro.org/ '



# Required packages
### Kitty (terminal emulator)
Osobiście używam kitty tylko i wyłącznie ze względu na to, że neofetch bardzo lubi się z backend kitty

instalacja
```
$ sudo pacman -S kitty
```
Terminal jest ustawiony jako domyślny w pliku i3 config więc proszę najpierw zainstalować terminal a dopiero następnie wprowadzać zmiany dla tego pliku.
W innym wypadku niestety może dojść do braku możliwości zmiany ustawień i konieczności ponownej instalacji systemu. (Można awaryjnie odpalić terminal poprzez Dmenu/Rofi lecz domyślnie żadne z nich nie jest zainstalowane i plik config i3 jest skonfigurowany pod obsługę rofi.)

Mój wygląd kitty

kitty automatycznie szuka pliku config w ~/.config/kitty/kitty.conf
jednak jest możliwe ręczne ustawienie pliku za pomocą komendy 
```
$ kitty --config /path/to/config
```
mój plik config kopjujemy w miejsce tego domyślnego, nieśmiale się przyznam, że tutaj jest mało zmian więc ustawienie tego pliku wpływa jedynie na przezroczystość kitty i lokalizacje jego motywu 

motyw 

motyw będzie znajdował się w katalogu ~/.config/kitty/kitty-themes

niestety trzeba stworzyć ten katalog komendą:
```
$ cd ~/.config/kitty && mkdir kitty-themes
```
następnie tworzymy plik o nazwie theme1.conf (można utworzyć inną nazwę lecz taka jest domyślnie zawarta w moim pliku kitty.conf) a potem zwykłe kopjuj wklej mojego pliku
### Picom

Picom to kompozytor który dodaje transparencje, cienie i przejścia. Znacznie umila wygląd całości

Żeby dodać config dla picom trzeba znaleźć w katalogu ~\.config plik o nazwie picom.conf. Plik może być konieczny do stworzenia a następnie przypisania go do picoma za pomocą:
```
$ picom --config /path/to/file/
```
Następnie trzeba wykonać zwykłe kopiuj wklej mojego pliku

Aby zainstalować picom wystarczy urzyc komendy :
```
$ sudo pacman -S picom
```
### I3wm 
Instalacja
```
$ sudo pacman -S i3
```
Trzeba jeszcze pamietać o zmianie DE na to i3, w Manjaro wystarczy zmienić ustawienie w prawym dolnym rogu ekranu podczas logowania.

Plik config znajduje się domyślnie w:
```
~/.config/i3/config
```
Wystarczy podmienić kod w tym pliku na ten ode mnie poprzez zwykłe kopiuj/wklej

Po wciśnięciu konfiguracji $mod+shift+r i następnym reboot zmiany powinny zostać zaaplikowane, to samo się będzie tyczyć i3status i wszystkich konfigów które tu wstawilem
### Feh 
Instalacja:
```
$ sudo pacman -S feh
```
w pliku config do i3 jest linijka z komendą za pomocą której ustawia się tapetę, wystarczy podmienić /path/to/image na lokalizacje i nazwę pliku z tapetą

### I3 status
Instaluje się automatycznie

config nalerzy stworzyć w folderze ~/.config/

zalecam dodanie folderu o nazwie i3status 
```
$ cd .config
$ mkdir i3status
$ nano i3status.conf
```
następnie kopjujemy zawartość pliku config 

w pliku config i3 (~/.config/i3/config) jest już wprowadzona linijka która powoduje że i3 config jest automatycznie czytany z lokalizacji i pliku ~/.config/i3status/i3status.conf. Jeżeli najpierw ustawimy plik config i3 a dopiero potem config i3status to może nam wyrzucać błąd w miejscu paska.

### ROFI/Dmenu
Osoboście lubie rofi jako, że Dmenu jest zbyt podobne wygladem do status bara
Można dokonać zmiany w configu i3 config, wszystko zostalo tam opisane przez twórce i3wm więc nie powinno byc problemu z zmiana tego lecz i tak trzeba jedo i drugie zainstalować. Napisze tylko komendy dla ROFI

Config Rofi jest troche bardziej skomplikowany do dodania jako ze wymaga on stworzenia folderow w odpowiednim miejscu. 

W folderze ~/.config/ trzeba utworzyc folder /rofi/
```
$ cd .config
$ mkdir /rofi/ && cd /rofi/
```
Nastepnie trzeba utworzyc odpowiednie pliki i podfoldery a wiec:
```
$ touch config.rasi && mkdir themes && touch <nazwa motywu>.rasi
```
Potem zwykle kopjuj wklej do pliku config.rasi i odpowiednio do <nazwa motywu>.rasi , jezeli postanowimy nadac inna nazwe motywu niz theme1.rasi niestety ale trzeba bedzie dokonac modyfikacji w kodzie ustawiajac nazwe pliku z motywem w odpowiednim miejscu 

Instalacja:
  
```
$ sudo pacman -S rofi
```
  
### EOF ###
