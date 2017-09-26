Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports Microsoft.SqlServer.Server
Imports System.Configuration
Imports System.Collections
Imports System.Runtime.InteropServices
Imports PCMFuncClassLib

Public Class PCMDLL
    ' Initialization functions
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSOpenServer", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSOpenServer(ByVal appInst As Integer, ByVal hWnd As Integer) As Short
    End Function
End Class
