# [gemi](https://owncloud.gwdg.de/index.php/s/RGjWfcsF5GKCHtO): Genomik zum Mitmachen

## Autoren
Beatriz Vieira Mourato und Bernhard Haubold

## Beschreibung
*Genomik zum Mitmachen* ist ein einstündiges Tutoriat zum Einstieg in
die Genomik. Darin zeigen wir, wie man mit der Unix Befehlszeile
arbeitet und Gene darstellt.

## Abhängigkeiten
Wir brauchen
- [Neighbors](https://github.com/evolbioinf/neighbors)
- [datasets](https://www.ncbi.nlm.nih.gov/datasets/)
- [biobox](https://github.com/evolbioinf/biobox)
- latex

Wer auf einem Ubuntu-System arbeitet, kann das System einrichten mit
dem Befehl
```
bash skripte/einrichten.sh
```
Anschließend muss die Umgebung eventuell neu gestartet werden.
```
source ~/.profile
```
Wenn alles stimmt, sollte der Befehl `listNeiDbs` eine Liste von
Datenbanken ausgeben.

## Starten
Sobald dein System eingerichtet ist, kannst du im Verzeichnis `gemi`
eingeben
```
make
```
Jetzt kannst du in das Verzeichnis `spielplatz` wechseln
```
cd spielplatz
```
und dort mit [Genomik zum
Mitmachen](https://owncloud.gwdg.de/index.php/s/RGjWfcsF5GKCHtO) loslegen.

## Testen
Wir haben `einrichten.sh` und `gemi` getestet auf unserer "minimalen unix box", [`mix`](https://hub.docker.com/r/haubold/mix).

