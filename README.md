# Anleitung FW-Abgaben

### 1. **Git-Repository klonen (falls noch nicht geschehen):**

Falls du das Repository noch nicht auf deinem Computer hast, musst du es zuerst klonen. Dafür verwendest du den folgenden Befehl:

1. **Öffne PowerShell** und navigiere zu dem Ordner, in dem du das Repository speichern möchtest:

    ```powershell
    cd "Pfad\zu\deinem\Ordner"
    ```

2. **Klonen des Repositories**:
   Wenn du die URL des Repositories hast, kannst du es mit folgendem Befehl klonen:
    ```powershell
    git clone https://github.com/Benutzername/Repositoryname.git
    ```
    Ersetze `https://github.com/Benutzername/Repositoryname.git` mit der tatsächlichen URL deines Repositories.

### 2. **Branch in PowerShell erstellen:**

Nachdem das Repository geklont wurde und du in das Projektverzeichnis gewechselt hast, kannst du einen neuen Branch erstellen:

1. **Wechsel in das geklonte Repository**:

    ```powershell
    cd "Repositoryname"
    ```

2. **Erstelle einen neuen Branch**:
   Verwende den folgenden Befehl, um einen neuen Branch zu erstellen und gleichzeitig zu wechseln:

    ```powershell
    git checkout -b mein-neuer-branch
    ```

3. **Überprüfe, ob du im neuen Branch bist**:
   Um sicherzustellen, dass du im richtigen Branch bist, kannst du den folgenden Befehl verwenden:

    ```powershell
    git branch
    ```

    Der neue Branch wird mit einem Sternchen (\*) markiert.

4. **Änderungen vornehmen und committen**:
   Du kannst nun Änderungen vornehmen und diese mit den folgenden Befehlen festhalten:
    ```powershell
    git add .
    git commit -m "Meine Änderungen im neuen Branch"
    ```

### Zusammenfassung:

-   **Repository klonen**: `git clone https://github.com/Benutzername/Repositoryname.git`
-   **Branch erstellen und wechseln**: `git checkout -b mein-neuer-branch`
-   **Änderungen committen**: `git add .` und `git commit -m "Meine Änderungen"`

Jetzt hast du ein Repository geklont, einen neuen Branch erstellt und Änderungen darin festgehalten.
