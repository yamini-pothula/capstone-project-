create or replace table `pax-5-366517.ufh_dataset.dim_order`
(Orderid integer,
Order_status_update_timestamp datetime,
Order_status string);


create or replace table `pax-5-366517.ufh_dataset.fact_daily_orders`
(Customerid	integer,
Orderid	integer,
Order_received_timestamp datetime,
Order_delivery_timestamp datetime,
Pincode	integer,
Order_amount integer,
Item_count integer,
Order_delivery_time_seconds integer);


create or replace table `pax-5-366517.ufh_dataset.dim_customer`
(Customerid integer,
Name string,
Address_id integer,
Start_date date,
End_date date);


create or replace table `pax-5-366517.ufh_dataset.dim_address`
(Address_id integer,
Address string,
City string,
State string,
Pincode integer);


create or replace table `pax-5-366517.ufh_dataset.dim_product`
(Productid integer,
Productcode string,
Productname string,
Sku string,
Rate integer,
Isactive boolean,
Start_date date,
End_date date);


create or replace table `pax-5-366517.ufh_dataset.f_order_details`
(Orderid integer,
Order_delivery_timestamp timestamp,
Productid integer,
Quantity integer);