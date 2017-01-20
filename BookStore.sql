CREATE database BOOKSTORE;
 
 
USE BOOKSTORE;
 
 
create TABLE CUSTOMER(
 
Customer_Id varchar (20) not null,
FirstName varchar (50) not null,
LastName varchar (50) not null,
MobilePhone varchar (50) not null,
Address varchar (100) not null,
City varchar (100) not null,
County varchar(100) not null,
PostCode varchar (50) not null,
  
primary key (Customer_Id)
);
 
 
 
create TABLE ORDERS(
 
Orders_Id varchar (20) not null,
Customer_Id varchar (50) not null,
DateOfOrder Date not null,
 
primary key (Orders_Id)
);
 
 
create TABLE ORDER_ITEM(
 
Order_Item_Id varchar (20) not null,
Orders_Id varchar(50) not null,
Title varchar(50) not null,
Author varchar(50) not null,
Publisher varchar(50) not null,
Edition varchar (50) not null,
ISBN varchar(50) not null,
Cost_Unit decimal(9,2) not null,
Date_Published DATE NOT NULL,

primary key (Order_Item_Id)
);
 

 
create TABLE SALES(
 
Sales_Id varchar (20) not null,
Order_Item_Id varchar(50) not null,
Customer_Id varchar (20) not null,
Sale_Date DATE NOT NULL,
Amount DECIMAL (9,2)not null,
Quantity int not null,
 
primary key (Sales_Id)
);
 
 
create TABLE STOCK(
 
Stock_Id varchar (20) not null,
Supplier_Id varchar(20) not null,
Order_Item_Id varchar(20) not null,
Return_Book_Id varchar(20) not null,
Stock_Quantity int  not null,
Stock_Amount decimal (9,2)not null,
 
primary key (Stock_Id)
);
 
 
create TABLE SUPPLIER(
 
Supplier_Id varchar (20) not null,
Supplier_Name varchar(50) not null,
Supplier_Address varchar(50) not null,
Supplier_Tel varchar(50) not null,
Postal_Code varchar(50) not null,
 
primary key (Supplier_Id)
);
 
 
create TABLE RETURN_BOOK(
 
Return_Book_Id varchar (20) not null,
Order_Item_Id varchar(20) not null,
Customer_Id varchar (20) not null,
Return_date date not null,
QTY_Return int not null,
Amount_Return DECIMAL (9,2) not null,
 
primary key (Return_Book_Id )
);
 
 
 
 
 
INSERT INTO CUSTOMER(Customer_Id,FirstName,LastName,MobilePhone,Address,City,County,PostCode)
VALUES
('CUST01','Susan','Adams','0837493778','Áras Chrónáin Orchard Road','Dublin','Clondalkin' ,'Dublin 22'),
 
('CUST02','Janet','Bates','0849279381','Ilac Centre,Henry St','Dublin','Kildare ' ,'Dublin 2'),
 
('CUST03','Albert','Birkett','0898264730','46 Kildare Street,','Dublin','Co.Dublin' ,'Dublin 24'),
 
('CUST04','Teresa','Bolger','0813796547','6 Harcourt Street,','Dublin','Co.Dublin' ,'Dublin 4'),
 
('CUST05','Mathew','Bowman','0856893774','46 Kildare Street,','Dublin','Clondalkin' ,'Dublin 6'),
 
('CUST06','Malcolm','Bradbury','0877895749','7 Merrion Square ','Dublin','Blackrock ','Dublin 8'),
 
('CUST07','Michael','Breen','0847497772','19 Br. na Faiche','Dublin','Blackrock','Dublin 11'),
 
('CUST08','Noel','Burke','0803455576','Landsdowne House, Ballsbridge ','Dublin','Clondalkin', 'Dublin 4'),
 
('CUST09','Colin','Clamp','0824493598','43 East Essex St., Temple Bar,','Dublin','Clondalkin' ,'Dublin 23'),
 
