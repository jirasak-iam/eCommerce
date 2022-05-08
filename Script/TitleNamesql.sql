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
('�.�.', 'Master', '�硪��', 'Master','A',getdate(),'admin'),
('�.�.', 'Miss', '��˭ԧ', 'Miss','A',getdate(),'admin'),
('���', 'MR.', '���', 'Mister','A',getdate(),'admin'),
('�.�.', 'Miss', '�ҧ���', 'Miss','A',getdate(),'admin'),
('�ҧ', 'Mrs.', '�ҧ', 'Mistress','A',getdate(),'admin'),
('���ʧ��', 'Buddhist Monk', '���ʧ��', 'Buddhist Monk','A',getdate(),'admin'),
('�ҷ��ǧ', 'Rev.', '�ҷ��ǧ', 'Rev.','A',getdate(),'admin'),
('�������ǧ', 'M.L.', '�������ǧ', 'Mom Luang','A',getdate(),'admin'),
('������Ҫǧ��', 'M.R.', '������Ҫǧ��', 'Mom Rajawong','A',getdate(),'admin'),
('��������', 'M.C.', '��������', 'Mom Chao','A',getdate(),'admin'),
('��ʵ�Ҩ�������õԤس (�Ե�Ԥس)', 'Emeritus Professor', '��ʵ�Ҩ�������õԤس (�Ե�Ԥس)', 'Emeritus Professor','A',getdate(),'admin'),
('��ʵ�Ҩ����', 'Professor', '��ʵ�Ҩ����', 'Professor','A',getdate(),'admin'),
('��������ʵ�Ҩ����', 'Assistant Professor', '��������ʵ�Ҩ����', 'Assistant Professor','A',getdate(),'admin'),
('�ͧ��ʵ�Ҩ����', 'Associate Professor', '�ͧ��ʵ�Ҩ����', 'Associate Professor','A',getdate(),'admin')


select * from TitleName where titleId = 1