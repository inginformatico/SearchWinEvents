# SearchWinEvents
Script powershell para obtener la lista de últimos eventos de un LogEvent y EventId en Windows

# Parámetros del Script
$computerName = Nombre de la máquina objetivo

$eventLogName = Nombre del log de eventos (system, application, setup, security)

$eventID = Lista de ids de eventos que te interesan separados por coma ("1000","1001","1002")

$FileOutput = Ruta y nombre del fichero en el que se escriben los eventos, si lo dejamos vacío escribe en consola

# Lista de logs y eventids críticos que se deberían obtener para investigar un CiberIncidente
En el fichero "Logs and EventIds List.txt" tenéis un listado de eventos críticos de seguridad

# Pendiente de desarrollar

- Convertir la lista de logs y eventos en un fichero de configuración que el script lea para obtener todos los eventos criticos

# Agradecimientos 

A Dominic Pangallo [https://www.linkedin.com/in/dominic-pangallo-05167911/] por el script original, que al parecer obtuvo de BingChat.

A Digit Oktavianto [https://threathunting.id/] por el listado inicial de logs y eventos criticos
