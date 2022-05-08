create table Shipment(
	shipId int identity(1,1) not null,
	shipNameTh nvarchar(100),
	shipNameEn nvarchar(100),
    recStatus nvarchar(1),
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table Shipment

INSERT INTO [dbo].Shipment
           (shipNameTh
           ,shipNameEn
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES
('FedEx', 'FedEx','A',getdate(),'admin'),
('UPS', 'UPS' ,'A',getdate(),'admin')


select * from Shipment 