# URL-TESTER

## Dependencies:-
  curl
----------------------------------------------------------------------------------------------------------------------------------------
following bash script checks whether a website or URL is live or not (UP OR DOWN)

I have used the "curl" command to get this script working
-----------------------------------------------------------------------------------------------------------------------------------------
## WHAT IS "CURL" COMMAND
curl is a command line tool to transfer data to or from a server, using any of the supported protocols (HTTP, FTP, IMAP, POP3, SCP, SFTP, SMTP, TFTP, TELNET, LDAP or FILE). 

curl is powered by Libcurl. This tool is preferred for automation, since it is designed to work without user interaction. curl can transfer multiple file at once.
------------------------------------------------------------------------------------------------------------------------------------------
if curl -s --head --max-time <TIME IN SECONDS>  --request GET https://example.com | grep "200 OK" > /dev/null;
  
then 
  
   echo "https://example.com is UP"
   
else

   echo "https://example.com is DOWN"
 
### -s, --silent        Silent mode
### --max-time <TIME IN SECONDS>
### --head          (Show document info only)
### --request <command> Specify request command to use
#### FOR MORE INFO CHECK MANUAL OF CURL COMMAND
### /dev/null redirects the command standard output to the null device/file, which is a special device/file which discards the information written to it
------------------------------------------------------------------------------------------------------------------------------------------
### PROVIDE EXECUTION PERMISSION (chmod +x urlTester.sh) TO THE SCRIPT (urlTester.sh) AND RUN IT BY TYPING "./urlTester.sh" IN TERMINAL AND IT'LL SHOW YOU THE LIST OF WEBSITES WITH ITS STATUS FROM THE INPUT FILE "Urls.txt" (edit the input file as you want and give distinct url per line)

an output text file (result.txt) gets generated if you want to see the logs

# THANK YOU
