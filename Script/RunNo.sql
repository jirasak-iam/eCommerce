create table RunNo(
	runId int identity(1,1) not null,
	runCode nvarchar(10),
	runPrefixFlag nvarchar(1) not null,
	runPrefix nvarchar(3),
	runFormatDateFlag nvarchar(1) not null,
	runFormatDate nvarchar(5),
	yearRunNo int,
	monthRunNo int,
	runNoLenght int not null,
	runNo int,
    recStatus nvarchar(1) not null,
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table RunNo

insert into     RunNo
		(runCode
           ,runPrefixFlag
           ,runPrefix
           ,runFormatDateFlag
		   ,runFormatDate
		   ,yearRunNo
		   ,monthRunNo
		   ,runNoLenght
		   ,runNo
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES  
('CUSTOMER','Y','C','N',null,2022,5,5,1,'A',getdate(),'admin'),
('ORDERLIST','Y','OL','Y','YYMM',2022,5,6,1,'A',getdate(),'admin')

select * from RunNo