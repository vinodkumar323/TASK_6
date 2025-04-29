create  schema online_sales;

create table flipkart(
order_id int, 
customer_name varchar(50),
product_name varchar(50),
product_id int,
order_date int,
amount int,
address varchar(70)
);

DROP TABLE IF EXISTS flipkart;

CREATE TABLE flipkart (
    order_id INT,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    product_id INT,
    order_date DATE,  
    amount INT,
    address VARCHAR(70)
);
INSERT INTO flipkart (order_id, customer_name, product_name, product_id, order_date, amount, address) VALUES
(1001, 'Fateh Mander', 'Television', 185, '2024-06-05', 39784, 'Bhubaneswar, Odisha, India'),
(1002, 'Priyansh Singhal', 'Television', 115, '2025-03-05', 19529, 'Jaipur, Rajasthan, India'),
(1003, 'Hansh Majumdar', 'Laptop', 194, '2024-09-19', 12244, 'Delhi, Delhi, India'),
(1004, 'Nitara Choudhry', 'Printer', 161, '2024-10-15', 47408, 'Mysore, Karnataka, India'),
(1005, 'Mannat Bhat', 'Router', 131, '2024-07-15', 6707, 'Lucknow, Uttar Pradesh, India'),
(1006, 'Aniruddh Tara', 'Mobile Phone', 119, '2025-01-06', 44858, 'Mysore, Karnataka, India'),
(1007, 'Bhamini Deep', 'Camera', 123, '2025-01-09', 38469, 'Dehradun, Uttarakhand, India'),
(1008, 'Saksham Srinivas', 'Headphones', 167, '2024-05-05', 16629, 'Patna, Bihar, India'),
(1009, 'Ryan Chakraborty', 'Mobile Phone', 195, '2024-09-12', 16874, 'Lucknow, Uttar Pradesh, India'),
(1010, 'Renee Baral', 'Tablet', 176, '2025-04-04', 41461, 'Coimbatore, Tamil Nadu, India'),
(1011, 'Vritika Datta', 'Tablet', 182, '2024-06-15', 33292, 'Amritsar, Punjab, India'),
(1012, 'Anya Saini', 'Headphones', 112, '2025-01-20', 13751, 'Patna, Bihar, India'),
(1013, 'Inaaya Jain', 'Tablet', 105, '2024-09-14', 6563, 'Chennai, Tamil Nadu, India'),
(1014, 'Vanya Dada', 'Headphones', 105, '2025-02-07', 42684, 'Amritsar, Punjab, India'),
(1015, 'Hrishita Divan', 'Printer', 101, '2024-09-12', 45191, 'Bhubaneswar, Odisha, India'),
(1016, 'Rasha Kala', 'Mobile Phone', 141, '2025-04-02', 35015, 'Ahmedabad, Gujarat, India'),
(1017, 'Bhamini Bhandari', 'Headphones', 131, '2024-05-30', 22959, 'Amritsar, Punjab, India'),
(1018, 'Nitara Trivedi', 'Camera', 118, '2024-09-17', 18827, 'Chandigarh, Chandigarh, India'),
(1019, 'Neysa Dani', 'Laptop', 124, '2024-05-23', 36869, 'Bangalore, Karnataka, India'),
(1020, 'Armaan Ramakrishnan', 'Tablet', 182, '2024-09-06', 42297, 'Ahmedabad, Gujarat, India'),
(1021, 'Rhea Kaur', 'Television', 158, '2024-08-20', 14783, 'Chennai, Tamil Nadu, India'),
(1022, 'Aditya Narang', 'Printer', 178, '2025-01-18', 34817, 'Kolkata, West Bengal, India'),
(1023, 'Devika Nayar', 'Router', 143, '2025-02-12', 13018, 'Surat, Gujarat, India'),
(1024, 'Saanvi Batra', 'Camera', 114, '2024-10-28', 48826, 'Trivandrum, Kerala, India'),
(1025, 'Rudra Shekhar', 'Mobile Phone', 191, '2024-12-02', 17648, 'Guwahati, Assam, India');

select * from flipkart;

SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM 
    flipkart
GROUP BY 
    MONTH(order_date);
    
    SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM 
    flipkart
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    year, month;

SELECT COUNT(DISTINCT order_id) FROM flipkart;

select * from flipkart
order by order_id asc	,product_id desc;

SELECT *
FROM flipkart
WHERE order_date BETWEEN '2024-06-01' AND '2024-06-30';


