create table TitleName(
	titleId int identity(1,1) not null,
	titleNameSuffixTh nvarchar(100),
	titleNameSuffixEn nvarchar(100),
	titlerNameTh nvarchar(100),
	titlerNameEn nvarchar(100),
    recStatus nvarchar(1),
	createDate datetime,
	createBy nvarchar(100),
	updateDate datetime,
	updateBy nvarchar(100)
)

--drop table TitleName

INSERT INTO [dbo].TitleName
           (titleNameSuffixTh
           ,titleNameSuffixEn
           ,titlerNameTh
           ,titlerNameEn
		   ,recStatus
		   ,createDate
		   ,createBy) VALUES
('ด.ช.', 'Master', 'เด็กชาย', 'Master','A',getdate(),'admin'),
('ด.ญ.', 'Miss', 'เด็กหญิง', 'Miss','A',getdate(),'admin'),
('นาย', 'MR.', 'นาย', 'Mister','A',getdate(),'admin'),
('น.ส.', 'Miss', 'นางสาว', 'Miss','A',getdate(),'admin'),
('นาง', 'Mrs.', 'นาง', 'Mistress','A',getdate(),'admin'),
('พระสงฆ์', 'Buddhist Monk', 'พระสงฆ์', 'Buddhist Monk','A',getdate(),'admin'),
('บาทหลวง', 'Rev.', 'บาทหลวง', 'Rev.','A',getdate(),'admin'),
('หม่อมหลวง', 'M.L.', 'หม่อมหลวง', 'Mom Luang','A',getdate(),'admin'),
('หม่อมราชวงศ์', 'M.R.', 'หม่อมราชวงศ์', 'Mom Rajawong','A',getdate(),'admin'),
('หม่อมเจ้า', 'M.C.', 'หม่อมเจ้า', 'Mom Chao','A',getdate(),'admin'),
('ศาสตราจารย์เกียรติคุณ (กิตติคุณ)', 'Emeritus Professor', 'ศาสตราจารย์เกียรติคุณ (กิตติคุณ)', 'Emeritus Professor','A',getdate(),'admin'),
('ศาสตราจารย์', 'Professor', 'ศาสตราจารย์', 'Professor','A',getdate(),'admin'),
('ผู้ช่วยศาสตราจารย์', 'Assistant Professor', 'ผู้ช่วยศาสตราจารย์', 'Assistant Professor','A',getdate(),'admin'),
('รองศาสตราจารย์', 'Associate Professor', 'รองศาสตราจารย์', 'Associate Professor','A',getdate(),'admin')


select * from TitleName where titleId = 1