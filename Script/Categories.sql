create table Categories(
	catId int identity(1,1) not null,
	catNameTh nvarchar(100),
	catNameEn nvarchar(100),
    recStatus nvarchar(1),
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table Categories

INSERT INTO [dbo].Categories
           (catNameTh
           ,catNameEn
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES
('Computer', 'Computer','A',getdate(),'admin'),
('Phone', 'Phone','A',getdate(),'admin')


select * from Categories 