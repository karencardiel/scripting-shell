# Event Manager - Shell Scripting Practice

This project is a basic event management system implemented in shell scripting. The objective is to simulate a notification system that executes actions based on predefined events. This was developed as part of the *Programming Paradigms* course (Unit 5 Practice) at the Universidad Politécnica de Yucatán.

## Objectives

- Apply the concept of **event-driven programming** (events and triggers).
- Write a shell script that responds to specific events.
- Use basic shell scripting commands to automate tasks.

## Functional requirements

### Events:

- **Program Start:** Triggered when the script is executed.
- **File Creation:** Triggered when a new file is created.
- **File Modification:** Triggered when an existing file is modified.
- **File Deletion:** Triggered when a file is deleted.

### Responses to events:

- **Program Start:** Displays a welcome message with the current date and time.
- **File Creation:** Logs the event (with file name and timestamp) in `eventos.log`.
- **File Modification:** Logs the modification of a file in `eventos.log`.
- **File Deletion:** Logs the deletion of a file in `eventos.log`.
- **Special Command:** If the user types "exit," the program ends with a farewell message.

## Implementation

### Preparation:

1. Research basic scripting commands (`echo`, `if`, `case`, `date`, `touch`, `rm`, `>>`, etc.).
2. Create the main script file (`gestor_eventos.sh`).

### Script structure:

- **Functions:**
  - `Registrar_Evento`: Logs events in the file `eventos.log`.
  - `Crear_Archivo`: Creates a file and logs the event.
  - `Modificar_Archivo`: Modifies an existing file and logs the event.
  - `Eliminar_Archivo`: Deletes a file and logs the event.
- **Interactive Menu:** Allows the user to choose actions interactively.
