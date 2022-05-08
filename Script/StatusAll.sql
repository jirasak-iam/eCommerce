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
('A', '����','A',getdate(),'admin'),
('N', '�Դ��ҹ','A',getdate(),'admin'),
('W', '�ͪ���','A',getdate(),'admin'),
('P', '��������','A',getdate(),'admin'),
('C', '¡��ԡ','A',getdate(),'admin')


select * from StatusAll 