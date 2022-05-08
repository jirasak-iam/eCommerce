create table ModelProducts(
	modelId int identity(1,1) not null,
	modelNameTh nvarchar(100),
	modelNameEn nvarchar(100),
	modelWeight decimal(5,2),
	brandId int,
	typeId int,
	stockQuatity int,
	price money,
    recStatus nvarchar(1),
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table ModelProducts

INSERT INTO [dbo].ModelProducts
           (modelNameTh
           ,modelNameEn
		   ,modelWeight
		   ,brandId
		   ,typeId
		   ,stockQuatity
		   ,price
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES
('Nitro 5', 'Nitro 5',2.5,1,1,20,25000 ,'A',getdate(),'admin'),
('Aspire 7', 'Aspire 7',3,1,1,25,23000 ,'A',getdate(),'admin'),
('Pavilion', 'Pavilion',2.75,2,1,21,27000 ,'A',getdate(),'admin'),
('IdeaPad', 'IdeaPad',2.8,3,1,5,28000 ,'A',getdate(),'admin'),
('Inspiron', 'Inspiron',2.4,4,1,7,24000 ,'A',getdate(),'admin'),
('ThinkCentre M80q Tiny', 'ThinkCentre M80q Tiny',3.4,4,2,7,30000 ,'A',getdate(),'admin'),
('S22', 'S22',1.5,6,3,7,40000 ,'A',getdate(),'admin'),
('Find X2 Pro', 'Find X2 Pro',1.5,5,3,7,32000 ,'A',getdate(),'admin'),
('Iphone12', 'Iphone12',1.5,7,3,2,40000 ,'A',getdate(),'admin'),
('iPad Gen 9 2021', 'iPad Gen 9 2021',2.2,7,4,0,42000 ,'A',getdate(),'admin')


select * from ModelProducts 