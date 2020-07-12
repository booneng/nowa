BEGIN;

CREATE TYPE ORDER_STATUS AS ENUM('ACTIVE', 'COMPLETED', 'CANCELLED');
CREATE TYPE ITEM_STATUS AS ENUM('ACTIVE', 'SOLD_OUT', 'INACTIVE', 'DELETED');

CREATE TABLE RestaurantsTable (
    restaurant_id INT NOT NULL PRIMARY KEY,
    restaurant_email VARCHAR(100),
    restaurant_password VARCHAR(100),
    restaurant_name VARCHAR(255)
);

CREATE TABLE UsersTable (
    user_id INT NOT NULL PRIMARY KEY,
    user_email VARCHAR(100),
    user_password VARCHAR(100),
    full_name VARCHAR(100)
);

CREATE TABLE OrdersTable (
    order_id INT NOT NULL PRIMARY KEY,
    restaurant_id INT NOT NULL REFERENCES RestaurantsTable(restaurant_id),
    user_id INT NOT NULL REFERENCES UsersTable(user_id),
    order_status ORDER_STATUS
);

CREATE TABLE MenuItemsTable (
    item_id INT NOT NULL PRIMARY KEY,
    restaurant_id INT NOT NULL REFERENCES RestaurantsTable(restaurant_id),
    item_name VARCHAR(100),
    item_description VARCHAR(1000),
    item_status ITEM_STATUS
);

CREATE TABLE OrderItemsTable (
    order_id INT NOT NULL REFERENCES OrdersTable(order_id),
    item_id INT NOT NULL REFERENCES MenuItemsTable(item_id)
);

END;