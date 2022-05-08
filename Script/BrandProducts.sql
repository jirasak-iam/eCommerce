create table BrandProducts(
	brandId int identity(1,1) not null,
	brandNameTh nvarchar(100),
	brandNameEn nvarchar(100),
    recStatus nvarchar(1),
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table brandProducts

INSERT INTO [dbo].BrandProducts
           (brandNameTh
           ,brandNameEn
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES
('Acer', 'Acer','A',getdate(),'admin'),
('HP', 'HP' ,'A',getdate(),'admin'),
('Lenovo', 'Lenovo' ,'A',getdate(),'admin'),
('Dell', 'Dell' ,'A',getdate(),'admin'),
('Oppo', 'Oppo','A',getdate(),'admin'),
('Samsung', 'Samsung','A',getdate(),'admin'),
('Apple', 'Apple','A',getdate(),'admin')


select * from BrandProducts 