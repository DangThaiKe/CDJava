create database CDWeb
use CDWeb

create table Category( 
	cateID int not null,
	cateName nvarchar(20) not null,
	primary key (cateID))

insert into Category values
(1, N'Đồng hồ nam'),
(2, N'Đồng hồ nữ'),
(3, N'Đồng hồ chống nước'),
(4, N'Đồng hồ thể thao'),
(5, N'Đồng hồ thông minh'),
(6, N'Phụ kiện đồng hồ')

select * from Category

/* ----------------------------- */
/* ----------------------------- */
create table Users (
	userID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	firstName nvarchar(20),
	lastName nvarchar(20),
	email nvarchar(30) NOT NULL,
	[password] nvarchar(30) NOT NULL,
	[address] nvarchar(30) NOT NULL,
	phone nvarchar(20),
	avatar nvarchar(255))

insert into Users values 
(N'Le', N'Minh', N'leminh23@gmail.com', N'12839488', N'237 Nguyễn Huệ', N'0293847222', N'https://i.pinimg.com/236x/17/1d/5e/171d5e22b3ea5f1a6659ba10a848bb4b.jpg'),
(N'Pham', N'Hoa', N'phamhoa2@gmail.com', N'1278293223', N'29 Hồ Chí Minh', N'0923846373', N'https://i.pinimg.com/236x/4a/15/cb/4a15cb06824d2a89e17086ee7d2eb494.jpg'),
(N'Tran', N'Ngan', N'tranngan89@gmail.com', N'12111212', N'25 Phạm Tuân', N'0982737466', N'https://i.pinimg.com/236x/96/51/81/965181b77ccd3d9ed60d28b57e3de318.jpg'),
(N'Nguyen', N'Nam', N'nguyennam21@gmail.com', N'1909902D', N'887 Phạm Văn Đồng', N'0988732222', N'https://i.pinimg.com/236x/b3/ee/3c/b3ee3c993156c620f240ac15fd456d31.jpg')

select * from Users
drop table Users

/* ----------------------------- */
/* ----------------------------- */
CREATE TABLE Orders (
	orderID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	purchaseDate date NOT NULL,
	deliveryAddress nvarchar(50) NOT NULL,
	orderStatus nvarchar(20) NOT NULL,
	userID int NOT NULL,
	CONSTRAINT FK_Orders_User FOREIGN KEY (userID) REFERENCES Users(userID))

insert into Orders values 
('2022/3/23', N'88 Hai Ba Trung', N'hoàn thành', 1),
('2023/6/12', N'27 Dien Bien Phu', N'đang giao', 2),
('2021/8/6', N'11 Nam Cung', N'hoàn thành', 3)

select * from Orders

/* ----------------------------- */
/* ----------------------------- */
create table Products(
	productID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	productName nvarchar(50) NOT NULL,
	[image] nvarchar(512) NOT NULL,
	price money NOT NULL,
	[description] nvarchar(255) NOT NULL,
	discount int null,
	cateID int NOT NULL,
	CONSTRAINT FK_Products_Category FOREIGN KEY (cateID) REFERENCES Category(cateID))

select * from Products






