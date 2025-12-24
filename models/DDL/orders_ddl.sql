CREATE OR REPLACE TABLE ORDERS (
    order_id        INTEGER,
    customer_id     INTEGER,
    order_date      DATE,
    order_status    STRING,
    product_name    STRING,
    quantity        INTEGER,
    unit_price      NUMBER(10,2),
    total_amount    NUMBER(10,2),
    payment_method  STRING,
    city            STRING
);

INSERT INTO ORDERS VALUES
(1, 101, '2024-01-05', 'DELIVERED', 'Laptop', 1, 55000, 55000, 'CREDIT_CARD', 'Pune'),
(2, 102, '2024-01-06', 'DELIVERED', 'Mobile Phone', 1, 25000, 25000, 'UPI', 'Mumbai'),
(3, 103, '2024-01-06', 'CANCELLED', 'Headphones', 2, 2000, 4000, 'CREDIT_CARD', 'Delhi'),
(4, 104, '2024-01-07', 'DELIVERED', 'Keyboard', 1, 1500, 1500, 'NET_BANKING', 'Bangalore'),
(5, 105, '2024-01-08', 'DELIVERED', 'Mouse', 2, 800, 1600, 'UPI', 'Hyderabad'),
(6, 101, '2024-01-09', 'DELIVERED', 'Monitor', 1, 12000, 12000, 'CREDIT_CARD', 'Pune'),
(7, 106, '2024-01-10', 'PENDING', 'Tablet', 1, 18000, 18000, 'COD', 'Chennai'),
(8, 107, '2024-01-11', 'DELIVERED', 'Smart Watch', 1, 9000, 9000, 'UPI', 'Kolkata'),
(9, 108, '2024-01-12', 'DELIVERED', 'Bluetooth Speaker', 1, 3500, 3500, 'CREDIT_CARD', 'Jaipur'),
(10, 109, '2024-01-13', 'RETURNED', 'Camera', 1, 42000, 42000, 'NET_BANKING', 'Ahmedabad'),
(11, 110, '2024-01-14', 'DELIVERED', 'Tripod', 1, 1800, 1800, 'UPI', 'Indore'),
(12, 102, '2024-01-15', 'DELIVERED', 'Power Bank', 2, 1500, 3000, 'CREDIT_CARD', 'Mumbai'),
(13, 111, '2024-01-16', 'PENDING', 'Router', 1, 2800, 2800, 'COD', 'Noida'),
(14, 112, '2024-01-17', 'DELIVERED', 'External HDD', 1, 6000, 6000, 'UPI', 'Gurgaon'),
(15, 113, '2024-01-18', 'DELIVERED', 'USB Cable', 3, 300, 900, 'UPI', 'Nagpur'),
(16, 114, '2024-01-19', 'DELIVERED', 'Gaming Mouse', 1, 4500, 4500, 'CREDIT_CARD', 'Pune'),
(17, 115, '2024-01-20', 'CANCELLED', 'Printer', 1, 15000, 15000, 'NET_BANKING', 'Surat'),
(18, 116, '2024-01-21', 'DELIVERED', 'Scanner', 1, 9000, 9000, 'UPI', 'Vadodara'),
(19, 117, '2024-01-22', 'DELIVERED', 'Desk Lamp', 2, 1200, 2400, 'CREDIT_CARD', 'Bhopal'),
(20, 118, '2024-01-23', 'DELIVERED', 'Office Chair', 1, 11000, 11000, 'NET_BANKING', 'Lucknow');
