create table StatusAll(
	statusId int identity(1,1) not null,
	statusCode nvarchar(2),
	statusName nvarchar(100),
    recStatus nvarchar(1),
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table StatusAll

INSERT INTO [dbo].StatusAll
           (statusCode
           ,statusName
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES
('A', 'ปกติ','A',getdate(),'admin'),
('N', 'ปิดใช้งาน','A',getdate(),'admin'),
('W', 'รอชำระ','A',getdate(),'admin'),
('P', 'ชำระแล้ว','A',getdate(),'admin'),
('C', 'ยกเลิก','A',getdate(),'admin')


select * from StatusAll 