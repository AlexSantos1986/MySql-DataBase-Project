
use BOOKSTORE;
 

/*1.*/
SELECT 
    Order_Item_Id,Customer_Id,Sale_Date,Amount,Quantity
FROM
    SALES
WHERE
    Sale_Date BETWEEN '2016-01-15' AND '2016-02-20';
 
 
/*2*/
SELECT 
    Title, Author, Publisher
FROM
    ORDER_ITEM
ORDER BY Publisher ASC;
  
/*3*/
SELECT 
    Title,
    Author,
    EXTRACT(YEAR FROM Date_Published) AS Books_Published_2014
FROM
    ORDER_ITEM
WHERE
    Date_Published LIKE '2014%'
ORDER BY Title ASC;
 
 
 
/*4*/
SELECT 
    STOCK.Stock_Id,
    ORDER_ITEM.Title,
    Stock_Quantity AS Currenty_QTY_In_Stock
FROM
    ORDER_ITEM
        INNER JOIN
    STOCK ON ORDER_ITEM.Order_Item_Id = STOCK.Order_Item_Id
ORDER BY Title ASC;
                
 
/*5*/ 
SELECT 
    Return_Book_Id, SUM(Amount_Return) AS Return_Book_Total
FROM
    RETURN_BOOK
GROUP BY Return_Book_Id WITH ROLLUP;
 
/*6*/
SELECT 
    Sales_Id, SUM(Amount) total_Revenue_Year
FROM
    sales
WHERE
    Sale_Date LIKE '2016%'
GROUP BY Sales_Id WITH ROLLUP;
               
