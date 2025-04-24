-- --------------------- Customer Sample Data ---------------------
REPLACE INTO Customer (Cust_ID, Cust_Name, Cust_Type, Cust_DiscountPercentage, Cust_Addr, Cust_City, Cust_State, Cust_Country, Cust_ZipCode, Cust_PhoneNo) VALUES
(10001, 'Alice Johnson', 'Prime', 10, '123 Maple St', 'New York', 'NY', 'USA', 10001, 123456789),
(10002, 'Bob Smith', 'NonPrime', 5, '456 Oak St', 'Chicago', 'IL', 'USA', 60601, 987654321),
(10003, 'Carol White', 'Prime', 15, '789 Pine Ave', 'Dallas', 'TX', 'USA', 75201, 234567890),
(10004, 'David Brown', 'NonPrime', 8, '321 Cedar Blvd', 'Miami', 'FL', 'USA', 33101, 345678901),
(10005, 'Eva Green', 'Prime', 12, '654 Walnut Rd', 'Seattle', 'WA', 'USA', 98101, 456789012),
(10006, 'Frank Black', 'NonPrime', 5, '888 Birch Ln', 'Denver', 'CO', 'USA', 80201, 567890123),
(10007, 'Grace Lee', 'Prime', 10, '777 Fir St', 'Atlanta', 'GA', 'USA', 30301, 678901234),
(10008, 'Henry Adams', 'Prime', 20, '1010 Ash St', 'Austin', 'TX', 'USA', 73301, 789012345),
(10009, 'Ivy Davis', 'NonPrime', 7, '2020 Elm Dr', 'San Diego', 'CA', 'USA', 92101, 890123456),
(10010, 'Jack Wilson', 'Prime', 10, '3030 Oak Way', 'Portland', 'OR', 'USA', 97201, 901234567);

-- --------------------- Department Sample Data ---------------------
REPLACE INTO Department (Dept_ID, Dept_Name, Dept_Type, Dept_Descr) VALUES
(1, 'IT', 'Computer', 'Handles all tech infrastructure.'),
(2, 'Audio', 'Music', 'Responsible for musical instruments.'),
(3, 'Electronics', 'Electronics', 'TVs, radios, and other electronics.'),
(4, 'Mobile', 'Mobile', 'Mobile phones and accessories.'),
(5, 'Gadgets', 'Add-ons', 'Smart watches and IoT devices.'),
(6, 'Gaming', 'Electronics', 'Gaming consoles and accessories.'),
(7, 'Books', 'Add-ons', 'Books and stationary.'),
(8, 'Support', 'Computer', 'Technical customer support.'),
(9, 'Repair', 'Electronics', 'Device repair services.'),
(10, 'Accessories', 'Mobile', 'Cables, cases, chargers.');
