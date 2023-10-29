-- Create database
create database KALBE;

-- Use database
use KALBE;

-- Create table
create table inventory(
    item_code int NOT NULL,
    item_name varchar(50) NOT NULL,
    item_price int NOT NULL,
    item_total int NOT NULL,
    PRIMARY KEY (item_code)
);

-- Insert data to the table
INSERT INTO inventory (item_code, item_name, item_price, item_total)
    VALUES (2341, 'Promag Tablet', 3000, 100),
    (2342, 'Hydro Coco 250ML', 7000, 20),
    (2343, 'Nutrive Benecol 100ML', 20000, 30),
    (2344, 'Blackmores Vit C 500Mg', 95000, 45),
    (2345, 'Entrasol Gold 370G', 90000, 120)
;

-- Show Item_name that has the highest number in Item_total
SELECT item_name
FROM inventory
WHERE item_total =
    (SELECT MAX(item_total) FROM inventory)
;

-- Update the Item_price of the output of question bullet
UPDATE inventory
SET item_price = 85000
WHERE item_total =
    (SELECT max_total
    FROM
        (SELECT MAX(item_total) AS max_total FROM inventory) max_table
    );


-- What will happen if we insert another Item_name with Item_code of 2343 into the table?
INSERT INTO inventory (item_code, item_name, item_price, item_total)
    VALUES (2343, 'Fitbar', 5000, 50);


-- Delete the Item_name that has the lowest number of Item_total.
DELETE FROM inventory
WHERE item_total =
    (SELECT min_total
    FROM
        (SELECT MIN(item_total) AS min_total FROM inventory) min_table
    );
