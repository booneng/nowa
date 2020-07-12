BEGIN;

INSERT INTO RestaurantsTable
VALUES (1, 'margaret@gmail.com', 'margaretpw', 'margaret');

INSERT INTO UsersTable
VALUES (1, 'john@gmail.com', 'johnpw', 'john');

INSERT INTO OrdersTable
VALUES (1, 1, 1, 'ACTIVE');

INSERT INTO MenuItemsTable
VALUES (1, 1, 'pasta', 'long pasta', 'ACTIVE');

INSERT INTO MenuItemsTable
VALUES (2, 1, 'pizza', 'round pizza', 'ACTIVE');

INSERT INTO OrderItemsTable
VALUES (1, 1);

END;