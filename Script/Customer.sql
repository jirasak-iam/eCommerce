create table Customer(
	custId int identity(1,1) not null,
	custName nvarchar(100) not null,
	custTitleId int not null,
	custFirstNameTh nvarchar(100) not null,
	custLastNameTh nvarchar(100) not null,
	custFirstNameEn nvarchar(100) not null,
	custLastNameEn nvarchar(100) not null,
	custPassword varbinary(MAX) not null,
	custType int not null,
	custAddrId int not null,
    recStatus nvarchar(1) not null,
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table Customer

insert into     Customer
		(custName
           ,custTitleId
           ,custFirstNameTh
           ,custLastNameTh
		   ,custFirstNameEn
		   ,custLastNameEn
		   ,custPassword
		   ,custType
		   ,custAddrId
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES  
('Cust1',3,'Customer','One','Customer','One',ENCRYPTBYPASSPHRASE('admin ','123456'),1,1,'A',getdate(),'admin')

select * from Customer