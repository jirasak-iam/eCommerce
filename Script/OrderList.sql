create table OrderList(
	orderId int identity(1,1) not null,
	custId int not null,
	modelId int not null,
	quatity int not null,
	shipId int not null,
	orderStatus nvarchar(1),
    recStatus nvarchar(1),
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table OrderList


select * from OrderList 