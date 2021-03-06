CREATE FUNCTION [dbo].[GetFullAddress] 
(	
	@addrId int
)
	RETURNS nvarchar(max) 
AS BEGIN
	DECLARE @addrRT nvarchar(max)

	DECLARE @desc nvarchar(100)
	DECLARE @soi nvarchar(100)
	DECLARE @road nvarchar(100)
	DECLARE @distName nvarchar(100)
	DECLARE @ampName nvarchar(100)
	DECLARE @provName nvarchar(100)
	DECLARE @zipCode nvarchar(100)

	DECLARE @addrTp table(
		addrId int ,
		custId int,
		arrdDesc nvarchar(255),
		addrSoi nvarchar(100),
		addrRoad nvarchar(100),
		districts_id int,
		amphures_id int,
		provinces_id int
	)

	insert into @addrTp
	 (
		addrId
		,custId
		,arrdDesc
        ,addrSoi
        ,addrRoad
        ,districts_id
		,amphures_id
		,provinces_id
	 )
	select 
		addrId
		,custId
		,arrdDesc
        ,addrSoi
        ,addrRoad
        ,districts_id
		,amphures_id
		,provinces_id
	from CustomerAddr
	where addrId = @addrId

	set @desc = 
			(
				select 
					ca.arrdDesc
				from @addrTp ca
				where ca.addrId = @addrId
			)

	set @soi = 
			(
				select 
					'ซ.' + ca.addrSoi
				from @addrTp ca
				where ca.addrId = @addrId
			)

	set @road = 
			(
				select 
					'ถ.' + ca.addrRoad
				from @addrTp ca
				where ca.addrId = @addrId
			)

	set @distName = 
			(
				select 
					case when ca.provinces_id = 1 then 'แขวง' + name_th 
						 else 'ต.' + name_th end
				from @addrTp ca
				join Districts d on ca.districts_id = d.districts_id
				where ca.addrId = @addrId
			)

	set @ampName = 
			(
				select 
					case when ca.provinces_id = 1 then 
							case when a.name_th like 'เขต%' then a.name_th
								 else 'อ.' + a.name_th end
						 else 'อ.' + a.name_th end
				from @addrTp ca
				join Amphures a on ca.amphures_id = a.amphures_id
				where ca.addrId = @addrId
			)
	
	set @provName = 
			(
				select 
					case when ca.provinces_id = 1 then name_th 
						 else 'จ.' + name_th end
				from @addrTp ca
				join Provinces p on ca.provinces_id = p.provinces_id
				where ca.addrId = @addrId
			)
	
	set @zipCode = 
			(
				select 
					d.zip_code
				from @addrTp ca
				join Districts d on ca.districts_id = d.districts_id
				where ca.addrId = @addrId
			)
	
	set @addrRT = ISNULL(@desc,'') 
				+ ISNULL(' ' + @soi,'') 
				+ ISNULL(' ' + @road,'') 
				+ ISNULL(' ' + @distName,'') 
				+ ISNULL(' ' + @ampName,'') 
				+ ISNULL(' ' + @provName,'')
				+ ISNULL(' ' + @zipCode,'')

	RETURN @addrRT
END