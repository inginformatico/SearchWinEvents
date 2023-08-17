# SearchWinEvents
Powershell script to get the list of last events from a LogEvent and EventId on Windows

# Script Parameters
If we pass the parameter computerName it obtains the data of that machine but of the local machine

If we pass parameter -Verbose "extended" it gets full information about each event, if not just a summary.

If we pass the FileOutput parameter write the results in the file but in console

The Script reads from the eventlist.json file the list of eventlogs and eventids that it should get

# Installation
Download SearchWinEvents.ps1

Download eventlist.json

Edit eventlist.json with the list of desired eventlogs and eventids

# Usage examples

Results by local computer console

.\SearchWinEvents.ps1

Results dumped to the results.txt file on the local computer

.\SearchWinEvents.ps1 -FileOutput results.txt

Results dumped to the results.txt file of local computer extended report

.\SearchWinEvents.ps1 -FileOutput results.txt -Verbose extended

# List of critical logs and eventids that should be obtained to investigate a CyberIncident
In the file "Logs and EventIds List.txt" you have a list of critical security events

# Thanks

To Dominic Pangallo [https://www.linkedin.com/in/dominic-pangallo-05167911/] for the original script, which he apparently got from BingChat.

To Digit Oktavianto [https://threathunting.id/] for the initial list of logs and critical events
