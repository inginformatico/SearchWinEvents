[Readme in English: https://github.com/inginformatico/SearchWinEvents/blob/main/README_ENGLISH.md]

# SearchWinEvents
Script powershell para obtener la lista de últimos eventos de una serie de LogEvents y EventIds en Windows

# Parámetros del Script
Si pasamos el parametro computerName obtiene los datos de esa maquina sino de la maquina local

Si pasamos parametro -Verbose "extended" obtiene informacion completa sobre cada evento, sino solo un resumen

Si pasamos el parametro FileOutput escribe los resultados en el fichro sino en consola

El Script lee del fichero eventlist.json la lista de eventlogs y eventids que debe obtener

# Instalación
Descarga SearchWinEvents.ps1
Descarga eventlist.json
Edita eventlist.json con la lista de eventlogs y eventids deseados

# Ejemplos de uso

Resultados por consola de ordenador local
.\SearchWinEvents.ps1

Resultados volcados al fichero results.txt de ordenador local
.\SearchWinEvents.ps1 -FileOutput results.txt

Resultados volcados al fichero results.txt de ordenador local informe extendido
.\SearchWinEvents.ps1 -FileOutput results.txt -Verbose extended

# Lista de logs y eventids críticos que se deberían obtener para investigar un CiberIncidente
En el fichero "Logs and EventIds List.txt" tenéis un listado de eventos críticos de seguridad

# Agradecimientos 

A Dominic Pangallo [https://www.linkedin.com/in/dominic-pangallo-05167911/] por el script original, que al parecer obtuvo de BingChat.

A Digit Oktavianto [https://threathunting.id/] por el listado inicial de logs y eventos criticos
