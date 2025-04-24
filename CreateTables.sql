-- Customer Table
CREATE TABLE Customer(
    Cust_ID INT NOT NULL,
    Cust_Name VARCHAR(50),
    Cust_Type VARCHAR(20),
    Cust_DiscountPercentage INT,
    Cust_Addr VARCHAR(100),
    Cust_City VARCHAR(20),
    Cust_State CHAR(2),
    Cust_Country VARCHAR(20),
    Cust_ZipCode INT,
    Cust_PhoneNo INT,
    CONSTRAINT Customer_PK PRIMARY KEY (Cust_ID),
    CONSTRAINT CHK_Cust_Type CHECK (Cust_Type='Prime' OR Cust_Type='NonPrime'),
    CONSTRAINT CHK_Cust_PhoneNo CHECK (Cust_PhoneNo>=100000000 AND Cust_PhoneNo<=999999999)
);

-- Department Table
CREATE TABLE Department (
    Dept_ID INT NOT NULL,
    Dept_Name VARCHAR(30),
    Dept_Type VARCHAR(20),
    Dept_Descr VARCHAR(250),
    CONSTRAINT Department_PK PRIMARY KEY (Dept_ID),
    CONSTRAINT CHK_Dept_Type CHECK (Dept_Type IN ('Computer','Music', 'Electronics','Mobile','Add-ons'))
);
