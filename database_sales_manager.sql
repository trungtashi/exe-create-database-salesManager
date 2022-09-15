create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
	cId int not null auto_increment primary key,
    cName varchar(45),
    cAge int
);
create table Oder(
	oId int not null auto_increment primary key,
    cId int,
    foreign key(cId) references Customer(cId),
    oDate datetime,
    oTotalPrice double
);
create table Product(
	pId int not null auto_increment primary key,
    pName varchar(45),
    pPrice double
);
create table OderDetail(
	oId int,
    pId int,
    odQTY varchar(200),
    foreign key (oId) references Oder(oId),
    foreign key (pId) references Product(pId)
);

