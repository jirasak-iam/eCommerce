create table TypeProducts(
	typeId int identity(1,1) not null,
	typeNameTh nvarchar(100),
	typeNameEn nvarchar(100),
	catId int not null,
    recStatus nvarchar(1),
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table TypeProducts

INSERT INTO [dbo].TypeProducts
           (typeNameTh
           ,typeNameEn
		   ,catId
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES
('Notebook', 'Notebook',1,'A',getdate(),'admin'),
('PC Desktop', 'PC Desktop',1 ,'A',getdate(),'admin'),
('Smart Phone', 'Smart Phone',2 ,'A',getdate(),'admin'),
('Tablet', 'Tablet',2 ,'A',getdate(),'admin')


select * from TypeProducts 