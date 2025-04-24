-- Select Prime customers from California, ordered by name
SELECT Cust_ID, Cust_Name, Cust_City, Cust_PhoneNo
FROM Customer
WHERE Cust_Type = 'Prime' AND Cust_State = 'CA'
ORDER BY Cust_Name;
-- Count customers by state and type
SELECT 
    Cust_State,
    Cust_Type,
    COUNT(*) AS Customer_Count,
    AVG(Cust_DiscountPercentage) AS Avg_Discount
FROM Customer
GROUP BY Cust_State, Cust_Type
ORDER BY Cust_State, Cust_Type;
-- Customers with potential department interests (example)
SELECT 
    c.Cust_ID,
    c.Cust_Name,
    d.Dept_Name AS Potential_Interest
FROM Customer c
JOIN Department d ON 
    (c.Cust_City = 'New York' AND d.Dept_Type = 'Computer') OR
    (c.Cust_City = 'Los Angeles' AND d.Dept_Type = 'Mobile')
ORDER BY c.Cust_Name;
-- Customers with above-average discount percentages
SELECT Cust_Name, Cust_DiscountPercentage
FROM Customer
WHERE Cust_DiscountPercentage > (
    SELECT AVG(Cust_DiscountPercentage)
    FROM Customer
)
ORDER BY Cust_DiscountPercentage DESC;
-- Delete test customers
DELETE FROM Customer
WHERE Cust_ID BETWEEN 10000 AND 20000
AND Cust_Name LIKE 'Test%';
-- Create a view for customer analytics
CREATE VIEW Customer_Analytics AS
SELECT 
    Cust_Type,
    Cust_State,
    COUNT(*) AS Total_Customers,
    AVG(Cust_DiscountPercentage) AS Avg_Discount,
    MAX(Cust_DiscountPercentage) AS Max_Discount
FROM Customer
GROUP BY Cust_Type, Cust_State;
-- Analyze potential customer preferences by department type
SELECT 
    d.Dept_Type,
    c.Cust_Type,
    COUNT(*) AS Customer_Count,
    GROUP_CONCAT(DISTINCT c.Cust_State) AS States
FROM Customer c
CROSS JOIN Department d
WHERE (d.Dept_Type = 'Computer' AND c.Cust_Type = 'Prime')
   OR (d.Dept_Type = 'Add-ons' AND c.Cust_Type = 'NonPrime')
GROUP BY d.Dept_Type, c.Cust_Type;
-- Create comprehensive reporting view
CREATE VIEW Customer_Department_Report AS
SELECT 
    c.Cust_ID,
    c.Cust_Name,
    c.Cust_Type,
    c.Cust_City,
    c.Cust_State,
    d.Dept_Name AS Recommended_Department,
    d.Dept_Type,
    CASE
        WHEN c.Cust_Type = 'Prime' THEN 'High Value'
        ELSE 'Standard'
    END AS Customer_Value
FROM Customer c
JOIN Department d ON 
    (c.Cust_Type = 'Prime' AND d.Dept_Type IN ('Computer', 'Electronics'))
    OR (c.Cust_Type = 'NonPrime' AND d.Dept_Type IN ('Add-ons', 'Mobile'))
ORDER BY c.Cust_Type DESC, c.Cust_Name;
