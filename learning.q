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
////  File read/write operations
///////////////////////////////////////////////////////////////////////////////////
/========= Binary Read ====================== Text Read ========
q)read1 `:/a/b/file                           q)read0 `:/a/b/file.txt

/========= Binary Write ===================== Text Write ========
/open file handle
q)h 10 20 30                                  q)neg[h] "Hello there"
/This will write list into file

q)`:/filehandle 1: <data>                     q)`:/filehandle 0: <data>
`:/filehandle

q).[`:/data/raw; (); :; 1001 1002 1003]
`:/data/raw
q)get `:/data/raw
1001 1002 1003

///////////////////////////////////////////////////////////////////////////////////
