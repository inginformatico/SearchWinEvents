# SearchWinEvents v0.0.1 by @inginformatico https://github.com/inginformatico/SearchWinEvents
# Script powershell para obtener la lista de últimos eventos de un LogEvent y EventId en Windows

param(
    [string]$computerName = "", #Parametro para indicar la máquina objetivo, si no se indica se usa la maquina local
	[string]$Verbose = "minimal", #Parametro para indicar si queremos informe extended o minimal
	[string]$FileOutput = "" #Parametro con el nombre del fichero donde se escriben los resultados
)

$startTime = (Get-Date).AddDays(-7)
$endTime = Get-Date

#Lee el fichero de configuracion
$ConfigList = Get-Content -Path eventlist.json | ConvertFrom-Json

Function SearchWinEvent {

param (
	$PEventLogName,
	$PEventIDs,
	$PFileOutput = ""
)

if ($Verbose -eq "extended")
{
	if ("" -eq $PFileOutput)
	{
		Get-WinEvent -ComputerName $computerName -FilterHashtable @{Logname=$PEventLogName;ID=$PEventIDs;StartTime=$startTime;EndTime=$endTime} | Select-Object TimeCreated,ID,Message | Format-Table -AutoSize -Wrap
	}
	else
	{
		Get-WinEvent -ComputerName $computerName -FilterHashtable @{Logname=$PEventLogName;ID=$PEventIDs;StartTime=$startTime;EndTime=$endTime} | Select-Object TimeCreated,ID,Message | Format-Table -AutoSize -Wrap | Out-File -FilePath $PFileOutput -Append
	}
}
else{
	if ("" -eq $PFileOutput)
	{
		Get-WinEvent -ComputerName $computerName -FilterHashtable @{Logname=$PEventLogName;ID=$PEventIDs;StartTime=$startTime;EndTime=$endTime} | Select-Object TimeCreated,ID,Message | Format-Table -AutoSize
	}
	else
	{
		Get-WinEvent -ComputerName $computerName -FilterHashtable @{Logname=$PEventLogName;ID=$PEventIDs;StartTime=$startTime;EndTime=$endTime} | Select-Object TimeCreated,ID,Message | Format-Table -AutoSize | Out-File -FilePath $PFileOutput -Append
	}
}

}


#Mensaje de presentacion
write-output ""
write-output "..............................................................................................."
write-output "SearchWinEvents v0.0.1 by @inginformatico https://github.com/inginformatico/SearchWinEvents"
write-output "..............................................................................................."
write-output ""

if ("" -eq $FileOutput)
{
 write-output ""
}
else
{
 write-output "........................................."
 write-output "Returns to file: $FileOutput"
 write-output " " | Out-File -FilePath $FileOutput -Append
 write-output "..............................................................................................." | Out-File -FilePath $FileOutput -Append
 write-output "SearchWinEvents v0.0.1 by @inginformatico https://github.com/inginformatico/SearchWinEvents" | Out-File -FilePath $FileOutput -Append
 write-output "..............................................................................................." | Out-File -FilePath $FileOutput -Append
 write-output " " | Out-File -FilePath $FileOutput -Append

}
write-output "........................................."

#Recorremos el fichero de configuracion y lanzamos la busqueda en cada grupo de eventIDs
foreach ($Elements in $ConfigList)
{
    foreach ($EventsElements in $Elements)
	{
		
		if ("" -eq $FileOutput)
		{
		 write-output "$($EventsElements.type): SearchWinEvents -PEventLogName $($EventsElements.EventLog) -PEventIDs $($EventsElements.EventIDs)"
		 SearchWinEvent -PEventLogName $($EventsElements.EventLog) -PEventIDs $($EventsElements.EventIDs)
		}
		else
		{
		 write-output "$($EventsElements.type): SearchWinEvents -PEventLogName $($EventsElements.EventLog) -PEventIDs $($EventsElements.EventIDs) -PFileOutPut $FileOutput" | Out-File -FilePath $FileOutput -Append
		 SearchWinEvent -PEventLogName $($EventsElements.EventLog) -PEventIDs $($EventsElements.EventIDs) -PFileOutput $FileOutput
		}
	}
}

#Mensaje final
write-output ""
write-output "Process finished"
write-output "........................................."
