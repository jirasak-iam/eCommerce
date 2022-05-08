create table CustomerAddr(
	addrId int identity(1,1) not null,
	custId int not null,
	arrdDesc nvarchar(255),
	addrSoi nvarchar(100),
	addrRoad nvarchar(100),
	districts_id int,
	amphures_id int,
	provinces_id int,
    recStatus nvarchar(1) not null,
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table CustomerAddr

insert into     CustomerAddr
		(
		   custId
		   ,arrdDesc
           ,addrSoi
           ,addrRoad
           ,districts_id
		   ,amphures_id
		   ,provinces_id
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES  
(1,'123','อินทามระ 12','สุทธิสารวินิจฉัย',102601,26,1,'A',getdate(),'admin')

select * from CustomerAddr