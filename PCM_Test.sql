Use tmw_live
Go
--SQL Code by ArReko Gibbs|Project: PCMiler 
-- Declare varible to use
Declare @serverID smallint
Declare @tripID integer
Declare @tripID2 integer
Declare @ret integer
Declare @miles decimal
Declare @maxrow integer
Declare @currow integer
Declare @idnumber integer 
Declare @location varchar(max) 
Declare @driver varchar(13) 
Declare @datestamp datetime
Declare @ordnumber varchar(12)

-- Set out Order Number to Test
Set @ordnumber = '3310570'

 Select dbo.cal_route_miles_MTS(@ordnumber) as 'Cal_Route_Miles'
 Select dbo.cal_actual_miles_MTS(@ordnumber) as 'Cal_Actual_Miles'
 
-- Create Temp Table
create table #tbl (
	idnumber integer ,
	location varchar(max) ,
	driver varchar(13) ,
	datestamp datetime
)

Set @miles=0


	-- Open PC Miler
	Select @serverID=dbo.PCMSOpenServer(0,0)
	--PRINT 'ServerID : ' + cast(@serverID as varchar(20))
	
	if (@serverID!=0)
	begin
	
		-- Insert Data into temp table
		Insert #tbl 
		exec rpt_routevsgps_actual_MTS @ordnumber

		-- Get the Record Count
		Select @maxrow=count(*) from #tbl
	
	
		-- Create a New trip
		Select @tripID=dbo.PCMSNewTrip(@serverID)
		--PRINT 'TripID   : ' + cast(@tripID as varchar(20))
	
		-- Create a New trip
		Select @tripID2=dbo.PCMSNewTrip(@serverID)
		--PRINT 'TripID2  : ' + cast(@tripID2 as varchar(20))
				
		-- Set the Calulate Options
		--Select @ret=dbo.PCMSSetCalcTypeEx(@tripID, 0x00000001, 0, 
		
		-- get the First Record	
		Select top 1 @idnumber=idnumber ,
			@location = location ,
			@driver = driver ,
			@datestamp = datestamp
		From #tbl
			Order By idnumber 
		Set @currow=0

		-- Loop the table
		Select @ret=dbo.PCMSClearStops(@tripID2)
		--PRINT 'Clr Trip2: ' + cast(@ret as varchar(20))
		
		--PRINT 'Total Row: ' + cast(@maxrow as varchar(20))
		
		WHILE @currow < @maxrow
		BEGIN
			Set @currow = @currow + 1
			
			-- Get the next Record
			Select top 1 @idnumber=idnumber ,
				@location = location ,
				@driver = driver ,
				@datestamp = datestamp
			From #tbl
				where idnumber > @idnumber
				Order By datestamp 
			
			--If LEN(@currow)=1			
			--	PRINT '* Record : 0' + cast(@currow as varchar(2)) + ' > ' + cast(@idnumber as varchar(20)) + ', ' + cast(@location as varchar(20)) + ', ' + cast(@driver as varchar(20)) + ', ' + cast(@datestamp as varchar(20))
			--else
			--	PRINT '* Record : ' + cast(@currow as varchar(2)) + ' > ' + cast(@idnumber as varchar(20)) + ', ' + cast(@location as varchar(20)) + ', ' + cast(@driver as varchar(20)) + ', ' + cast(@datestamp as varchar(20))


			-- Add the Record to the Trip
			Select @ret=dbo.PCMSAddStop(@tripID2, @location)
			--If LEN(@currow)=1			
			--	PRINT 'Add Trip2: 0' + cast(@currow as varchar(2)) + ' > ' + cast(@location as varchar(20)) + ' = ' + cast(@ret as varchar(20))
			--else
			--	PRINT 'Add Trip2: ' + cast(@currow as varchar(2)) + ' > ' + cast(@location as varchar(20)) + ' = ' + cast(@ret as varchar(20))
		END
		-- Return the Number of LEGS in the Trip
		Select @ret=dbo.PCMSNumLegs(@tripID2)
		--PRINT 'TripLegs2: ' + cast(@ret as varchar(20))		
		
		--Select @ret=dbo.PCMSAddStop(@tripID, '49330')
		--Select @ret=dbo.PCMSAddStop(@tripID, '49315')
		
		--Select @ret=dbo.PCMSAddStop(@tripID, 'Dublin, PA')
		--Select @ret=dbo.PCMSAddStop(@tripID, 'Boston, MA')
		--Select @ret=dbo.PCMSAddStop(@tripID, 'Philadelphia, PA')
		--Select @ret=dbo.PCMSAddStop(@tripID, 'Baltimore, MD')
		
		-- Return the Number of LEGS in the Trip
		--Select @ret=dbo.PCMSLookup(@tripID2, '49330', 0)
		--PRINT '-> 49330 : ' + cast(@ret as varchar(max))
		
		-- Return the Number of LEGS in the Trip
		--Select @ret=dbo.PCMSLookup(@tripID, '49315', 0)
		--PRINT '-> 49315 : ' + cast(@ret as varchar(max))

		-- Return the Number of LEGS in the Trip
		Select @ret=dbo.PCMSNumLegs(@tripID)
		--PRINT 'TripLegs : ' + cast(@ret/10 as varchar(20))		
			
		-- Cal the Trip
		Select @miles=dbo.PCMSCalculate(@tripID2)
		--PRINT 'Mile Rte2: ' + cast(@miles/10 as varchar(20))
		
		--Select @miles=dbo.PCMSCalcDistance(@serverID, 'Princeton, NJ', 'San Diego, CA')
		--PRINT 'NJ to CA : ' + cast(@miles/10 as varchar(20))	
		--Select @miles=dbo.PCMSCalcDistance(@serverID, '49534', '49315')
		--PRINT 'MI to MI : ' + cast(@miles/10 as varchar(20))
		--Select @miles=dbo.PCMSCalcDistance(@serverID, 'Dublin, PA', 'Baltimore, MD')
		----PRINT 'PA to MD : ' + cast(@miles/10 as varchar(20))	
		--Select @ret
		
		-- Delete the PC Miler Trip
		Select @ret=dbo.PCMSDeleteTrip(@tripID)
		--PRINT 'Del Trip : ' + cast(@ret as varchar(20))
		
		-- Delete the PC Miler Trip
		Select @ret=dbo.PCMSDeleteTrip(@tripID2)
		--PRINT 'Del Trip2: ' + cast(@ret as varchar(20))
		
		
		-- Close the PC Miler Server
		-- Select dbo.PCMSCloseServer(10000)
		Select @ret=dbo.PCMSCloseServer(@serverID)
		--PRINT 'Close    : ' + cast(@ret as varchar(20))
	END
	ELSE
		Select @miles=-1001
		
	
-- Output the results
 Select 'OrderNumber: '+@ordnumber+'  -- Miles:',@miles

-- Delete the temp table
Drop Table #tbl



