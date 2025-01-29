# CakePHP Anleitung

Diese Anleitung beschreibt, wie du ein CakePHP-Projekt erstellst, XAMPP startest, die erforderlichen Einstellungen vornimmst, eine Datenbank importierst und eine neue Seite mit CRUD-Operationen erstellst – alles innerhalb von Visual Studio Code (VS Code).

## 1. CakePHP-Projekt erstellen

1. Öffne **Visual Studio Code** öffne einen leeren Ordner deiner Wahl.
2. Öffne das integrierte Terminal mit **Strg + J** über **Terminal > Neues Terminal**.
3. Erstelle ein neues CakePHP-Projekt mit Composer:
    ```sh
    composer create-project --prefer-dist cakephp/app <Projektname>
    ```
    Ersetze `<Projektname>` mit dem gewünschten Namen des Projekts.

## 2. PHP intl-Extension aktivieren

1. Öffne die Datei `php.ini` in VS Code. Diese befindet sich unter `C:\xampp\php\php.ini`.

2. Suche nach dieser Zeile:

    ```ini
    ;extension=intl
    ```

3. Entferne das Semikolon (`;`), damit die Zeile so aussieht:

    ```ini
    extension=intl
    ```

4. Speichere die Datei.

## 3. XAMPP starten

1. Öffne den XAMPP Control Panel.
2. Starte **Apache** und **MySQL**.

## 4. Datenbank importieren

1. Lade die SQL-Datei herunter.
2. Öffne **phpMyAdmin** unter `http://localhost/phpmyadmin`.
3. Gehe zum Tab **Importieren** und wähle die heruntergeladene SQL-Datei aus.

## 5. CakePHP-Server starten

1. Öffne das Terminal in VS Code und navigiere in das CakePHP-Projektverzeichnis:
    ```sh
    cd C:\xampp\htdocs\<Projektname>
    ```
    Der Pfad des Projekts kann beliebig gewählt werden, muss aber mit den Server-Einstellungen übereinstimmen.
2. Starte den eingebauten Server:
    ```sh
    bin/cake server
    ```
3. Die App ist nun unter `http://localhost:8765/` erreichbar.

## 6. Neue Seite mit Bake erstellen

1. Falls du Bake noch nicht installiert hast, installiere es mit:
    ```sh
    composer require --dev cakephp/bake
    ```
2. Erstelle ein neues Model, Controller und Template mit Bake:
    ```sh
    bin/cake bake all <NameDerSeite>
    ```
    Ersetze `<NameDerSeite>` mit dem gewünschten Namen.

## 7. App im Browser öffnen

1. Öffne `http://localhost:8765/` in deinem Browser.
2. Navigiere zu `http://localhost:8765/<NameDerSeite>`.

## 8. CRUD-Operationen testen

Auf der generierten Seite kannst du folgende CRUD-Operationen ausprobieren:

-   **Create**: Neue Einträge hinzufügen
-   **Read**: Bestehende Einträge anzeigen
-   **Update**: Einträge bearbeiten
-   **Delete**: Einträge löschen

Viel Erfolg mit CakePHP in Visual Studio Code!
