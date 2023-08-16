# SearchWinEvents
Script powershell para obtener la lista de últimos eventos de un LogEvent y EventId en Windows

# Parámetros del Script
$computerName = Nombre de la máquina objetivo

$eventLogName = Nombre del log de eventos (system, application, setup, security)

$eventID = Lista de ids de eventos que te interesan separados por coma ("1000","1001","1002")

# Lista de logs y eventids críticos quew se deberían obtener para investigar un CiberIncidente
En el fichero "Logs and EventIds List.txt" tenéis un listado de eventos críticos de seguridad

# Agradecimientos 

A Dominic Pangallo [https://www.linkedin.com/in/dominic-pangallo-05167911/] por el script original, que al parecer obtuvo de BingChat.
A Digit Oktavianto [https://threathunting.id/] por el loistado inicial de logs y eventos criticos
