CREATE FUNCTION GetFullName 
(	
	@custId int
)
	RETURNS nvarchar(255) 
AS BEGIN
	DECLARE @name nvarchar(255)

	set @name = 
			(
				select 
					isnull(tt.titleNameSuffixTh,'') + isnull(c.custFirstNameTh,'') + isnull(' ' + c.custLastNameTh,'')
				from Customer c
				left join TitleName tt on c.custTitleId = tt.titleId
				where c.custId = @custId
			)
	
	RETURN @name
END