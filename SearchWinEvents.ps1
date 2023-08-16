# Script powershell para obtener la lista de últimos eventos de un LogEvent y EventId en Windows
param(
    [string]$Verbose ="minimal"
)

$computerName = "RemoteComputerName" #Escribe aquí el nombre de la máquina objetivo
$eventLogName = "Application" #Escribe aquí el nombre del log de eventos system, application, setup, security
$eventID = "1000","1001","1002" #Escribe aquí la lista de ids de eventos que te interesan separados por coma
$FileOutput = "C:\eventos.txt" #Ruta y nombre del fichero en el que se escribirá la salida, si lo dejas vacío escribe en consola
$startTime = (Get-Date).AddDays(-7)
$endTime = Get-Date

if ($Verbose -eq "extended")
{
   if ("" -eq $FileOutput)
   {
     Get-WinEvent -ComputerName $computerName -FilterHashtable @{Logname=$eventLogName;ID=$eventID;StartTime=$startTime;EndTime=$endTime} | Select-Object TimeCreated,ID,Message | Format-Table -AutoSize -Wrap
   }
   else
   {
     Get-WinEvent -ComputerName $computerName -FilterHashtable @{Logname=$eventLogName;ID=$eventID;StartTime=$startTime;EndTime=$endTime} | Select-Object TimeCreated,ID,Message | Format-Table -AutoSize -Wrap | Out-File -FilePath $FileOutput
   }
}
else{
		if ("" -eq $FileOutput)
	{
		Get-WinEvent -ComputerName $computerName -FilterHashtable @{Logname=$eventLogName;ID=$eventID;StartTime=$startTime;EndTime=$endTime} | Select-Object TimeCreated,ID,Message | Format-Table -AutoSize
	}
	else
	{
		Get-WinEvent -ComputerName $computerName -FilterHashtable @{Logname=$eventLogName;ID=$eventID;StartTime=$startTime;EndTime=$endTime} | Select-Object TimeCreated,ID,Message | Format-Table -AutoSize | Out-File -FilePath $FileOutput
	}
}
