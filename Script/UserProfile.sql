create table UserProfile(
	userId int identity(1,1) not null,
	userName nvarchar(100),
	userPassword varbinary(MAX),
	userRole int,
    recStatus nvarchar(1),
	createDate datetime,
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table UserProfile

insert into     UserProfile
SELECT  'admin'userName, ENCRYPTBYPASSPHRASE('admin ','123456')userPassword,1,'A', getdate() createDate,null updateDate,null updateBy

select * from UserProfile where userId = 1