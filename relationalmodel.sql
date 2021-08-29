CREATE TABLE Product(
    Product_id VARCHAR(20) CONSTRAINT pk_Product PRIMARY KEY,
    Product_Name VARCHAR(20)NOT NULL,
    Price Number  CHECK (Price > 0) 
);

CREATE TABLE Customer(
    Customer_id VARCHAR(20) CONSTRAINT pk_Customer PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel Number,
);

CREATE TABLE Orders(
    Customer_id VARCHAR(20) ,
    Product_id VARCHAR(20) ,
    Quantity Number,
    Total_Amount Number,
    CONSTRAINT fk_Orders FOREIGN KEY (Customer_id) REFERENCES Orders (Customer_id),
    CONSTRAINT fk_Orders FOREIGN KEY (Product_id) REFERENCES Orders (Product_id),
);


ALTER TABLE Product
    ADD Category VARCHAR2(20);

ALTER TABLE Oders
    ADD OrderDate date DEFAULT GETDATE();