('CUST10','John','Connell','08870988746','Áras Chrónáin Orchard Road','Dublin','Clondalkin', 'Dublin 9');
 
 
 
 
INSERT INTO ORDERS(Orders_Id ,Customer_Id,DateOfOrder)
VALUES
('ORD01','CUST01','2016-12-11'),
('ORD02','CUST02','2016-01-15'),
('ORD03','CUST03','2016-04-28'),
('ORD04','CUST04','2016-05-19'),
('ORD05','CUST05','2016-04-20'),
('ORD06','CUST06','2016-07-08'),
('ORD07','CUST07','2016-02-17'),
('ORD08','CUST08','2016-11-04'),
('ORD09','CUST09','2016-09-03');
 
INSERT into ORDERS(Orders_Id ,Customer_Id,DateOfOrder)
VALUES
('ORD10','CUST01','2014-10-26');
 

 
 
 
INSERT INTO ORDER_ITEM(Order_Item_Id,Orders_Id,Title,Author,Publisher,Edition,ISBN,Cost_Unit,Date_Published)
VALUES
('ORI01','ORD01','Java','Mahatma M.K.Gandhi','Andsor Books','1rs Edition','232324',100.92,'2015-07-03'),
('ORI02','ORD02','MYSQL','Rebecca Connell','AK Peters, Ltd','2sd Edition','6465777',150.45,'2014-05-09'),
('ORI03','ORD03','Web Design','Julie Crisp','American Library Association','Last Edition','86878788',55.66,'2014-10-23'),
('ORI04','ORD04','Pyton','Howard Cunnell','American Library Association','1rs Edition','311212124',120.54,'2013-09-15'),
('ORI05','ORD05','C++','Emma Darwin','ACM Press Books','3th Edition','9989763',99.23,'2013-06-27'),
('ORI06','ORD06','OOSE','Susan Davis','I-Tech Education and Publishing','4th Edition','76824887',98.43,'2016-04-30'),
('ORI07','ORD07','PHP','Hal Duncan','APress','4th Edition','9643572',79.56,'2014-11-01'),
('ORI08','ORD08','JavaScript','Edward Fenton','AK Press','6th Edition','288348',76.87,'2016-09-29'),
('ORI09','ORD09','Android','Jocelyn Ferguson','AK Press','10th Edition','7438324',56.87,'2016-12-03'),
('ORI10','ORD10','Jquery','Jill Foulston','Bartlett Publishing','10th Edition','87943276',98.54,'2014-03-17');
  


 
 
INSERT INTO RETURN_BOOK (Return_Book_Id,Order_Item_Id,Customer_Id,Return_date,QTY_Return,Amount_Return)
VALUES
('RET01','ORI01','CUST01','2016-12-15',2,201.84),
('RET02','ORI02','CUST02','2016-01-23',1,150.45),
('RET03','ORI03','CUST03','2016-04-18',3,166.98),
('RET04','ORI04','CUST04','2016-05-21',1,120.54),
('RET05','ORI05','CUST05','2016-04-27',1,99.23),
('RET06','ORI06','CUST06','2016-07-15',5,492.65),
('RET07','ORI07','CUST07','2016-02-24',2,159.12),
('RET08','ORI08','CUST08','2016-11-09',3,230.61),
('RET09','ORI09','CUST09','2016-09-10',1,56.87),
('RET10','ORI10','CUST10','2016-10-30',1,98.54);
 
 
 

 
INSERT INTO SALES(Sales_Id,Order_Item_Id,Customer_Id,Sale_Date,Amount,Quantity)
VALUES
('SEL01','ORI01','CUST01','2016-12-12',706.44,7),
('SEL02','ORI02','CUST02','2016-01-17',601.80,4),
('SEL03','ORI03','CUST03','2016-04-30',445.28,8),
('SEL04','ORI04','CUST04','2016-05-20',241.08,2),
('SEL05','ORI05','CUST05','2016-04-23',99.23,1),
('SEL06','ORI06','CUST06','2016-07-09',886.77,9),
('SEL07','ORI07','CUST07','2016-02-19',477.36,6),
('SEL08','ORI08','CUST08','2016-11-05',461.22,6),
('SEL09','ORI09','CUST09','2016-09-05',161.61,3),
('SEL10','ORI10','CUST10','2016-10-27',98.54,1);
 
 
 
