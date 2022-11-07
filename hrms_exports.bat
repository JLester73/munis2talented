@echo off

REM Scriptella scripts to export data from Munis
REM into format that is used by PowerSchool HRMS (TalentEd)
c:
cd \scriptella\ETL_Scripts
call C:\Scriptella\bin\scriptella.bat Munis_Staff_Cloud.xml
call C:\Scriptella\bin\scriptella.bat Munis_Sups_Cloud.xml

REM Upload CSV files to PowerSchool's SFTP Server
c:
cd \scriptella\ETL_Exports\munis_to_hrms\
C:\scriptella\WinSCPPortable\App\winscp\WinSCP.com /console /command "option batch abort" "option confirm off" "open (ftp username):(ftp password)@sftp.tedk12.com" "cd syncNine" "cd Inbound" "put munis_to_hrms-output.csv" "put munis_to_hrms-sups-output.csv" "exit"
