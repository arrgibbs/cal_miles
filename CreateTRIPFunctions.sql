USE [tmw_live]
GO

--DECLARE @miles INT 
--DECLARE @svr SMALLINT
--DECLARE @return INT

--SELECT @svr = dbo.PCMSOpenServer (0,0)
--PRINT @svr

--SELECT @miles = dbo.GetMiles (@svr, '49330', '49315') 
--PRINT @miles 

----SET @miles = 4

--SELECT @return = dbo.PCMSCloseServer (@svr)
--PRINT @return 

--WHERE  @return IS NOT NULL

--PRINT PCMMILER.dbo.TestFunc()



--CREATE FUNCTION GetMiles(@svr smallint, @orig nvarchar(10), @dest nvarchar(10)) 
--Returns Integer
--AS 
--EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.GetMiles
--GO

--Select dbo.cal_route_miles_MTS(@ordnumber) as 'Cal_Route_Miles'
--Select dbo.cal_actual_miles_MTS(@ordnumber) as 'Cal_Actual_Miles'


/****** Object:  UserDefinedFunction [dbo].[PCMSAddCustomPlace]    Script Date: 04/29/2014 10:12:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAddCustomPlace]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAddCustomPlace]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAddPing]    Script Date: 04/29/2014 10:14:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAddPing]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAddPing]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAddressToLatLong]    Script Date: 04/29/2014 10:18:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAddressToLatLong]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAddressToLatLong]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAddStop]    Script Date: 04/29/2014 10:18:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAddStop]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAddStop]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAFActivateRegion]    Script Date: 04/29/2014 10:19:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFActivateRegion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFActivateRegion]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAFActivateSet]    Script Date: 04/29/2014 10:19:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFActivateSet]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFActivateSet]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAFExportRegion]    Script Date: 04/29/2014 10:20:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFExportRegion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFExportRegion]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAFExportSet]    Script Date: 04/29/2014 10:20:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFExportSet]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFExportSet]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAFLink]    Script Date: 04/29/2014 10:21:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFLink]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFLink]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAFLinksClear]    Script Date: 04/29/2014 10:21:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFLinksClear]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFLinksClear]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSAFLoad]    Script Date: 04/29/2014 10:21:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFLoad]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFLoad]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSAFLoadForRegion]    Script Date: 04/29/2014 10:22:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFLoadForRegion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFLoadForRegion]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSAFSave]    Script Date: 04/29/2014 10:22:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFSave]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFSave]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSAFSaveForRegion]    Script Date: 04/29/2014 10:22:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAFSaveForRegion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAFSaveForRegion]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSAirDisToLinks]    Script Date: 04/29/2014 10:23:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAirDisToLinks]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAirDisToLinks]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSAirDisToRte]    Script Date: 04/29/2014 10:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAirDisToRte]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAirDisToRte]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSAirDisToRte2]    Script Date: 04/29/2014 10:23:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSAirDisToRte2]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSAirDisToRte2]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCalcDistance]    Script Date: 04/29/2014 10:24:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCalcDistance]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCalcDistance]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCalcDistance2]    Script Date: 04/29/2014 10:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCalcDistance2]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCalcDistance2]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCalcDistance3]    Script Date: 04/29/2014 10:26:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCalcDistance3]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCalcDistance3]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCalcDisToRoute]    Script Date: 04/29/2014 10:27:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCalcDisToRoute]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCalcDisToRoute]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSCalcTrip]    Script Date: 04/29/2014 10:27:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCalcTrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCalcTrip]
GO


/****** Object:  UserDefinedFunction [dbo].[PCMSCalculate]    Script Date: 04/29/2014 10:28:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCalculate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCalculate]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCheckPlaceName]    Script Date: 04/29/2014 10:28:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCheckPlaceName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCheckPlaceName]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCityToLatLong]    Script Date: 04/29/2014 10:28:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCityToLatLong]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCityToLatLong]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSClearStops]    Script Date: 04/29/2014 10:28:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSClearStops]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSClearStops]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCloseServer]    Script Date: 04/29/2014 10:29:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCloseServer]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCloseServer]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSConvertLLToPlace]    Script Date: 04/29/2014 10:29:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSConvertLLToPlace]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSConvertLLToPlace]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCountryList]    Script Date: 04/29/2014 10:29:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCountryList]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCountryList]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSCountryListItem]    Script Date: 04/29/2014 10:30:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSCountryListItem]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSCountryListItem]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSDefaults]    Script Date: 04/29/2014 10:30:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSDefaults]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSDefaults]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSDeleteCustomPlace]    Script Date: 04/29/2014 10:31:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSDeleteCustomPlace]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSDeleteCustomPlace]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSDeleteStop]    Script Date: 04/29/2014 10:31:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSDeleteStop]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSDeleteStop]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSDeleteTrip]    Script Date: 04/29/2014 10:32:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSDeleteTrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSDeleteTrip]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSFuelOptimize]    Script Date: 04/29/2014 10:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSFuelOptimize]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSFuelOptimize]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGeofenceActivateSet]    Script Date: 04/29/2014 10:34:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGeofenceActivateSet]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGeofenceActivateSet]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGeofenceExportSet]    Script Date: 04/29/2014 10:34:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGeofenceExportSet]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGeofenceExportSet]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetAFMsgBytes]    Script Date: 04/29/2014 10:34:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetAFMsgBytes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetAFMsgBytes]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetBreakHours]    Script Date: 04/29/2014 10:35:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetBreakHours]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetBreakHours]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetBreakWaitHours]    Script Date: 04/29/2014 10:35:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetBreakWaitHours]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetBreakWaitHours]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetCalcTypeEx]    Script Date: 04/29/2014 10:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetCalcTypeEx]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetCalcTypeEx]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetCost]    Script Date: 04/29/2014 10:37:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetCost]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetCost]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetDuration]    Script Date: 04/29/2014 10:37:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetDuration]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetDuration]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetErrorEx]    Script Date: 04/29/2014 10:39:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetErrorEx]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetErrorEx]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetETA]    Script Date: 04/29/2014 10:39:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetETA]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetETA]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetETD]    Script Date: 04/29/2014 10:39:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetETD]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetETD]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetExactLevel]    Script Date: 04/29/2014 10:40:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetExactLevel]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetExactLevel]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetFmtMatch2]    Script Date: 04/29/2014 10:41:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetFmtMatch2]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetFmtMatch2]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetFmtMatch3]    Script Date: 04/29/2014 10:41:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetFmtMatch3]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetFmtMatch3]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetHTMLRpt]    Script Date: 04/29/2014 10:42:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetHTMLRpt]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetHTMLRpt]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetIGrfxRoute]    Script Date: 04/29/2014 10:42:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetIGrfxRoute]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetIGrfxRoute]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetLocAtMiles]    Script Date: 04/29/2014 10:54:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetLocAtMiles]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetLocAtMiles]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetLocAtMinutes]    Script Date: 04/29/2014 10:54:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetLocAtMinutes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetLocAtMinutes]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetLockRadItem]    Script Date: 04/29/2014 10:54:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetLockRadItem]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetLockRadItem]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetManagedRouteMsgBytes]    Script Date: 04/29/2014 10:56:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetManagedRouteMsgBytes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetManagedRouteMsgBytes]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetMatch]    Script Date: 04/29/2014 10:56:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetMatch]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetMatch]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetNumRouteLinks]    Script Date: 04/29/2014 10:57:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetNumRouteLinks]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetNumRouteLinks]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetOptions]    Script Date: 04/29/2014 11:00:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetOptions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetOptions]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetRegionName]    Script Date: 04/29/2014 11:02:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetRegionName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetRegionName]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetRouteInfo]    Script Date: 04/29/2014 11:02:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetRouteInfo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetRouteInfo]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetRpt]    Script Date: 04/29/2014 11:04:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetRpt]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetRpt]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetRptLine]    Script Date: 04/29/2014 11:05:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetRptLine]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetRptLine]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetStop]    Script Date: 04/29/2014 11:07:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetStop]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetStop]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetStopType]    Script Date: 04/29/2014 11:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetStopType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetStopType]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetToll]    Script Date: 04/29/2014 11:08:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetToll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetToll]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetTollBreakdown]    Script Date: 04/29/2014 11:08:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetTollBreakdown]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetTollBreakdown]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetTollDiscountName]    Script Date: 04/29/2014 11:08:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetTollDiscountName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetTollDiscountName]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSGetTrustLevel]    Script Date: 04/29/2014 11:09:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSGetTrustLevel]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSGetTrustLevel]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSLatLongAtMiles]    Script Date: 04/29/2014 11:09:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSLatLongAtMiles]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSLatLongAtMiles]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSLatLongAtMinutes]    Script Date: 04/29/2014 11:09:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSLatLongAtMinutes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSLatLongAtMinutes]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSLatLongsEnRoute]    Script Date: 04/29/2014 11:11:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSLatLongsEnRoute]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSLatLongsEnRoute]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSLatLongToAddress]    Script Date: 04/29/2014 11:11:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSLatLongToAddress]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSLatLongToAddress]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSLatLongToCity]    Script Date: 04/29/2014 11:14:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSLatLongToCity]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSLatLongToCity]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSLookup]    Script Date: 04/29/2014 11:15:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSLookup]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSLookup]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSMatrixGetCell]    Script Date: 04/29/2014 11:16:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSMatrixGetCell]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSMatrixGetCell]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSMatrixSetOptions]    Script Date: 04/29/2014 11:17:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSMatrixSetOptions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSMatrixSetOptions]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNewTrip]    Script Date: 04/29/2014 11:17:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNewTrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNewTrip]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNewTripWithRegion]    Script Date: 04/29/2014 11:17:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNewTripWithRegion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNewTripWithRegion]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumHTMLRptBytes]    Script Date: 04/29/2014 11:18:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumHTMLRptBytes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumHTMLRptBytes]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumLegs]    Script Date: 04/29/2014 11:18:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumLegs]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumLegs]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumMatches]    Script Date: 04/29/2014 11:18:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumMatches]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumMatches]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumPOICategories]    Script Date: 04/29/2014 11:18:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumPOICategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumPOICategories]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumRegions]    Script Date: 04/29/2014 11:21:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumRegions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumRegions]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumRptBytes]    Script Date: 04/29/2014 11:21:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumRptBytes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumRptBytes]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumRptLines]    Script Date: 04/29/2014 11:21:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumRptLines]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumRptLines]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumStops]    Script Date: 04/29/2014 11:23:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumStops]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumStops]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSNumTollDiscounts]    Script Date: 04/29/2014 11:23:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSNumTollDiscounts]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSNumTollDiscounts]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSOpenServer]    Script Date: 04/29/2014 11:23:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSOpenServer]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSOpenServer]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSOptimize]    Script Date: 04/29/2014 11:24:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSOptimize]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSOptimize]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSPOICategoryName]    Script Date: 04/29/2014 11:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSPOICategoryName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSPOICategoryName]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSReduceCalculate]    Script Date: 04/29/2014 11:25:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSReduceCalculate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSReduceCalculate]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSReduceTrip]    Script Date: 04/29/2014 11:27:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSReduceTrip]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSReduceTrip]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetAccessRule]    Script Date: 04/29/2014 11:27:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetAccessRule]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetAccessRule]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetAlphaOrder]    Script Date: 04/29/2014 11:27:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetAlphaOrder]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetAlphaOrder]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetArrivalTime]    Script Date: 04/29/2014 11:27:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetArrivalTime]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetArrivalTime]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetBorderOpen]    Script Date: 04/29/2014 11:29:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetBorderOpen]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetBorderOpen]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetBreakHours]    Script Date: 04/29/2014 11:29:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetBreakHours]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetBreakHours]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetBreakWaitHours]    Script Date: 04/29/2014 11:29:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetBreakWaitHours]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetBreakWaitHours]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetCalcType]    Script Date: 04/29/2014 11:29:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetCalcType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetCalcType]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetCalcTypeEx]    Script Date: 04/29/2014 11:30:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetCalcTypeEx]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetCalcTypeEx]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetCost]    Script Date: 04/29/2014 11:32:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetCost]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetCost]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetCostOptions]    Script Date: 04/29/2014 11:32:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetCostOptions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetCostOptions]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetCustomMode]    Script Date: 04/29/2014 11:32:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetCustomMode]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetCustomMode]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetDepartureTime]    Script Date: 04/29/2014 11:33:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetDepartureTime]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetDepartureTime]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetExactLevel]    Script Date: 04/29/2014 11:33:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetExactLevel]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetExactLevel]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetExchRate]    Script Date: 04/29/2014 11:33:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetExchRate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetExchRate]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetHazOption]    Script Date: 04/29/2014 11:33:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetHazOption]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetHazOption]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetHubMode]    Script Date: 04/29/2014 11:34:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetHubMode]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetHubMode]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetKilometers]    Script Date: 04/29/2014 11:34:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetKilometers]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetKilometers]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetLoaded]    Script Date: 04/29/2014 11:34:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetLoaded]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetLoaded]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetMiles]    Script Date: 04/29/2014 11:35:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetMiles]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetMiles]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetNLAbbreviation]    Script Date: 04/29/2014 11:35:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetNLAbbreviation]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetNLAbbreviation]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetOldMode]    Script Date: 04/29/2014 11:36:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetOldMode]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetOldMode]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetOldModeForRegion]    Script Date: 04/29/2014 11:36:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetOldModeForRegion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetOldModeForRegion]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetOnRoad]    Script Date: 04/29/2014 11:36:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetOnRoad]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetOnRoad]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetOptions]    Script Date: 04/29/2014 11:36:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetOptions]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetOptions]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetProfielName]    Script Date: 04/29/2014 11:37:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetProfielName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetProfielName]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetResequence]    Script Date: 04/29/2014 11:39:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetResequence]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetResequence]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetRoadNameOnly]    Script Date: 04/29/2014 11:40:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetRoadNameOnly]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetRoadNameOnly]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetRoadSpeedType]    Script Date: 04/29/2014 11:40:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetRoadSpeedType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetRoadSpeedType]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetRouteLevel]    Script Date: 04/29/2014 11:40:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetRouteLevel]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetRouteLevel]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetShowFerryMiles]    Script Date: 04/29/2014 11:40:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetShowFerryMiles]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetShowFerryMiles]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetTollModes]    Script Date: 04/29/2014 11:40:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetTollModes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetTollModes]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetUseShapePts]    Script Date: 04/29/2014 11:40:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetUseShapePts]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetUseShapePts]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetVehiclConfig]    Script Date: 04/29/2014 11:41:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetVehiclConfig]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetVehiclConfig]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSSetVehicleType]    Script Date: 04/29/2014 11:41:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSSetVehicleType]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSSetVehicleType]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSStateLineItem]    Script Date: 04/29/2014 11:41:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSStateLineItem]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSStateLineItem]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSStateList]    Script Date: 04/29/2014 11:41:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSStateList]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSStateList]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSTranslateAlias]    Script Date: 04/29/2014 11:42:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSTranslateAlias]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSTranslateAlias]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSTripCacheLoad]    Script Date: 04/29/2014 11:42:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSTripCacheLoad]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSTripCacheLoad]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSTripCacheSave]    Script Date: 04/29/2014 11:42:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSTripCacheSave]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSTripCacheSave]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSUpdateRouteInfo]    Script Date: 04/29/2014 11:42:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSUpdateRouteInfo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSUpdateRouteInfo]
GO

/****** Object:  UserDefinedFunction [dbo].[PCMSZipCodeOption]    Script Date: 04/29/2014 11:42:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PCMSZipCodeOption]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PCMSZipCodeOption]
GO


/****** Object:  SqlAssembly [PCMDLLINT]    Script Date: 04/29/2014 11:44:16 ******/
IF  EXISTS (SELECT * FROM sys.assemblies asms WHERE asms.name = N'PCMDLLINT' and is_user_defined = 1)
DROP ASSEMBLY [PCMDLLINT]