ALTER TABLE SALES
ADD FOREIGN KEY (Order_Item_Id)
REFERENCES  ORDER_ITEM(Order_Item_Id);
 
ALTER TABLE SALES
ADD FOREIGN KEY (Customer_Id)
REFERENCES  CUSTOMER(Customer_Id);
 
INSERT INTO STOCK(Stock_Id,Supplier_Id,Order_Item_Id,Return_Book_Id,Stock_Quantity,Stock_Amount)
VALUES
('STC01','SUP01','ORI01','RET01',5,504.60),
('STC02','SUP02','ORI02','RET02',7,1053.15),
('STC03','SUP03','ORI03','RET03',5,278.30),
('STC04','SUP04','ORI04','RET04',9,1084.86),
('STC05','SUP05','ORI05','RET05',10,992.30),
('STC06','SUP06','ORI06','RET06',6,591.18),
('STC07','SUP07','ORI07','RET07',6,477.18),
('STC08','SUP08','ORI08','RET08',7,538.09),
('STC09','SUP09','ORI09','RET09',8,454.96),
('STC10','SUP10','ORI10','RET10',10,985.40);
 
 
 
  
INSERT INTO SUPPLIER(Supplier_Id,Supplier_Name,Supplier_Address,Supplier_Tel,Postal_Code)
VALUES
('SUP01','Exclusive books ','Memorial Rd/ ','021028304','dublin 1'),
('SUP02','Bargain books Milnerton','Milnerton Shopping Center','073848430','dublin 15'),
('SUP03','Books GAlore Cambridge','Milnerton Shopping Center','04345634','dublin 2'),
('SUP04','Books Bonanza East Rand','Cambridge Centre','09545830','dublin 13'),
('SUP05','Minatal books Milnerton','Villa Moura','0562830','dublin 8'),
('SUP06','Mayas books supplier','London road luia','01111830','dublin 4'),
('SUP07','Pearson','Merrion St Upr, Waterloo Rd/Eastmoreland Pl','02102830','dublin 15'),
('SUP08','Oracle','Beresford St, Capel St','02102830','dublin 24'),
('SUP09','Oracle','Grafton St, Dawson St','03442830','dublin 2'),
('SUP10','Pearson','Dublin Rd, Bayside Sq, Verbena Ave','04442830','dublin 13');


ALTER TABLE ORDERS
ADD FOREIGN KEY (Customer_Id)
REFERENCES CUSTOMER(Customer_Id);

 
ALTER TABLE ORDER_ITEM 
ADD FOREIGN KEY (Orders_Id)
REFERENCES ORDERS(Orders_Id);


ALTER TABLE RETURN_BOOK 
ADD FOREIGN KEY (Order_Item_Id)
REFERENCES  ORDER_ITEM(Order_Item_Id);
 
ALTER TABLE RETURN_BOOK 
ADD FOREIGN KEY (Customer_Id)
REFERENCES  CUSTOMER (Customer_Id);

 
ALTER TABLE STOCK
ADD FOREIGN KEY (Supplier_Id)
REFERENCES  SUPPLIER(Supplier_Id);
 
ALTER TABLE STOCK
ADD FOREIGN KEY (Order_Item_Id)
REFERENCES  ORDER_ITEM(Order_Item_Id);
 
 
ALTER TABLE STOCK
ADD FOREIGN KEY (Return_Book_Id)
REFERENCES  RETURN_BOOK(Return_Book_Id);
 

