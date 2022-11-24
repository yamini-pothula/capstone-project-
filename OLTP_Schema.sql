DROP TABLE IF EXISTS ORDER_ITEMS;
DROP TABLE IF EXISTS ORDER_DETAILS;
DROP TABLE IF EXISTS CUSTOMER_MASTER;
DROP TABLE IF EXISTS PRODUCT_MASTER;


CREATE TABLE CUSTOMER_MASTER (
    Customerid int(100) PRIMARY KEY,
    Name varchar(255) NOT NULL,
    Address varchar(500) NOT NULL,
    City varchar(255) NOT NULL,
    State varchar(255) NOT NULL,
    Pincode int(6) NOT NULL,
    Update_timestamp datetime NOT NULL
);


CREATE TABLE PRODUCT_MASTER (
    Productid int(100) PRIMARY KEY,
    Productcode varchar(100) NOT NULL,
    Productname varchar(255) NOT NULL,
    Sku varchar(100) NOT NULL,
    Rate int(100) NOT NULL,
    Isactive varchar(5) NOT NULL
);


CREATE TABLE ORDER_DETAILS(
    Orderid int(100) NOT NULL,
    Customerid int(100) NOT NULL,
    Order_status_update_timestamp datetime NOT NULL,
    Order_status varchar(100) NOT NULL,
    CONSTRAINT ORDER_PK PRIMARY KEY (Orderid, Order_status) ,
    FOREIGN KEY (Customerid) REFERENCES CUSTOMER_MASTER(Customerid)
);


CREATE TABLE ORDER_ITEMS(
    Orderid int(100) NOT NULL,
    Productid int(100) NOT NULL,
    Quantity int(255) NOT NULL,
    CONSTRAINT ORDER_ITEMS_PK PRIMARY KEY(Orderid, Productid),
    FOREIGN KEY (Orderid) REFERENCES ORDER_DETAILS(Orderid),
    FOREIGN KEY (Productid) REFERENCES PRODUCT_MASTER(Productid)
);