GO


/****** Object:  SqlAssembly [PCMDLLINT]    Script Date: 04/29/2014 11:44:16 ******/
CREATE ASSEMBLY [PCMDLLINT]
AUTHORIZATION [dbo]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C010300F49B5E530000000000000000E00002210B010B00003A00000006000000000000CE59000000200000006000000000001100200000000200000400000000000000040000000000000000A000000002000000000000030040850000100000100000000010000010000000000000100000000000000000000000805900004B00000000600000D802000000000000000000000000000000000000008000000C000000D85800001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000D439000000200000003A000000020000000000000000000000000000200000602E72737263000000D80200000060000000040000003C0000000000000000000000000000400000402E72656C6F6300000C0000000080000000020000004000000000000000000000000000004000004200000000000000000000000000000000B0590000000000004800000002000500582000008038000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E02281200000A2A42534A4201000100000000000C00000076322E302E35303732370000000005006C0000009C1E0000237E0000081F00008C16000023537472696E6773000000009435000008000000235553009C350000100000002347554944000000AC350000D402000023426C6F620000000000000002000001571D00140902000000FA253300160000010000001600000003000000450000008D000000AE010000130000003F00000099000000030000008C00000001000000020000000100000000000A00010000000000060045003E0006004C003E000600C813B6130600DF13B6130600FC13B61306001B14B61306003414B61306004D14B61306006814B61306008314B61306009C14B6130600B514B6130600D014B6130600E914B6130600151502153F00291500000600581538150600781538150A00C715AC150600FB15DC1506006B16DC1506008116DC15000000000100000000000100010001001000180000000500010001000A0110002D000000090040008E00518056000A0053805D00260053806C00260053807A0026005380880026005380970026005380A00026005380B0003B005380C6003B005380DB003B005380EB003B00538000013B00538014013B0053802A013B0053803B013B0053804B01260053805601260053806001260053806C01260053807401260053807E0126005380880126005380960126005380A20126005380AD013B005380B7013B005380C2013B005380D2013B005380DF013B005380EC013B005380FC013B00538007023B005380120226005380220226005380310226005380420226005380530226005380640226005380720226005380830226005380960226005380A60226005380B90226005380C80226005380DA0226005380EC0226005380FE02260053800C03260053801803260053802703260053803603260053804A03260053805903260053806A03260053807C0326005380910326005380A20326005380B70326005380C90326005380D90326005380EB0326005380FB0326005380080426000600B80D58020600C10D58020600CA0D58020600D20D58020600DA0D58020600E30D580200000000800096201804D700010000000000800096202704DD00030000000000800096203704E200040000000000800096204804E900070000000000800096205A04F1000B0000000000800096206C04DD00100000000000800096207804FA00110000000000800096208704FA00120000000000800096209504FF0013000000000080009620A104FA0015000000000080009620B004050116000000000080009620BB040C0119000000000080009620C80414011D000000000080009620DB041A011F000000000080009620ED04220123000000000080009620FF041A012700000000008000962014051A012B0000000000800096202905DD002F00000000008000962038052A01300000000000800096204A053001320000000000800096205C0514013600000000008000962072053801380000000000800096207F05FA003B0000000000800096208C05FA003C0000000000800096209C05FA003D000000000080009620A805DD003E000000000080009620BD0530013F000000000080009620D5053F0143000000000080009620EA05460146000000000080009620F905FA004800000000008000962006064C0149000000000080009620160653014C00000000008000962024065A014F0000000000800096202F06610152000000000080009620400671015E0000000000800096205106FA006C0000000000800096206006FA006D00000000008000962075060C016E00000000008000962089060C01720000000000800096209C06140176000000000080009620AE06140178000000000080009620C006DD007A000000000080009620CE0683017B000000000080009620E006140180000000000080009620F0068C01820000000000800096200407950187000000000080009620130746018C00000000008000962023070C018E000000000080009620320746019200000000008000962046070C019400000000008000962051074601980000000000800096206107FA009A0000000000800096206D0746019B0000000000800096207D07FA009D0000000000800096208D079E019E0000000000800096209F079E01A0000000000080009620B5079E01A2000000000080009620C707FA00A4000000000080009620D907FA00A5000000000080009620E6079E01A6000000000080009620F5074601A80000000000800096200108FA00AA0000000000800096200D089E01AB0000000000800096201F084601AD0000000000800096203008A401AF0000000000800096203F08FA00B10000000000800096204E08AA01B20000000000800096206008AA01B600000000008000962072084601BA0000000000800096208708B201BC0000000000800096209C08B201C6000000000080009620AF08C001D0000000000080009620BA08C001D8000000000080009620C508CC01E0000000000080009620D7080C01E0000000000080009620E308D001E4000000000080009620F508D701E70000000000800096201109FA00ED0000000000800096201E09A401EE0000000000800096203009FA00F00000000000800096204209A401F10000000000800096205809FA00F30000000000800096206E09A401F40000000000800096208509FA00F60000000000800096209C099E01F7000000000080009620AA099E01F9000000000080009620BC099E01FB000000000080009620CB09E101FD000000000080009620E3099E0100010000000080009620F6099E0102010000000080009620080A9E01040100000000800096201D0AE20006010000000080009620300A140109010000000080009620460A9E010B010000000080009620520AFA000D010000000080009620630AE8010E010000000080009620750AE801110100000000800096208A0AEF01140100000000800096209A0AEF0118010000000080009620AD0AF7011C010000000080009620C50AEF011F010000000080009620DB0AFF0023010000000080009620EE0A0C0125010000000080009620000B0C0129010000000080009620140BFE012D010000000080009620270BFE01310100000000800096203C0B060235010000000080009620500B0E0239010000000080009620650BFF0042010000000080009620780BB201440100000000800096208B0BFF004E010000000080009620970B530150010000000080009620AB0B1B0253010000000080009620BA0BFF0060010000000080009620D00B9E0162010000000080009620E30B9E0164010000000080009620F70B2A0166010000000080009620090CDD00680100000000800096201B0CDD00690100000000800096202D0C46016A0100000000800096203F0C46016C0100000000800096204F0C2C026E010000000080009620600C460175010000000080009620710C4C0177010000000080009620820C4C017A010000000080009620940C46017D010000000080009620A90CAA017F010000000080009620BD0C050183010000000080009620CD0C370286010000000080009620DE0CF1008B010000000080009620F00C460190010000000080009620030D050192010000000080009620120D4002950100000000800096202E0D4A029B0100000000800096204D0DFA00A1010000000080009620620D9501A2010000000080009620740D1401A70100000000800096207F0DDD00A90100000000800096208A0DE200AA0100000000800096209E0D1401AD015020000000008618B20D5402AF0100000100EC0D00000200F40D00000100F90D00000100F90D00000200020E00000300070E00000100F90D00000200020E00000300070E000004000C0E00000100F90D00000200020E00000300070E000004000C0E00000500160E00000100F90D000001001E0E000001001E0E000001001E0E00000200250E000001001E0E000001001E0E000002002E0E00000300360E000001001E0E000002003B0E00000300410E00000400480E00000100F90D000002002E0E00000100F90D000002004F0E00000300410E00000400540E00000100F90D000002005F0E00000300410E00000400540E00000100F90D000002004F0E00000300410E00000400540E00000100F90D000002005F0E00000300410E00000400540E00000100F90D00000100F90D00000200670E00000100F90D000002006E0E000003004F0E00000400720E00000100F90D000002007A0E000001001E0E00000200830E00000300070E00000100890E000001001E0E00000100890E00000100F90D00000100F90D000002006E0E00000300410E00000400720E000001001E0E00000200900E000003009C0E000001001E0E00000200A20E000001001E0E000001001E0E00000200A20E00000300A80E000001001E0E00000200A20E00000300AD0E000001001E0E00000200B40E00000300B90E000001001E0E00000200A20E00000300C30E00000400CB0E00000500D30E00000600DB0E00000700E30E00000800EC0E00000900F50E00000A00FC0E00000B00030F00000C000D0F000001001E0E00000200A20E00000300C30E00000400CB0E00000500D30E00000600DB0E00000700E30E00000800EC0E00000900F50E00000A00FC0E00000B00030F00000C000D0F00000D00170F00000E00220F000001001E0E00000100F90D00000100F90D000002003B0E00000300410E00000400720E000001001E0E000002003B0E00000300410E00000400720E00000100F90D000002002E0F00000100F90D000002002E0F00000100F90D00000100F90D000002003B0E00000300410E00000400720E00000500330F00000100F90D000002007A0E00000100F90D000002007A0E000003003B0E00000400410E00000500720E000001001E0E00000200400F00000300470F00000400410E00000500720E000001001E0E00000200400F000001001E0E00000200400F00000300410E00000400480E000001001E0E00000200400F000001001E0E00000200400F00000300410E00000400480E000001001E0E00000200400F000001001E0E000001001E0E000002004F0F000001001E0E000001001E0E00000200580F000001001E0E000002005D0F000001001E0E000002005D0F000001001E0E000001001E0E000001001E0E000002005D0F000001001E0E00000200630F000001001E0E000001001E0E00000200680F000001001E0E00000200730F000001001E0E00000200780F000001001E0E000001001E0E000002007D0F00000300840F000004008D0F000001001E0E00000200950F000003009D0F00000400A70F000001001E0E00000200B00F000001001E0E00000200BA0F00000300C30F00000400CC0F00000500DA0F00000600E90F00000700F60F00000800041000000900141000000A002410000001001E0E00000200BA0F00000300C30F000004003710000005004310000006005010000007005B1000000800671000000900751000000A008310000001001E0E000002009410000003003710000004004310000005005010000006005B10000007006710000008007510000001001E0E000002009410000003009E1000000400DA0F00000500E90F00000600F60F000007000410000008001410000001001E0E00000200A20E00000300410E00000400540E00000100AC1000000200410E00000300540E000001001E0E00000200410E00000300540E00000400B41000000500C31000000600CC10000001001E0E000001001E0E00000200DF10000001001E0E000001001E0E00000200DF10000001001E0E000001001E0E00000200160E000001001E0E000001001E0E000002005D0F000001001E0E000002005D0F000001001E0E000002005D0F00000100F90D000002007A0E000003005D0F000001001E0E000002005D0F000001001E0E00000200E510000001001E0E00000200F01000000100F90D000002004F0E00000300F61000000100F90D000002004F0E000001001E0E00000200FF10000001001E0E00000100F90D000002000511000003000E1100000100F90D000002001811000003000E1100000100F90D000002000511000003002211000004002C1100000100F90D000002007A0E000003002211000004002C1100000100F90D00000200051100000300371100000100F90D000002000511000003002211000004002C11000001001E0E00000200F610000001001E0E000002004111000003004711000004005111000001001E0E00000200160E000003004711000004005111000001001E0E000002004111000003005F0E000004005611000001001E0E00000200160E000003005F0E000004005611000001001E0E000002005F0E000003006011000004006911000001001E0E000002007011000003007611000004007F11000005008711000006008D11000007009411000008009B1100000900A011000001001E0E00000200A411000001001E0E00000200B01100000300BB1100000400C41100000500D21100000600DF1100000700EF1100000800FE11000009000D1200000A001B12000001001E0E000002002912000001001E0E00000200341200000300451200000100F90D000002005112000003005A12000004006512000005007312000006007B12000007008612000008008E1200000900991200000A00A41200000B00B21200000C00BD1200000D00CF12000001001E0E00000200DC12000001001E0E000002005D0F000001001E0E000002005D0F00000100F90D00000200E41200000100F90D00000100F90D000001001E0E00000200EE12000001001E0E00000200F912000001001E0E000002000213000003000A13000004001313000005001913000006001D13000007002A13000001001E0E000002003213000001001E0E000002003A13000003004113000001001E0E000002004813000003005313000001001E0E000002003A13000001001E0E000002003A13000003005B13000004004113000001001E0E00000200F610000003003A13000001001E0E00000200F610000003003A1300000400641300000500681300000100F90D00000200F610000003006413000004004113000005005B13000001001E0E000002006F13000001001E0E00000200410E000003007913000001001E0E000002007F1300000300720E00000400B41000000500C31000000600CC10000001001E0E000002007F1300000300720E00000400871300000500B41000000600C310000001001E0E000001009113000002009B1300000300A513000004007F1300000500720E00000100F90D00000200AD1300000100F90D00000100F90D00000200AD13000003007A0E00000100F90D000002007A0E1900B20D5B022100B20D5B022900B20D5B023100B20D5B023900B20D5B024100B20D5B024900B20D5B025100B20D5B025900B20D5B026100B20D60026900B20D5B027100B20D5B027900B20D65028900B20D6B029100B20D54029900B20D5402A100B20D5B020900B20D5402A900B20D95020E0004000D0006000800290006000C002C00060010002F0006001400320006001800350006001C003800080020003E0008002400430008002800480008002C004D00080030005200080034005700080038005C0008003C006100060040002900060044002C00060048002F0006004C003200060050002900060054002C00060058002F0006005C002C00060060002F00080064005C00080068003E0008006C004300080070004800080074006600080078006B0008007C007000080080007500060084007A00060088007D0006008C00800006009000830006009400860006009800890006009C008C000600A0008F000600A40092000600A80095000600AC0098000600B0009B000600B4009E000600B800A1000600BC00A4000600C000A7000600C400AA000600C800AD000600CC00B0000600D000B3000600D400B6000600D800B9000600DC00BC000600E000BF000600E400C2000600E800C5000600EC00C8000600F000CB000600F400CE000600F800D1000600FC00D4002000830070022E0033009B022E0053009B022E002B009B022E003B009B022E005B009B022E0023009B022E006B00A1022E007300AA022E007B00B3022E0063009B022E000B009B022E0013009B022E001B009B02400083007002600083007002800083007002A00083007002C00083007002E00083007002000183007002200183007002400183007002600183007002800183007002A00183007002C00183007002E00183007002000283007002200283007002400283007002600283007002800283007002A00283007002C00283007002E00283007002000383007002200383007002400383007002600383007002800383007002A00383007002C00383007002E00383007002000483007002200483007002400483007002600483007002800483007002A00483007002C00483007002E00483007002000583007002200583007002400583007002600583007002800583007002A00583007002C00583007002E00583007002000683007002200683007002400683007002600683007002800683007002A00683007002C00683007002E00683007002000783007002200783007002400783007002600783007002800783007002A00783007002C00783007002E00783007002000883007002200883007002400883007002600883007002800883007002A00883007002C00883007002E00883007002000983007002200983007002400983007002600983007002800983007002A00983007002C00983007002E00983007002000A83007002200A83007002400A83007002600A83007002800A83007002A00A83007002C00A83007002E00A83007002000B83007002200B83007002400B83007002600B83007002800B83007002A00B83007002C00B83007002E00B83007002000C83007002200C83007002400C83007002600C83007002800C83007002A00C83007002C00C83007002E00C83007002000D83007002200D83007002400D83007002600D83007002800D83007002A00D83007002C00D83007002E00D83007002000E83007002200E83007002400E83007002600E83007002800E83007002A00E83007002C00E83007002E00E83007002000F83007002200F83007002400F83007002600F83007002800F83007002A00F83007002C00F83007002E00F83007002001083007002201083007002401083007002601083007002801083007002A01083007002C01083007002E010830070020011830070022011830070024011830070026011830070028011830070020E1640166016420103001804010042010500270401004201070037040100420109004804010042010B005A04010042010D006C04010042010F00780401004201110087040100420113009504010042011500A104010042011700B004010042011900BB04010042011B00C804010042011D00DB04010042011F00ED04010042012100FF040100420123001405010042012500290501004201270038050100420129004A05010042012B005C05010042012D007205010042012F007F050100420131008C050100420133009C05010042013500A805010042013700BD05010042013900D505010042013B00EA05010042013D00F905010042013F000606010042014100160601004201430024060100420145002F0601004201470040060100420149005106010042014B006006010042014D007506010042014F0089060100420151009C06010042015300AE06010042015500C0060100420157001B16010042015900E006010042015B00F006010042015D000407010042015F00130701004201610023070100420163003207010042016500460701004201670051070100420169006107010042016B006D07010042016D007D07010042016F002D160100420171009F07010042017300B507010042017500C707010042017700D907010042017900E607010042017B00F507010042017D000108010042017F000D080100420181001F0801004201830030080100420185003F080100420187004E080100420189006008010042018B007208010042018D008708010042018F009C08010042019100AF08010042019300BA08010042019500C508010042019700D708010042019900E308010042019B00F508010042019D001109010042019F001E0901004201A100300901004201A300420901004201A500580901004201A7006E0901004201A900850901004201AB009C0901004201AD00AA0901004201AF00BC0901004201B100CB0901004201B300E30901004201B500F60901004201B700080A01004201B9001D0A01004201BB00300A01004201BD00460A01004201BF00520A01004201C100630A01004201C300750A01004201C5008A0A01004201C7009A0A01004201C900AD0A01004201CB00C50A01004201CD00DB0A01004201CF00EE0A01004201D100000B01004201D300140B01004201D500270B01004201D7003C0B01004201D900500B01004201DB00650B01004201DD00780B01004201DF008B0B01004201E100970B01004201E300AB0B01004201E500BA0B01004201E700D00B01004201E900E30B01004201EB00F70B01004201ED00090C01004201EF001B0C01004201F1002D0C01004201F3003F0C01004201F5004F0C02004201F700600C01004201F900710C01004201FB00820C01004201FD00940C01004201FF00A90C010042010101BD0C010042010301CD0C0100420105014D16010042010701F00C010042010901030D010042010B01F508010042010D012E0D010042010F014D0D010042011101620D010042011301740D0300420115017F0D0100420117018A0D0100420119019E0D010004800000010000006F14D25D0000000000009615000002000000000000000000000001003500000000000200000000000000000000000100A01500000000030002000000003C4D6F64756C653E0050434D444C4C494E542E646C6C0055736572446566696E656446756E6374696F6E73004C6567496E666F006D73636F726C69620053797374656D004F626A6563740056616C7565547970650050434D5352560043414C435F50524143544943414C0043414C435F53484F52544553540043414C435F4E4154494F4E414C0043414C435F41564F4944544F4C4C0043414C435F4149520043414C435F464946545954485245450043414C4345585F545950455F50524143544943414C0043414C4345585F545950455F53484F52544553540043414C4345585F545950455F4149520043414C4345585F4F50545F41564F4944544F4C4C0043414C4345585F4F50545F4E4154494F4E414C0043414C4345585F4F50545F464946545954485245450043414C4345585F5645485F545255434B0043414C4345585F5645485F4155544F005250545F44455441494C005250545F5354415445005250545F4D494C45414745005250545F584D4C00544F4C4C5F4E4F4E4500544F4C4C5F4341534800544F4C4C5F444953434F554E540053544154455F4F5244455200545249505F4F52444552004F5054535F4E4F4E45004F5054535F4D494C4553004F5054535F4348414E474544455354004F5054535F4855424D4F4445004F5054535F424F5244455253004F5054535F414C5048414F52444552004F5054535F4845415659004F5054535F4552524F520050434D535F494E56414C49445054520050434D535F4E4F494E4946494C450050434D535F4C4F4144494E4946494C450050434D535F4C4F414447454F434F44450050434D535F4C4F41444E4554574F524B0050434D535F4D415854524950530050434D535F494E56414C4944545249500050434D535F494E56414C49445345525645520050434D535F424144524F4F544449520050434D535F4241444D4554414E45544449520050434D535F4E4F4C4943454E53450050434D535F545249504E4F5452454144590050434D535F494E56414C4944504C4143450050434D535F524F5554494E474552524F520050434D535F4F50544552524F520050434D535F4F50544855420050434D535F4F50543253544F50530050434D535F4F50543353544F50530050434D535F4E4F54454E4F55474853544F50530050434D535F4241444E45544449520050434D535F4C4F4144475249444E45540050434D535F4241444F5054494F4E4449520050434D535F444953434F4E4E45435445444E45540050434D535F4E4F545255434B53544F500050434D535F494E56414C4944524547494F4E49440050434D535F434C4F53494E474552524F520050434D535F4E4F5254454E47494E450050434D535F4E4F444154415345525645520050434D535F4E4F41435449564154450050434D535F455850495245440050434D535F424144444C4C504154480050434D534F70656E5365727665720050434D53436C6F73655365727665720050434D5343616C6344697374616E63650050434D5343616C6344697374616E6365320050434D5343616C6344697374616E6365330050434D534E6577547269700050434D5344656C657465547269700050434D5343616C63756C6174650050434D5341646453746F700050434D53436C65617253746F70730050434D534C6F6F6B75700050434D534765744D617463680050434D53436865636B506C6163654E616D650050434D5343697479546F4C61744C6F6E670050434D534C61744C6F6E67546F436974790050434D5341646472657373546F4C61744C6F6E670050434D534C61744C6F6E67546F416464726573730050434D534E756D526567696F6E730050434D535A6970436F64654F7074696F6E0050434D53476574526567696F6E4E616D650050434D534E65775472697057697468526567696F6E0050434D5343616C63547269700050434D534F7074696D697A650050434D534765744475726174696F6E0050434D53476574546F6C6C0050434D534E756D546F6C6C446973636F756E74730050434D53476574546F6C6C446973636F756E744E616D650050434D53476574546F6C6C427265616B646F776E0050434D5344656C65746553746F700050434D534E756D53746F70730050434D5347657453746F70547970650050434D535365744C6F616465640050434D534C6F6F6B55700050434D53476574466D744D61746368320050434D53476574466D744D61746368330050434D534E756D4D6174636865730050434D534E756D504F4943617465676F726965730050434D53504F4943617465676F72794E616D650050434D534765744C6F636B5261644974656D0050434D53547269704361636865536176650050434D535472697043616368654C6F61640050434D5353746174654C6973740050434D5353746174654C696E654974656D0050434D53436F756E7472794C6973740050434D53436F756E7472794C6973744974656D0050434D534765745270744C696E650050434D534E756D5270744C696E65730050434D5347657448544D4C5270740050434D534E756D48544D4C52707442797465730050434D534765745270740050434D534E756D52707442797465730050434D534E756D4C6567730050434D5353657443616C63547970650050434D5347657443616C63547970650050434D53536574426F726465724F70656E0050434D5353657453686F7746657272794D696C65730050434D5353657441636365737352756C650050434D535365744B696C6F6D65746572730050434D535365744D696C65730050434D535365744875624D6F64650050434D53536574436F73740050434D53476574436F73740050434D53536574526573657175656E63650050434D53536574546F6C6C4D6F6465730050434D535365744F7074696F6E730050434D534765744F7074696F6E730050434D5353657443616C635479706545780050434D5347657443616C635479706545780050434D53536574526F61645370656564547970650050434D5353657444657061727475726554696D650050434D535365744172726976616C54696D650050434D534765744554410050434D534765744554440050434D53547261666669635374617475730050434D5347657453746F700050434D5347657441464D736742797465730050434D534765744D616E61676564526F7574654D736742797465730050434D5344656661756C74730050434D53536574427265616B486F7572730050434D53476574427265616B486F7572730050434D53536574427265616B57616974486F7572730050434D53476574427265616B57616974486F7572730050434D53536574426F7264657257616974486F7572730050434D53476574426F7264657257616974486F7572730050434D535365744F6E526F61640050434D53536574437573746F6D4D6F64650050434D535365744F6C644D6F64650050434D535365744F6C644D6F6465466F72526567696F6E0050434D5353657455736553686170655074730050434D53536574416C7068614F726465720050434D53436F6E766572744C4C546F506C6163650050434D53416464437573746F6D506C6163650050434D5344656C657465437573746F6D506C6163650050434D5341464C696E6B730050434D5341464C696E6B73436C6561720050434D53414641637469766174655365740050434D5341464163746976617465526567696F6E0050434D5341464578706F72745365740050434D5341464578706F7274526567696F6E0050434D5347656F66656E636541637469766174655365740050434D5347656F66656E63654578706F72745365740050434D5343616C63446973546F526F7574650050434D534765744C6F6341744D696C65730050434D534765744C6F6341744D696E757465730050434D534C61744C6F6E6741744D696C65730050434D534C61744C6F6E6741744D696E757465730050434D534C61744C6F6E6773456E526F7574650050434D5353657456656869636C65436F6E6669670050434D5353657450726F66696C654E616D650050434D53536574436F73744F7074696F6E730050434D5341646450696E670050434D5352656475636543616C63756C6174650050434D53526564756365547269700050434D535365744E4C416262726576696174696F6E0050434D5353657456656869636C65547970650050434D53536574526F61644E616D654F6E6C790050434D5353657445786163744C6576656C0050434D5347657445786163744C6576656C0050434D5347657454727573744C6576656C0050434D53536574526F7574654C6576656C0050434D5353657445786368526174650050434D534675656C4F7074696D697A650050434D5353657448617A4F7074696F6E0050434D53476574526F757465496E666F0050434D534765744947726678526F7574650050434D534765744E756D526F7574654C696E6B730050434D53557064617465526F757465496E666F0050434D53416972446973546F5274650050434D53416972446973546F527465320050434D53416972446973546F4C696E6B730050434D535472616E736C617465416C6961730050434D534765744572726F7245780050434D534765744D616E67616564526F7574654D736742797465730050434D534372656174654D616E61676564526F7574654D736742797465730050434D534D61747269785365744F7074696F6E730050434D534D617472697847657443656C6C0050434D5341464C6F61640050434D534146536176650050434D5341464C6F6164466F72526567696F6E0050434D53414653617665466F72526567696F6E002E63746F72006C65674D696C657300746F744D696C6573006C6567436F737400746F74436F7374006C6567486F75727300746F74486F75727300617070496E73740068576E64007365727665724944006F726967006465737400726F75746554797065006D696E75746573007472697049440073746F704E616D6500636974795A6970006561737900696E64657800627566666572006275664C656E006E616D650062756666657253697A65006C61746C6F6E67006F7074696F6E006964780062756653697A6500726567696F6E4944006F7267696E00547269704944006469736350726F6772616D0073746174650077686963680074797065006C6F61646564006369747900656173794D61746368006164647262756600616464724C656E006369747962756600636974794C656E0073746174656275660073746174654C656E007A6970627566007A69704C656E00636F756E747962756600636F756E74794C656E0074696D657A6F6E6275660074696D657A6F6E654C656E0066696C65006241646464436F756E747279007270744E756D006C696E654E756D0063616C6354797065006F70656E006F6E4F666600636F7374006368616E676544657374006D6F6465006F70747300727454797065006F7074466C6167730076656854797065007052745479706500704F7074466C61677300705665685479706500726F616453706565640064617465547970650074696D655A6F6E650044657061727475726559656172006465706172747572654D6F6E74680064657061727475726544617900646570617274757265486F7572006465706172747572654D696E757465006465706172747572655365636F6E64006465706172747572654461796F665765656B006172726976616C59656172006172726976616C4D6F6E7468006172726976616C446179006172726976616C486F7572006172726976616C4D696E757465006172726976616C5365636F6E64006172726976616C4461796F665765656B006C65674E756D6265720064657061727475726559656172007365744E616D65006C4F4F52436F6D706C69616E636500644F4F52446973740062497346697273744C65674D616E6167656400686F75727300616C7068614F72646572007965734E6F006C6F636174696F6E006661766F7200705365744E616D65006241637469766174650070526567696F6E4944007046696C656E616D65007044656C696D6974657200694163746976617465006D696C657300704C6F636174696F6E0073697A6500757365536870507473006E756D50616972730073687050747300756E697473006F7665725065726D0068656967687473007769647468006C656E676874007765696768740061786C65006C63760070726F66696C654E616D65006675656C496E556E6974006675656C436F737400647075436F73744C6F6164656400647075436F7374456D707479006F74686572436F73744C6F61646564006F74686572436F7374456D70747900636F737454696D654C6F6164656400636F737454696D65456D70747900677265656E486F75736547617300747269704C61744C6F6E006D61784D696C65734F6666526F75746500686967687761794F6E6C790046696C655061746800436F6C547275636B496400436F6C547275636B49644C656E00436F6C54696D6500436F6C54696D654C656E00436F6C4461746500436F6C446174654C656E00436F6C4C61744C6F6E6700436F6C4C61744C6F6E674C656E00486F757257696E646F7700644D61784D696C65734F6666526F7574650062486967687761794F6E6C790043616E6F724D58007468726573686F6C64005573655374726565747300636F6E76526174650076656869636C65004361706163697479004C6576656C004D5047005374617475735265706F72740052657053697A650068617A54797065006C65674E756D00704C696E6B73004947726678526F757465007049526F757465006E756D4C696E6B730064697200726563616C63007472616E736C6174650073697A6573007042756666657200704C61744C6F6E6773006F726967496E6465780064657374496E64657800727074547970650066696C656E616D650053797374656D2E5265666C656374696F6E00417373656D626C795469746C6541747472696275746500417373656D626C794465736372697074696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E41747472696275746500417373656D626C79436F6D70616E7941747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C7943756C7475726541747472696275746500417373656D626C7956657273696F6E41747472696275746500417373656D626C7944656C61795369676E41747472696275746500417373656D626C794B657946696C6541747472696275746500417373656D626C794B65794E616D654174747269627574650053797374656D2E446961676E6F73746963730044656275676761626C6541747472696275746500446562756767696E674D6F6465730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300436F6D70696C6174696F6E52656C61786174696F6E734174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650050434D444C4C494E540053797374656D2E44617461004D6963726F736F66742E53716C5365727665722E5365727665720053716C46756E6374696F6E4174747269627574650053797374656D2E52756E74696D652E496E7465726F70536572766963657300446C6C496D706F72744174747269627574650050434D53525636342E444C4C0050434D5353746174654C69656E4974656D0050434D53536574426F72646572734F70656E0050434D44525636342E444C4C0050434D5341697244697374546F4C696E6B730050434D5352562E444C4C005374727563744C61796F7574417474726962757465004C61796F75744B696E640000032000000000009B8D8FE3AD0A634AB84057678A6520A00008B77A5C561934E08902060E18500043004D00530052005600360034002E0044004C004C000206060200000201000202000203000204000206000206080401000000040200000004040000000400010000040002000004000400000400000000040000000104080000000410000000042000000004FFFF0000026500026600026700026800026900026A00026B00026C00026D00026E00026F00027000027100027200027300027400027500027600027700027800027900027A00027B00027C00027D00027E00027F00028000028700028800028900050002060808040001080606000308060E0E07000408060E0E0808000508060E0E0808040001080805000208080E06000308080E080700040808080E0805000208060E07000408060E080807000408060808080500020806080700040806080E0806000308080E0E0600030808080E0500020808080600030808080806000308080802060003080803080F000C0808080E080E080E080E080E0811000E0808080E080E080E080E080E0808080800050806080E080208000508060E080E08080005080808080E0805000208080205000208080A07000408080808080D000A08080808080808080808080B000808080808080808080803000008060003080E0E0809000608080E08080D0206000308080E0206000308060E0207000408060E0E0E06000308060E080700040808080E0207000408080E08020C00090808080808080808080810000D08060E08080808080808080808020A000708080E0808080E0808000508080E080E0809000608080E0808080809000608080E080E08080320000102060C042001010E04200101020520010111410420010108240100020054020F497344657465726D696E697374696301540209497350726563697365010520010111590501000000000801000701000000000801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F777301000000000000F49B5E5300000000020000008B000000F4580000F43A00005253445330B2727F31DDAA4FBFBB81B6A49FB8E805000000433A5C55736572735C4147313030315C446F63756D656E74735C56697375616C2053747564696F20323031305C50726F6A656374735C50726F6A656374315C53716C536572766572323030385C50434D444C4C494E545C6F626A5C7838365C44656275675C50434D444C4C494E542E7064620000A85900000000000000000000BE590000002000000000000000000000000000000000000000000000B05900000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF25002000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000586000007C02000000000000000000007C0234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE0000010000000100D25D6F1400000100D25D6F143F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004DC010000010053007400720069006E006700460069006C00650049006E0066006F000000B801000001003000300030003000300034006200300000002C0002000100460069006C0065004400650073006300720069007000740069006F006E00000000002000000040000F000100460069006C006500560065007200730069006F006E000000000031002E0030002E0035003200330031002E0032003400300031003800000000003C000E00010049006E007400650072006E0061006C004E0061006D0065000000500043004D0044004C004C0049004E0054002E0064006C006C0000002800020001004C006500670061006C0043006F00700079007200690067006800740000002000000044000E0001004F0072006900670069006E0061006C00460069006C0065006E0061006D0065000000500043004D0044004C004C0049004E0054002E0064006C006C00000044000F000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0035003200330031002E00320034003000310038000000000048000F00010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0035003200330031002E003200340030003100380000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000C000000D03900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = UNSAFE

