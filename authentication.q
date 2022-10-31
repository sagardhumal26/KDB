/create file and store username:password
/file name :- mypassword
/user1:password   -> file content

/start q server
q -p 5050 -U mypassword   

/start client and try to open connection with server
hopen `::5050

/you will get access error

/start client and try to open connection with server and provide username:password
hopen `::5050:user1:password  /- connection establish




