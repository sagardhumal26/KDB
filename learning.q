///////////////////////////////////////////////////////////////////////////////////
////  Block Database Modification -b
////  The –b command line parameter disallows connected clients to modify data. 
///////////////////////////////////////////////////////////////////////////////////

==========================Without -b flag on server side======================================
Client                                          Server
start q process                                 start q process without -b option
open handle                                     start server on port 5050
q)h:hopen `::5050                               q)\p 5050
                                                q)a:100
                                                q)a
                                                100
q)h "a"
100
q)h "a:200"
q)h "a"                                         q)a
200                                             200

==========================With -b flag on server side======================================
Client                                          Server
start q process                                 start q process with -b option
open handle                                     start server on port 5050
q)h:hopen `::5050                               q)\p 5050
                                                q)a:100
                                                q)a
                                                100
q)h "a"
100
q)h "a:200"
'noupdate: `. `a
  [0]  h "a:200"
       ^
q)


///////////////////////////////////////////////////////////////////////////////////
