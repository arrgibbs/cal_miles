Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports Microsoft.SqlServer.Server
Imports System.Configuration
Imports System.Collections
Imports System.Runtime.InteropServices
'Imports PCMDLLIN

'Project: PCMiler App'
'Developed by: ArReko Gibbs'
'Software used: VB.Net/SQL functions'

Public Class PCMDLL_Test
#If x64 Then
    Private Const PCMSRV As String = "PCMSRV64.DLL"
#Else
    Private Const PCMSRV As String = "PCMSRV32.DLL"
#End If

    ' Initialization functions
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSOpenServer", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSOpenServer(ByVal appInst As Integer, ByVal hWnd As Integer) As Short
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCloseServer", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCloseServer(ByVal serverID As Short) As Integer
    End Function

    ' Simple functions
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCalcDistance", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCalcDistance(ByVal serverID As Short, ByVal orig As String, ByVal dest As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMCalcDistance2", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCalcDistance(ByVal serverID As Short, ByVal orig As String, ByVal dest As String, ByVal routType As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMCalcDistance3", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCalcDistance3(ByVal serverID As Short, ByVal orig As String, ByVal dest As String, ByVal routType As Integer, ByVal minutes As Integer) As Integer
    End Function
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCityLatLong", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCityLatLong(ByVal serverID As Short, ByVal name As String, ByVal buffer As Integer, ByVal bufferSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PMCSLatLongToCity", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSLatLongToCity(ByVal serverID As Short, ByVal latlong As Integer, ByVal buffer As Integer, ByVal bufferSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAddressToLatLong", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAddressToLatLong(ByVal serverID As Short, ByVal name As String, ByVal buffer As Integer, ByVal bufferSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSLatLongToAddress", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSLatLongToAddress(ByVal serverID As Short, ByVal latlong As String, ByVal buffer As Integer, ByVal bufferSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumRegions", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumRegion(ByVal serverID As Short) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSZipCodeOption", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSZipCodeOPtion(ByVal serverID As Short) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetRegionName", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetRegionName(ByVal serverID As Short, ByVal idx As Integer, ByVal name As String, ByVal bufferSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNewTripWithRegion", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNewTripWithRegion(ByVal serverID As Short, ByVal regionID As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCalcTrip", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCalcTrip(ByVal tripID As Integer, ByVal orgin As Integer, ByVal dest As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSOptimize", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSOptimize(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetDuration", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetDuration(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetToll", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetToll(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumTollDiscount", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumTollDiscount(ByVal serverID As Short) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetTollDiscountName", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetTollDiscountName(ByVal serverID As Short, ByVal idx As Integer, ByVal buffer As String, ByVal bufSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetTollBreakdown", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetTollBreakdown(ByVal tripID As Integer, ByVal disProgram As Integer, ByVal state As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSDeleteStop", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSDeleteStop(ByVal tripID As Integer, ByVal which As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumStops", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumStops(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetStopType", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetStopType(ByVal tripID As Integer, ByVal which As Integer, ByVal type As Short) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetLoaded", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetLoaded(ByVal tripID As Integer, ByVal which As Integer, ByVal loaded As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetFmMatch2", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetFmMatch2(ByVal tripID As Integer, ByVal index As Integer, ByVal addrbuffer As String, ByVal addrLen As Integer, ByVal cityBuffer As String, ByVal cityLen As Integer, ByVal statebuff As String, ByVal stateLen As Integer, ByVal zipbuffer As String, ByVal zipLen As Integer, ByVal countyBuffer As String, ByVal countyLen As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetFmtMatch3", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetFmtMatch3(ByVal tripID As Integer, ByVal which As Integer, ByVal addrbuf As String, ByVal addrLen As Integer, ByVal citybuf As String, ByVal cityLen As Integer, ByVal statebuf As String, ByVal stateLen As Integer, ByVal zipbuf As String, ByVal zipLen As Integer, ByVal countybuf As String, ByVal coutyLen As Integer, ByVal timezonebuf As Integer, ByVal timezoneLen As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumMatches", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumMatches(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumPOICategories", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumPOICategories(ByVal serverID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSPOICategoryName", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSPOICategoryName(ByVal serverID As Integer, ByVal index As Integer, ByVal buffer As String, ByVal bufSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetLockRadItem", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetLockRadItem(ByVal tripID As Integer, ByVal index As Integer, ByVal buffer As String, ByVal bufSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSTripCacheSave", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSTripCacheSave(ByVal serverIS As Short, ByVal file As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSTripCacheLoad", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSTripCacheLoad(ByVal serverID As Short, ByVal file As String) As Integer
    End Function


    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSStateList", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSStateList(ByVal serverID As Short) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSStateLineItem", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSStateLineItem(ByVal serverID As Short, ByVal index As Integer, ByVal buffer As String, ByVal bufSize As Integer, ByVal bAddCountry As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCountyList", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCountyList(ByVal serverID As Short, ByVal regionID As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCountyListItem", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCountyListItem(ByVal serverID As Short, ByVal regionID As String, ByVal index As Integer, ByVal buffer As String, ByVal bufSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetRptLine", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetPRptLine(ByVal tripID As Integer, ByVal rptNum As Integer, ByVal lineItem As Integer, ByVal buffer As String, ByVal bufSize As Integer)
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumRptLines", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumRptLines(ByVal tripID As Integer, ByVal rptNum As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetCalType", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetCalType(ByVal tripID As Integer, ByVal calcType As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetCalcTypeEx", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetCalcTypeEx(ByVal tripID As Integer, ByVal pRtType As Integer, ByVal pOtpeFlags As Integer, ByVal pVehType As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetBorderOpen", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetBorderOpen(ByVal tripID As Integer, ByVal open As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetShowFerryMiles", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetShowFerryMiles(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetAccessRule", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetAccessRule(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetKilometers", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetKilometers(ByVal tripID As Integer) As Integer
    End Function


    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetMiles", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetMiles(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetHubMode", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetHubMode(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetCost", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetCost(ByVal tripID As Integer, ByVal cost As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetCost", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetCost(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetResequence", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetResequence(ByVal tripID As Integer, ByVal changeDest As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetTollModes", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetTollModes(ByVal tripID As Integer, ByVal mode As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetOptions", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetOptions(ByVal tripID As Integer, ByVal opts As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetOptions", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetOptions(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSDefaults", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSDefaults(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetBreakHours", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSet(ByVal tripID As Integer, ByVal hours As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetBreakHours", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetBreakHours(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetBreakWaitHours", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetBreakWaitHours(ByVal tripID As Integer, ByVal hours As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetBreakWaitHours", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetBreakWaitHours(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetOnRoad", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetOnRoad(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetCustomMode", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetCustomMode(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetOldMode", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetOldMode(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetUseShapePts", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetUseShapePts(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetAlphaOrder", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetAlphaOrder(ByVal tripID As Integer, ByVal alphaOrder As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSConvertLLToPlace", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSConvertLLToPlace(ByVal tripID As Integer, ByVal yesNo As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSDeleteCustomPlace", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAddCustomPlace(ByVal serverID As Short, ByVal name As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFLink", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFLink(ByVal tripID As Integer, ByVal favor As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFLinkClear", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFLinkClear(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFActivate", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFActivate(ByVal serverID As Integer, ByVal pSetName As String, ByVal bActivate As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFActivateRegion", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFActivateRegion(ByVal serverID As Short, ByVal pRegionID As String, ByVal bActivate As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFExportSet", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFExportSet(ByVal serverID As Short, ByVal pSetName As String, ByVal pFilename As String, ByVal pDelimeter As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFExportRegion", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFExportRegion(ByVal serverID As Short, ByVal regionID As String, ByVal pFilename As String, ByVal pDelimiter As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGeofenceActivateSet", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGeofeneceActivateSet(ByVal serverID As Short, ByVal pSetName As String, ByVal iActivate As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGeofenceExportSet", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGeofenceExportSet(ByVal serverID As Short, ByVal pSetName As String, ByVal pFilename As String, ByVal pDelimiter As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCalcDisToRoute", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCalcDisToRoute(ByVal tripID As Integer, ByVal location As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetLocAtMiles", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetLocAtMiles(ByVal tripID As Integer, ByVal miles As Integer, ByVal pLocation As String, ByVal size As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetLocAtMinutes", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetLocAtMinutes(ByVal tripID As Integer, ByVal minutes As Integer, ByVal pLocation As String, ByVal size As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSLatLongAtMiles", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSLatLongAtMiles(ByVal tripID As Integer, ByVal miles As Integer, ByVal latlong As String, ByVal useShpPts As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSLatLongAtMinutes", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSLatLongAtMinutes(ByVal tripID As Integer, ByVal minutes As Integer, ByVal latlong As String, ByVal useShpPts As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSLatLongRoute", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSLatLongEnRoute(ByVal tripID As Integer, ByVal latlong As String, ByVal numPairs As Integer, ByVal ShpPts As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetKilometers", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetVehiclConfig(ByVal tripID As Integer, ByVal units As Integer, ByVal overPerm As Integer, ByVal heights As Integer, ByVal width As Integer, ByVal lenght As Integer, ByVal weight As Integer, ByVal axle As Integer, ByVal lcv As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetProfielName", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetProfileName(ByVal tripID As Integer, ByVal profileName As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetCostOPtions", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetCostOptions(ByVal tripID As Integer, ByVal fuelInUnit As Integer, ByVal fuelCost As Integer, ByVal dpuCostLoaded As Integer, ByVal dpuCOstEmpty As Integer, ByVal otherCostLoaded As Integer, ByVal otherCostEmpty As Integer, ByVal costTimeLoaded As Integer, ByVal costTimeEmpty As Integer, ByVal greenHouseGas As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAddPing", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAddPing(ByVal tripID As Integer, ByVal tripLatLon As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSReduceCalculate", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSReduceCalculate(ByVal tripID As Integer, ByVal maxMilesOffRoute As Integer, ByVal highwayOnly As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSReduceTrip", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSReduceTrip(ByVal serverID As Short, ByVal FilePath As String, ByVal ColTrucksId As Integer, ByVal ColTruckIdLen As Integer, ByVal ColTime As Integer, ByVal ColTimeLen As Integer, ByVal ColDate As Integer, ByVal ColDateLen As Integer, ByVal ColLatLong As Integer, ByVal ColLatLongLen As Integer, ByVal HourWindow As Integer, ByVal dMaxMilesOffRoute As Integer, ByVal bHighwayOnly As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetNLAbbreviation", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetNLAbbreviation(ByVal tripID As Integer, ByVal CanorMx As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetVehicleType", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetVehicleType(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetRoadNameOnly", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetRoadNameOnly(ByVal tripID As Integer, ByVal onOff As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetExactLevel", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetExactLevel(ByVal serverID As Short, ByVal threshold As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetExactLevel", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetExactLevel(ByVal serverID As Short) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetTrustLevel", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetTrustLevel(ByVal serverID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetRouteLevel", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetRouteLevel(ByVal tripID As Integer, ByVal UseStreets As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetExchRate", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetExchRate(ByVal tripID As Integer, ByVal convRate As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSFuelOptimize", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSFuelOptimize(ByVal tripID As Integer, ByVal vehicle As String, ByVal Capacity As Integer, ByVal level As Integer, ByVal MPG As Integer, ByVal StatusReport As String, ByVal RepSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetHazOption", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetHazOption(ByVal tripID As Integer, ByVal hazType As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetRouteInfo", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetRouteInfo(ByVal tripID As Integer, ByVal legNum As Integer, ByVal pLinks As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetfxRoute", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetIGrfxRoute(ByVal tripID As Integer, ByVal IGrfxRoute As Integer, ByVal pIRoute As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetNumRouteLinks", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetNumRouteLinks(ByVal tripID As Integer, ByVal legNum As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSUpdateRouteInfo", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSUpdateRouteInfo(ByVal tripID As Integer, ByVal legNum As Integer, ByVal numLinks As Integer, ByVal pLinks As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAirDisToRte", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAirDisToRte(ByVal tripID As Integer, ByVal location As String, ByVal legNum As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAirDisToRte2", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAirDisToRte2(ByVal tripID As Integer, ByVal location As String, ByVal legNum As Integer, ByVal dir As String, ByVal recalc As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAirDisToLinks", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAirDisToLinks(ByVal serverID As Short, ByVal location As String, ByVal dir As String, ByVal pLinks As Integer, ByVal numLinks As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSTranslateAlias", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSTranslateAlias(ByVal tripID As Integer, ByVal translate As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetErrorEx", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetErrorEx(ByVal tripID As Integer, ByVal buffer As String, ByVal size As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSMatrixSetOptions", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSMatrixSetOptions(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSMatrixGetCell", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSMatrixGetCell(ByVal orginIndex As Integer, ByVal destIndex As Integer, ByVal rptType As Integer, ByVal pBuffer As String, ByVal bufSize As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFLoad", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFLoad(ByVal serverID As Short, ByVal filename As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFSave", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFSave(ByVal serverID As Short) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFLoadRegion", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFLoadForRegion(ByVal serverID As Short, ByVal filename As String, ByVal regionID As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAFSaveForRegion", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAFSaveForRegion(ByVal serverID As Short, ByVal regionID As String) As Integer
    End Function

    ' Trip management
    ' Declare Function PCMSNewTrip (ByVal serverID as Integer) As Long
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNewTrip", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNewTrip(ByVal serverID As Short) As Integer
    End Function
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSDeleteTrip", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Sub PCMSDeleteTrip(ByVal tripID As Integer)
    End Sub

    ' Trip options, stops, etc.
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCalculate", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCalculate(ByVal tripID As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSAddStop", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSAddStop(ByVal tripID As Integer, ByVal stopName As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSClearStops", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Sub PCMSClearStops(ByVal tripID As Integer)
    End Sub

    ' Lookup Functions
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSLookup", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSLookup(ByVal tripID As Integer, ByVal cityZip As String, ByVal easy As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetMatch", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetMatch(ByVal tripID As Integer, ByVal index As Integer, ByVal buffer As String, ByVal bufLen As Integer) As Integer
    End Function

    <DllImport(PCMSRV, EntryPoint:="PCMSGetFmtMatch2", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetFmtMatch2(ByVal tripID As Integer, ByVal index As Integer, ByVal addrBuffer As String, ByVal addrLen As Integer, ByVal cityBuffer As String, ByVal cityLen As Integer, _
 ByVal stateBuffer As String, ByVal stateLen As Integer, ByVal zipBuffer As String, ByVal zipLen As Integer, ByVal countyBuffer As String, ByVal countyLen As Integer) As Integer
    End Function

    ' Report functions
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetHTMLRpt", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetHTMLRpt(ByVal tripID As Integer, ByVal rptNum As Integer, ByVal buffer As String, ByVal bufLen As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumHTMLRptBytes", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumHTMLRptBytes(ByVal tripID As Integer, ByVal rptNum As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetRpt", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetRpt(ByVal tripID As Integer, ByVal rptNum As Integer, ByVal buffer As String, ByVal bufLen As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumRptBytes", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumRptBytes(ByVal tripID As Integer, ByVal rptNum As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSNumLegs", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSNumLegs(ByVal tripID As Integer) As Integer
    End Function

    '<SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    '<DllImport(PCMSRV, EntryPoint:="PCMSGetLegInfo", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    'Public Shared Function PCMSGetLegInfo(ByVal tripID As Integer, ByVal indx As Integer, ByRef pLegInfo As LegInfo) As Integer
    'End Function


    ' Extended Trip options
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetCalcTypeEx", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Sub PCMSSetCalcTypeEx(ByVal tripID As Integer, ByVal rtType As Integer, ByVal optFlags As Integer, ByVal vehType As Integer)
    End Sub

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCheckPlaceName", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCheckPlaceName(ByVal serverID As Short, ByVal cityZip As String) As Integer
    End Function


    ' Time based routing and Traffic apis
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetRoadSpeedType", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetRoadSpeedType(ByVal tripID As Integer, ByVal roadSpeed As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetDepartureTime", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetDepartureTime(ByVal tripID As Integer, ByVal dateType As Integer, ByVal timeZone As Integer, ByVal DepartureYear As Integer, ByVal departureMonth As Integer, ByVal departureDay As Integer, _
 ByVal departureHour As Integer, ByVal departureMinute As Integer, ByVal departureSecond As Integer, ByVal departureDayofWeek As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSSetArrivalTime", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSSetArrivalTime(ByVal tripID As Integer, ByVal dateType As Integer, ByVal timeZone As Integer, ByVal arrivalYear As Integer, ByVal arrivalMonth As Integer, ByVal arrivalDay As Integer, _
 ByVal arrivalHour As Integer, ByVal arrivalMinute As Integer, ByVal arrivalSecond As Integer, ByVal arrivalDayofWeek As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetETA", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetETA(ByVal tripID As Integer, ByVal legNumber As Integer, ByRef arrivalYear As Integer, ByRef arrivalMonth As Integer, ByRef arrivalDay As Integer, ByRef arrivalHour As Integer, _
 ByRef arrivalMinute As Integer, ByRef arrivalSecond As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetETD", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetETD(ByVal tripID As Integer, ByVal legNumber As Integer, ByRef departureYear As Integer, ByRef departureMonth As Integer, ByRef departureDay As Integer, ByRef departureHour As Integer, _
 ByRef departureMinute As Integer, ByRef departureSecond As Integer) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSTrafficStatus", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSTrafficStatus() As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetStop", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetStop(ByVal tripID As Integer, ByVal which As Integer, ByVal buffer As String, ByVal bufferSize As Integer) As Integer
    End Function


    'RouteSync related apis
    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetAFMsgBytes", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetAFMsgBytes(ByVal setName As String, ByVal buffer As String, ByVal bufferSize As String) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSGetManagedRouteMsgBytes", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSGetManagedRouteMsgBytes(ByVal trip As Integer, ByVal buffer As String, ByVal bufferSize As Integer, ByVal lOORCompliance As Integer, ByVal dOORDist As Double, ByVal bIsFirstLegManaged As Boolean) As Integer
    End Function

    <SqlFunction(IsDeterministic:=True, IsPrecise:=True)> _
    <DllImport(PCMSRV, EntryPoint:="PCMSCreateManagedRouteMsgBytes", ExactSpelling:=False, CharSet:=CharSet.Ansi, SetLastError:=True)> _
    Public Shared Function PCMSCreateManagedRouteMsgBytes(ByVal trip As Integer, ByVal buffer As Byte(), ByVal bufferSize As Integer, ByVal latLongs As String, ByVal lOORCompliance As Integer, ByVal dOORDist As Double) As Integer
    End Function
End Class
