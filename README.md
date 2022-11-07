# munis2talented
ETL Files for Exporting Users and Supervisors from Munis for Import Into TalentEd (PowerSchool Unified Talent)

**NOTICE**
These files and scripts are provided without any assurances that they will work properly in your environment. There is also no guarantee that something won't get messed up in either Munis or TalentEd (PowerSchool Unified Talent) by using this project. Use at your own risk, understand what the commands will be doing, and use in a test environment if possible!

**Background**
These scripts and process were created by Jason Lester of Washington County Public Schools in Virginia.

**Description**
These scripts export out the users and supervisors from Munis that are required for TalentEd (PowerSchool Unified Talent).

**Release**
The latest version is always available on Github from: https://github.com/JLester73/munis2talented

**Requirements**
These scripts use the Scriptella ETL tool to export the data in a format used by IXL. Scriptella can be downloaded from http://scriptella.org/. It also uses Java and MS SQL.

Dependencies:
- Java JRE or JDK version 5.0 or later
- Scriptella
- MSSQL JDBC Driver
- WinSCP.Com (if you want the exports automatically uploaded)

**Setup**
- Install Scriptella and all dependencies noted above
- Place the XML and BAT files in C:\scriptella\ETL_Scripts
- Create the directory C:\scriptella\ETL_Exports\munis_to_hrms
- Edit the etl.properties file and update the SQL database server IP address or FQDN, instance name, and database name along with the login and password needed.
- Ensure the paths in etl.properties and hrms_exports.bat match where you have placed everything.
- Update the WinSCP line in hrms_exports.bat to use your district's login credentials.
- Run WinSCP.Com one time to accept the certificate
- Check the queries in the XML files to make sure the SQL statement is selecting the correct users and supervisors for your district.

**Usage**
The hrms_exports.bat batch file will run Scriptella against each of the XML files to export out the files required by TalentEd. Once exported, it uploads the files to the SFTP server. I would comment out that line until you're sure your exports are correct.

Once you have everything working properly, you can add the batch file as a scheduled task each night to completely automate your uploads.
