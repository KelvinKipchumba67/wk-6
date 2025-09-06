-- Question one
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question    two

SELECT p.productName, 
       p.productVendor,
       p.productLine
FROM  products p
LEFT JOIN productlines p1
ON p.productLine=p1.productLine;

-- Question Three
-- I used the ORDER BY clause in DESC order because the ASC was returning 10 null values
SELECT o.orderDate,
       o.shippedDate,
       o.status,
       o.customerNumber
FROM orders o

RIGHT JOIN customers c
ON o.customerNumber=c.customerNumber
ORDER BY orderDate DESC
LIMIT 10;
