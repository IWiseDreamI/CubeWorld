This is an *EARLY* build of CWMyAdmin.

Because it is based so heavily on McMyAdmin, expect to see the odd reference to it 
here and there and misplaced update messages. These will be removed with time.

Make sure to place the following files from a Cube World installation into the 
CubeWorld directory where CWMA is installed:

 - Server.exe
 - zlib1.dll
 - msvcp110.dll
 - mscvr110.dll
 - all .db files

After starting CWMA with default settings, you can reach the panel on port 8080. So
on the local machine simply browse to http://localhost:8080 - the default username
and password are both "admin"

Under GNU/Linux, CWMA requires that Wine is installed to run the Windows-only
CubeWorld server. Wine isn't used to run CWMA itself.

