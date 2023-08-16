# SearchWinEvents
Script powershell para obtener la lista de últimos eventos de un LogEvent y EventId en Windows

# Parámetros del Script
#$computerName = Nombre de la máquina objetivo
$eventLogName = Nombre del log de eventos (system, application, setup, security)
$eventID = Lista de ids de eventos que te interesan separados por coma ("1000","1001","1002")

Agradecimientos a Dominic Pangallo [https://www.linkedin.com/in/dominic-pangallo-05167911/] por el script original, que al parecer obtuvo de BingChat.
