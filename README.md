# CakePHP Anleitung

Diese Anleitung beschreibt, wie du ein CakePHP-Projekt erstellst, XAMPP startest, die erforderlichen Einstellungen vornimmst, eine Datenbank importierst und eine neue Seite mit CRUD-Operationen erstellst – alles innerhalb von Visual Studio Code (VS Code)

## 1. Composer installieren

1. **[Composer](https://getcomposer.org/Composer-Setup.exe)** herunterladen und installieren

2. Terminal öffnen und die Installation prüfen:

```bash
composer
```

## 2. CakePHP-Projekt erstellen

> [!IMPORTANT]
> Das Verzeichnis, in dem das Projekt abgelegt wird, ist frei wählbar!

1. Öffne **Visual Studio Code** in einem beliebigen Verzeichnis

2. Öffne das integrierte Terminal mit **Strg + J** oder über **Terminal > Neues Terminal**

3. Erstelle ein neues CakePHP-Projekt mit Composer

    ```bash
     composer create-project --prefer-dist cakephp/app *Projektname*
    ```

    Ersetze `*Projektname*` mit dem gewünschten Namen des Projekts.

> [!TIP]
> Sobald das Projekt fehlerfrei erstellt wurde, empfiehlt es sich, das folgende Kommando einzugeben, um Flüchtigkeitsfehler zu vermeiden. Dadurch wird ein neues VS Code-Fenster geöffnet, und das alte kann geschlossen werden:
>
> ```bash
>  code ./*Projektname*
> ```

## 3. PHP intl-Extension aktivieren

1. Öffne die Datei `php.ini` in VS Code. Diese befindet sich unter `C:\xampp\php\php.ini`

2. Suche nach diesen beiden Zeilen:

    ```ini
    ;extension=intl
    ;extension=zip
    ```

3. Entferne das Semikolon (`;`), sodass die Zeilen wie folgt aussehen:

    ```ini
    extension=intl
    extension=zip
    ```

4. Speichere die Datei

## 4. XAMPP starten

1. Öffne das XAMPP Control Panel.
2. Starte **Apache** und **MySQL**.

## 5. Datenbank importieren

1. Lade die **[SQL-Datei](./todolistdb.sql)** herunter und speicher sie im selben Verzeichnis wie dein Projekt ab

2. Öffne nun ein **CMD** Terminal in VS Code und gebe folgende Zeilen ein:

```bash
C:\xampp\mysql\bin\mysql.exe mysql -u root -p < todolistdb.sql
```

> [!IMPORTANT]
> Das Terminal muss **CMD** sein!

## 6. Datenbank einrichten

1. Navigiere im VS Code-Explorer in den `config` Ordner und öffne `app_local.php`

2. Auf Zeile `37` bei `default` ändere die Datenbankangaben entsprechend

## 7. CakePHP-Server starten

1. Öffne das Terminal in VS Code und stelle sicher, dass du dich im Verzeichnis des Projekts befindest

2. Starte den Server:

    ```bash
    bin/cake server
    ```

3. Die App ist nun unter `http://localhost:8765/` erreichbar

## 8. Neue Seite mit Bake erstellen

1. Falls Bake noch nicht installiert wurde:

    ```bash
    composer require --dev cakephp/bake
    ```

2. Erstelle eine neue Seite mit Bake:

    ```bash
    bin/cake bake all Tasks
    ```

> [!IMPORTANT]
> Die Seite **muss** Tasks heissen, da die Tabelle in der Datenbank so heisst!

## 9. App im Browser öffnen

1. Öffne `http://localhost:8765/` in deinem Browser.
2. Navigiere zu `http://localhost:8765/Tasks`.

## 10. CRUD-Operationen testen

Auf der generierten Seite kannst du folgende CRUD-Operationen ausprobieren:

-   **Create**: Neue Einträge hinzufügen
-   **Read**: Bestehende Einträge anzeigen
-   **Update**: Einträge bearbeiten
-   **Delete**: Einträge löschen

Viel Spass mit CakePHP!
