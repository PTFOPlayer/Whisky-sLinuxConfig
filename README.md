# MyI3WM

Jest to projekt Window tiling managera który ma być dostępny w wersji gotowej i ma wymagać jedynie minimalnej konfiguracji przez urzytkownika


# Linux baza
Co do bazy: osobiście urzywam Manjaro i wszystko będzie tworzone pod Manjaro i systemy bazowane na archu, jednak nie wykluczam późniejszej możliwości stworzenia wersji na systemy bazowane na debianie.

Manjaro: https://manjaro.org/



# Required packages
### Picom

Picom to kompozytor który dodaje transparencje, cienie i przejścia. Znacznie umila wygląd całości

Żeby dodać config dla picom trzeba znaleźć w katalogu ~\.config plik o nazwie picom.conf. Plik możę być konieczny do stworzenia a następnie przypisania go do picoma za pomocą:

$ picom --config /path/to/file/

Następnie trzeba wykonac zwykłe kopiuj wklej mojego pliku

Aby zainstalować picom wystarczy urzyc komendy :

$ sudo pacman -S picom

### I3wm 
Instalacja

$ sudo pacman -S i3

Trzeba jeszcze pamietac o zmianie DE na to i3, w Manjaro wystarczy zmienic ustawienie w prawym dolnym rogu ekranu podczas logowania.
Plik config znajduje się domyślnie w:

~/.config/i3/config

Wystarczy podmienić kod w tym pliku na ten ode mnie poprzez zwykłe kopiuj/wklej

Po wciśnięciu konfiguracji $mod+shift+r i następnym reboot zmiany powinny zostać zaaplikowane, to samo się będzie tyczyć i3status i wszystkich konfigów które tu wstawilem
### Feh 
Instalacja:

$ sudo pacman -S feh

w pliku config do i3 jest linijka z komendą za pomocą której ustawia się tapetę, wystarczy podmienić /path/to/image na lokalizacje i nazwę pliku z tapetą

### I3 status
Instaluje się automatycznie

config nalerzy stworzyć w folderze ~/.config/

zalecam dodanie folderu o nazwie i3status 

$ cd .config
$ mkdir i3status
$ nano i3status.conf

następnie kopjujemy zawartość pliku config 

w pliku config i3 (~/.config/i3/config) jest już wprowadzona linijka która powoduje że i3 config jest automatycznie czytany z lokalizacji i pliku ~/.config/i3status/i3status.conf. Jeżeli najpierw ustawimy plik config i3 a dopiero potem config i3status to może nam wyrzucać błąd w miejscu paska.

### ROFI/Dmenu
Osoboscie lubie rofi jako ze Dmenu jest zbyt podobne wygladem do status bara
Mozna dokonac zmiany w configu i3config, wszystko zostalo tam opisane przez tworce i3wm wiec nie powinno byc problemu z zmiana tego lecz i tak trzeba jedo i drugie zainstalowac. Napisze tylko komendy dla ROFI

Config Rofi jest troche bardziej skomplikowany do dodania jako ze wymaga on stworzenia folderow w odpowiednim miejscu. 

W folderze ~/.config/ trzeba utworzyc folder /rofi/

$ mkdir /rofi/ && cd /rofi/

Nastepnie trzeba utworzyc odpowiednie pliki i podfoldery a wiec:

$ touch config.rasi && mkdir themes && touch <nazwa motywu>.rasi

Potem zwykle kopjuj wklej do pliku config.rasi i odpowiednio do <nazwa motywu>.rasi , jezeli postanowimy nadac inna nazwe motywu niz theme1.rasi niestety ale trzeba bedzie dokonac modyfikacji w kodzie ustawiajac nazwe pliku z motywem w odpowiednim miejscu 

Instalacja:

$ sudo pacman -S rofi

### EOF ###
