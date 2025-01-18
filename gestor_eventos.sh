#Karen Cardiel Olea

LogFile="eventos.log"

# Función para registrar eventos
Registrar_Evento() {
    Evento=$1
    Mensaje=$2
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    echo "$timestamp - $Evento - $Mensaje" >> $LogFile
}

# Función para crear archivo
Crear_Archivo() {
    echo "Introduce el nombre del archivo a crear:"
    read Archivo
    touch "$Archivo"
    if [ -f "$Archivo" ]; then
        echo "Archivo '$Archivo' creado exitosamente."
        Registrar_Evento "Creación" "Archivo '$Archivo' creado."
    else
        echo "Error al crear el archivo."
    fi
}

# Función para modificar archivo
Modificar_Archivo() {
    echo "Introduce el nombre del archivo a modificar:"
    read Archivo
    if [ -f "$Archivo" ]; then
        echo "Introduce el contenido a agregar al archivo:"
        read Contenido
        echo "$Contenido" >> "$Archivo"
        echo "Archivo '$Archivo' modificado exitosamente."
        Registrar_Evento "Modificación" "Archivo '$Archivo' modificado."
    else
        echo "El archivo '$Archivo' no existe."
    fi
}

# Función para eliminar archivo
Eliminar_Archivo() {
    echo "Introduce el nombre del archivo a eliminar:"
    read Archivo
    if [ -f "$Archivo" ]; then
        rm -f "$Archivo"
        echo "Archivo '$Archivo' eliminado exitosamente."
        Registrar_Evento "Eliminación" "Archivo '$Archivo' eliminado."
    else
        echo "El archivo '$Archivo' no existe."
    fi
}
# Mensaje de bienvenida
echo "Bienvenido/a al Gestor de Eventos"
echo "Fecha y hora actuales: $(date +"%Y-%m-%d %H:%M:%S")"
Registrar_Evento "Inicio" "El programa inicio"

# Menú
while true; do
    echo ""
    echo "Seleccione una opcion:"
    echo "1. Crear un archivo"
    echo "2. Modificar un archivo"
    echo "3. Eliminar un archivo"
    echo "Escriba 'exit' para salir"
    echo "----------------------------------------"
    read -p "Opcion: " Opcion

    if [ "$Opcion" == "exit" ]; then
        echo "Gracias por usar el Gestor de Eventos. ¡Hasta pronto! \(^o^)/"
        Registrar_Evento "Salida" "El programa termino"
        break
    fi

    case $Opcion in
        1) Crear_Archivo ;;
        2) Modificar_Archivo ;;
        3) Eliminar_Archivo ;;
        *) echo "Opcion no valida. Intente nuevamente." ;;
    esac
done