GO



CREATE FUNCTION PCMSOpenServer(@appInst Integer, @hWnd Integer) 
Returns smallint
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSOpenServer
GO

CREATE FUNCTION PCMSCloseServer(@ServerID smallint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCloseServer
GO

CREATE FUNCTION PCMSCalcDistance(@ServerID smallint, @orig nvarchar(max), @dest nvarchar(max)) 
Returns int
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCalcDistance
GO

CREATE FUNCTION PCMSCalcDistance2(@ServerID smallint, @orig nvarchar(max), @dest nvarchar(max), @routeType Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCalcDistance2
GO

CREATE FUNCTION PCMSCalcDistance3(@ServerID smallint, @orig nvarchar(max), @dest nvarchar(max), @routeType Integer, @minutes Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCalcDistance3
GO

CREATE FUNCTION PCMSCityToLatLong(@serverID smallint, @name nvarchar(max), @buffer Integer, @bufferSize Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCityToLatLong
GO

CREATE FUNCTION PCMSLatLongToCity(@ServerID smallint, @latlong Integer, @buffer Integer, @bufferSize Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSLatLongToCity
GO

CREATE FUNCTION PCMSAddressToLatLong(@ServerID smallint, @name nvarchar(max), @buffer Integer, @bufferSize Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAddressToLatLong
GO

CREATE FUNCTION PCMSLatLongToAddress(@ServerID smallint, @latlong nvarchar(max), @buffer Integer, @bufferSize Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSLatLongToAddress
GO

CREATE FUNCTION PCMSNumRegions(@ServerID smallint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumRegions
GO

CREATE FUNCTION PCMSZipCodeOption(@ServerID smallint, @option Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSZipCodeOption
GO

CREATE FUNCTION PCMSGetRegionName(@ServerID smallint, @idx int, @name nvarchar(max), @bufferSize Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetRegionName
GO


CREATE FUNCTION PCMSNewTripWithRegion(@ServerID smallint, @regionID nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNewTripWithRegion
GO

CREATE FUNCTION PCMSCalcTrip(@tripID Integer, @orgin nvarchar(max), @dest nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCalcTrip
GO

CREATE FUNCTION PCMSOptimize(@tripID Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSOptimize
GO

CREATE FUNCTION PCMSGetDuration(@tripID Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetDuration
GO

CREATE FUNCTION PCMSGetToll(@tripID Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetToll
GO

CREATE FUNCTION PCMSNumTollDiscounts(@ServerID smallint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumTollDiscounts
GO

CREATE FUNCTION PCMSGetTollDiscountName(@ServerID smallint, @idx int, @buffer nvarchar(max), @bufSize int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetTollDiscountName
GO

CREATE FUNCTION PCMSGetTollBreakdown(@tripID int, @discProgram int, @state nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetTollBreakdown
GO

CREATE FUNCTION PCMSDeleteStop(@tripID int, @which int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSDeleteStop
GO

CREATE FUNCTION PCMSNumStops(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumStops
GO

CREATE FUNCTION PCMSGetStopType(@tripID int, @which int, @type int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetStopType
GO

CREATE FUNCTION PCMSSetLoaded(@tripID int, @which int, @loaded bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetLoaded
GO

CREATE FUNCTION PCMSGetFmtMatch2(@TripID integer, @index integer, @addrbuffer nvarchar(max), @addrLen integer, @cityBuffer nvarchar(max), @cityLen Integer, @statebuff nvarchar(max), @stateLen int, @zipbuffer nvarchar(max), @zipLen Integer, @countyBuffer nvarchar(max), @countyLen Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetFmtMatch2
GO

CREATE FUNCTION PCMSGetFmtMatch3(@tripID int, @which int, @addrbuf nvarchar(max), @addrLen int, @citybuf nvarchar(max), @cityLen Integer, @statebuf nvarchar(max), @stateLen int, @zipbuf nvarchar(max), @zipLen Integer, @countybuf nvarchar(max), @countyLen Integer, @timezonebuf Integer, @timezoneLen Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetFmtMatch3
GO

CREATE FUNCTION PCMSNumMatches(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumMatches
GO

CREATE FUNCTION PCMSNumPOICategories(@ServerID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumPOICategories
GO

CREATE FUNCTION PCMSPOICategoryName(@ServerID int, @index int, @buffer nvarchar(max), @bufSize int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSPOICategoryName
GO

--CREATE FUNCTION PCMSLockRadLookup(@tripID int, @city nvarchar(max), @radius int, @ int) 
--Returns Integer
--AS 
--EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSLockRadLookup
--GO

CREATE FUNCTION PCMSGetLockRadItem(@tripID int, @index int, @buffer nvarchar(max), @bufSize int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetLockRadItem
GO

CREATE FUNCTION PCMSTripCacheSave(@ServerID smallint, @file nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSTripCacheSave
GO

CREATE FUNCTION PCMSTripCacheLoad(@ServerID smallint, @file nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSTripCacheLoad
GO

CREATE FUNCTION PCMSStateList(@ServerID smallint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSStateList
GO

CREATE FUNCTION PCMSStateLineItem(@ServerID smallint, @index int, @buffer nvarchar(max), @bufSize int, @bAddCountry bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSStateLineItem
GO

CREATE FUNCTION PCMSCountryList(@ServerID smallint, @regionID nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCountryList
GO

CREATE FUNCTION PCMSCountryListItem(@ServerID smallint, @regionID nvarchar(max), @index int, @buffer nvarchar(max), @bufSize int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCountryListItem
GO

CREATE FUNCTION PCMSGetRptLine(@tripID int, @rptNum int, @lineNum int, @buffer nvarchar(max), @bufSize int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetRptLine
GO

CREATE FUNCTION PCMSNumRptLines(@tripID int, @rptNum int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumRptLines
GO

CREATE FUNCTION PCMSSetCalcType(@tripID int, @calcType int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetCalcType
GO

CREATE FUNCTION PCMSGetCalcTypeEx(@tripID int, @pRtType int, @pOtptFlags int, @pVehType int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetCalcTypeEx
GO

CREATE FUNCTION PCMSSetBorderOpen(@tripID int, @open bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetBorderOpen
GO

CREATE FUNCTION PCMSSetShowFerryMiles(@tripID int, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetShowFerryMiles
GO

CREATE FUNCTION PCMSSetAccessRule(@tripID int, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetAccessRule
GO

CREATE FUNCTION PCMSSetKilometers(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetKilometers
GO

CREATE FUNCTION PCMSSetMiles(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetMiles
GO

CREATE FUNCTION PCMSSetHubMode(@tripID int, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetHubMode
GO

CREATE FUNCTION PCMSSetCost(@tripID int, @cost int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetCost
GO

CREATE FUNCTION PCMSGetCost(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetCost
GO

CREATE FUNCTION PCMSSetResequence(@tripID int, @changeDest bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetResequence
GO

CREATE FUNCTION PCMSSetTollModes(@tripID int, @mode int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetTollModes
GO


CREATE FUNCTION PCMSSetOptions(@tripID Integer, @opts bigint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetOptions
GO

CREATE FUNCTION PCMSGetOptions(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetOptions
GO

CREATE FUNCTION PCMSDefaults(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSDefaults
GO

CREATE FUNCTION PCMSSetBreakHours(@tripID int, @hours bigint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetBreakHours
GO

CREATE FUNCTION PCMSGetBreakHours(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetBreakHours
GO

CREATE FUNCTION PCMSSetBreakWaitHours(@tripID int, @hours bigint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetBreakWaitHours
GO

CREATE FUNCTION PCMSGetBreakWaitHours(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetBreakWaitHours
GO

CREATE FUNCTION PCMSSetOnRoad(@tripID int, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetOnRoad
GO

CREATE FUNCTION PCMSSetCustomMode(@tripID int, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetCustomMode
GO

CREATE FUNCTION PCMSSetOldMode(@tripID int, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetOldMode
GO

CREATE FUNCTION PCMSSetOldModeForRegion(@ServerID int, @regionID nvarchar(max), @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetOldModeForRegion
GO

CREATE FUNCTION PCMSSetUseShapePts(@tripID int, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetUseShapePts
GO

CREATE FUNCTION PCMSSetAlphaOrder(@tripID int, @alphaOrder bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetAlphaOrder
GO


CREATE FUNCTION PCMSConvertLLToPlace(@tripID int, @yesNo bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSConvertLLToPlace
GO

CREATE FUNCTION PCMSAddCustomPlace(@ServerID smallint, @name nvarchar(max), @location nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAddCustomPlace
GO

CREATE FUNCTION PCMSDeleteCustomPlace(@ServerID smallint, @name nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSDeleteCustomPlace
GO

CREATE FUNCTION PCMSAFLink(@tripID int, @favor bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFLinks
GO

CREATE FUNCTION PCMSAFLinksClear(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFLinksClear
GO

CREATE FUNCTION PCMSAFActivateSet(@ServerID smallint, @pSetName nvarchar(max), @bActivate bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFActivateSet
GO


CREATE FUNCTION PCMSAFActivateRegion(@ServerID smallint, @pRegionID nvarchar(max), @bActivate bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFActivateRegion
GO


CREATE FUNCTION PCMSAFExportSet(@ServerID smallint, @pSetName nvarchar(max), @pFilename nvarchar(max), @pDelimeter nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFExportSet
GO

CREATE FUNCTION PCMSAFExportRegion(@ServerID smallint, @regionID nvarchar(max), @pFilename nvarchar(max), @pDelimiter nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFExportRegion
GO

CREATE FUNCTION PCMSGeofenceActivateSet(@ServerID smallint, @pSetName nvarchar(max), @iActivate int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGeofenceActivateSet
GO

CREATE FUNCTION PCMSGeofenceExportSet(@ServerID smallint, @pSetName nvarchar(max), @pFilename nvarchar(max), @pDelimiter nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGeofenceExportSet
GO

CREATE FUNCTION PCMSCalcDisToRoute(@tripID int, @location nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCalcDisToRoute
GO


CREATE FUNCTION PCMSGetLocAtMiles(@tripID int, @miles int, @pLocation nvarchar(max), @size Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetLocAtMiles
GO

CREATE FUNCTION PCMSGetLocAtMinutes(@tripID int, @minutes int, @pLocation nvarchar(max), @size Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetLocAtMinutes
GO

CREATE FUNCTION PCMSLatLongAtMiles(@tripID int, @miles int, @latlong nvarchar(max), @useShpPts bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSLatLongAtMiles
GO

CREATE FUNCTION PCMSLatLongAtMinutes(@tripID Integer, @minutes Integer, @latlong nvarchar(max), @useShpPts bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSLatLongAtMinutes
GO

CREATE FUNCTION PCMSLatLongsEnRoute(@tripID Integer, @latlong nvarchar(max), @numPairs Integer, @ShpPts bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSLatLongsEnRoute
GO

CREATE FUNCTION PCMSSetVehiclConfig(@tripID Integer, @units Integer, @overPerm Integer, @heights Integer, @width Integer, @lenght Integer, @weight Integer, @axle Integer, @lcv Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetVehicleConfig
GO

CREATE FUNCTION PCMSSetProfielName(@tripID int, @profileName nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetProfileName
GO

CREATE FUNCTION PCMSSetCostOptions(@tripID int, @fuelInUnit int, @fuelCost int, @dpuCostLoaded int, @dpuCostEmpty int, @otherCostLoaded int, @otherCostEmpty int, @costTimeLoaded int, @costTimeEmpty int, @greenHouseGas int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetCostOptions
GO

CREATE FUNCTION PCMSAddPing(@tripID int, @tripLatLon nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAddPing
GO

CREATE FUNCTION PCMSReduceCalculate(@tripID int, @maxMilesOffRoute Integer, @highwayOnly bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSReduceCalculate
GO

CREATE FUNCTION PCMSReduceTrip(@serverID smallint, @FilePath nvarchar(max), @ColTruckId Integer, @ColTruckIdLen Integer, @ColTime Integer, @ColTimeLen Integer, @ColDate Integer, @ColDateLen Integer, @ColLatLong Integer, @ColLatLongLen Integer, @HourWindow Integer, @dMaxMilesOffRoute Integer, @bHighwayOnly bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSReduceTrip
GO

CREATE FUNCTION PCMSSetNLAbbreviation(@tripID Integer, @CanorMx nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetNLAbbreviation
GO

CREATE FUNCTION PCMSSetVehicleType(@tripID Integer, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetVehicleType
GO

CREATE FUNCTION PCMSSetRoadNameOnly(@tripID int, @onOff bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetRoadNameOnly
GO

CREATE FUNCTION PCMSSetExactLevel(@serverID smallint, @threshold Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetExactLevel
GO

CREATE FUNCTION PCMSGetExactLevel(@serverID smallint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetExactLevel
GO

CREATE FUNCTION PCMSGetTrustLevel(@serverID smallint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetTrustLevel
GO

CREATE FUNCTION PCMSSetRouteLevel(@tripID int, @UseStreets Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetRouteLevel
GO

CREATE FUNCTION PCMSSetExchRate(@tripID int, @convRate int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetExchRate
GO

CREATE FUNCTION PCMSFuelOptimize(@tripID int, @vehicle nvarchar(max), @Capacity Integer, @level Integer, @MPG Integer, @StatusReport nvarchar(max), @RepSize int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSFuelOptimize
GO

CREATE FUNCTION PCMSSetHazOption(@tripID int, @hazType int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetHazOption
GO

CREATE FUNCTION PCMSGetRouteInfo(@tripID int, @legNum int, @pLinks int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetRouteInfo
GO

CREATE FUNCTION PCMSGetIGrfxRoute(@tripID int, @IGrfxRoute int, @pIRoute int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetIGrfxRoute
GO

CREATE FUNCTION PCMSGetNumRouteLinks(@tripID int, @legNum int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetNumRouteLinks
GO

CREATE FUNCTION PCMSUpdateRouteInfo(@tripID int, @legNum int, @numLinks int, @pLinks int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSUpdateRouteInfo
GO

CREATE FUNCTION PCMSAirDisToRte(@tripID int, @location nvarchar(max), @legNum int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAirDisToRte
GO

CREATE FUNCTION PCMSAirDisToRte2(@tripID int, @location nvarchar(max), @legNum int, @dir nvarchar(max), @recalc Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAirDisToRte2
GO

CREATE FUNCTION PCMSAirDisToLinks(@serverID smallint, @location nvarchar(max), @dir nvarchar(max), @pLinks int, @numLinks int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAirDisToLinks
GO

CREATE FUNCTION PCMSTranslateAlias(@tripID int, @translate int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSTranslateAlias
GO

CREATE FUNCTION PCMSGetErrorEx(@tripID int, @buffer nvarchar(max), @sizes int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetErrorEx
GO

CREATE FUNCTION PCMSMatrixSetOptions(@tripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSMatrixSetOptions
GO

CREATE FUNCTION PCMSMatrixGetCell(@origIndex Integer, @destIndex Integer, @rptType Integer, @pBuffer nvarchar(max), @bufSize Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSMatrixGetCell
GO

CREATE FUNCTION PCMSAFLoad(@serverID smallint, @filename nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFLoad
GO

CREATE FUNCTION PCMSAFSave(@serverID smallint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFSave
GO

CREATE FUNCTION PCMSAFLoadForRegion(@serverID smallint, @filename nvarchar(max), @regionID nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFLoadForRegion
GO

CREATE FUNCTION PCMSAFSaveForRegion(@serverID smallint, @regionID nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAFSaveForRegion
GO

CREATE FUNCTION PCMSNewTrip(@ServerID smallint) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNewTrip
GO

CREATE FUNCTION PCMSDeleteTrip(@TripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSDeleteTrip
GO

CREATE FUNCTION PCMSCalculate(@TripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCalculate
GO

CREATE FUNCTION PCMSAddStop(@TripID int, @stopName nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSAddStop
GO

CREATE FUNCTION PCMSClearStops(@TripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSClearStops
GO

CREATE FUNCTION PCMSLookup(@TripID int, @CityZip nvarchar(max), @Easy int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSLookup
GO

CREATE FUNCTION PCMSGetMatch(@TripID int, @index int, @buffer nvarchar(max), @bufLen int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetMatch
GO



CREATE FUNCTION PCMSGetHTMLRpt(@TripID int, @rptNum int, @buffer nvarchar(max), @bufLen int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetHTMLRpt
GO

CREATE FUNCTION PCMSNumHTMLRptBytes(@TripID int, @rptNum int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumHTMLRptBytes
GO

CREATE FUNCTION PCMSGetRpt(@TripID int, @rptNum int, @buffer nvarchar(max), @bufLen int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetRpt
GO

CREATE FUNCTION PCMSNumRptBytes(@TripID int, @rptNum int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumRptBytes
GO

CREATE FUNCTION PCMSNumLegs(@TripID int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSNumLegs
GO

CREATE FUNCTION PCMSSetCalcTypeEx(@TripID int, @rtType int, @optFlags int, @vehType int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetCalcTypeEx
GO

CREATE FUNCTION PCMSCheckPlaceName(@serverID smallint, @cityZip nvarchar(max)) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCheckPlaceName
GO

--CREATE FUNCTION PCMSGetLegInfo(@TripID int, @legNum int, @pLegInfo ) 
--Returns Integer
--AS 
--EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetLegInfo
--GO

CREATE FUNCTION PCMSSetRoadSpeedType(@TripID int, @roadSpeed int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetRoadSpeedType
GO

CREATE FUNCTION PCMSSetDepartureTime(@TripID int, @dateType int, @timeZone int, @departureYear int, @departureMoth int, @departureDay int, @departureHour int, @departureMinute int, @departureSecond int, @departureDayofWeek int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetDepartureTime
GO

CREATE FUNCTION PCMSSetArrivalTime(@TripID int, @dateType int, @timeZone int, @arrivalYear int, @arrivalMonth int, @arrivalDay int, @arrivalHour int, @arrivalMinute int, @arrivalSecond int, @arrivalDayofWeek int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSSetArrivalTime
GO

CREATE FUNCTION PCMSGetETA(@TripID int, @legNumber int, @arrivalYear int, @arrivalMonth int, @arrivalDay int, @arrivalHour int, @arrivalMinute int, @arrivalSecond int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetETA
GO

CREATE FUNCTION PCMSGetETD(@TripID int, @legNumber int, @departureYear Integer, @departureMonth int, @departureDay int, @departureHour int, @departureMinute int, @departureSecond int) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetETD
GO

CREATE FUNCTION PCMSGetStop(@tripID Integer, @which Integer, @buffer nvarchar(max), @bufferSize Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetStop
GO

CREATE FUNCTION PCMSGetAFMsgBytes(@setName nvarchar(max), @buffer nvarchar(max), @bufferSize Integer) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetAFMsgBytes
GO

CREATE FUNCTION PCMSGetManagedRouteMsgBytes(@trip Integer, @buffer nvarchar(max), @bufferSize Integer, @lOORCompliance Integer, @dOORDist float, @bIsFirstLegManaged bit) 
Returns Integer
AS 
EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSGetManagedRouteMsgBytes
GO

--CREATE FUNCTION PCMSCreateManagedRouteMsgBytes(@trip Integer, @buffer nvarchar(max), @bufSize Integer, @pLatLongs nvarchar(max), @lOORCompliance Integer, @dOORDist float) 
--Returns Integer
--AS 
--EXTERNAL NAME PCMDLLINT.UserDefinedFunctions.PCMSCreateManagedRouteMsgBytes
--GO


--ALTER database tmw_live set TRUSTWORTHY on