#SearchWinEvents
Powershell script to get the list of last events from a LogEvent and EventId on Windows

# Script Parameters
If we pass parameter -Verbose extended it gets full information about each event, if not just a summary.

# Script Variables
$computerName = Name of the target machine

$eventLogName = Event log name (system, application, setup, security)

$eventID = Comma-separated list of event ids ("1000","1001","1002")

$FileOutput = Path and name of the file in which the events are written, if we leave it empty it writes to the console

# List of critical logs and eventids that should be obtained to investigate a CyberIncident
In the file "Logs and EventIds List.txt" you have a list of critical security events

# Pending development

- Convert the list of logs and events into a configuration file that the script reads to get all critical events

# Thanks

To Dominic Pangallo [https://www.linkedin.com/in/dominic-pangallo-05167911/] for the original script, which he apparently got from BingChat.

To Digit Oktavianto [https://threathunting.id/] for the initial list of logs and critical events
