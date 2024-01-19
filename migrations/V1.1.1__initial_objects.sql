CREATE SCHEMA PRODUCT_SCHEMA_UPDATE;
CREATE TABLE PRODUCT_FRESH
(
   PRODUCTID NUMERIC(38,0)
  ,PRODUCTNAME VARCHAR(40)
  ,LISTPRICE NUMERIC(38,2)
  ,UNITCOST NUMERIC(38,2)
  ,DISCONTINUED VARCHAR(10)
  ,CATEGORYNAME VARCHAR(100)
  ,SUPPLIER VARCHAR(100)
);