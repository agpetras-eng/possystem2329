# pos-system-codeigniter-petras
Basic Point-of-Sale System built with CodeIgniter 4

## TFA2: From Arrays to a Real Database
Customer Accounts and User Accounts now read from MySQL through `CustomerModel` and `UserModel`.

## Setup
1. Requirements: PHP 8.2+, Composer, MySQL/MariaDB (e.g. XAMPP).
2. Run `composer install` in the project folder.
3. Copy `env` to `.env` and set the database values:
   `database.default.hostname = localhost`, `database.default.database = pos_database`,
   `database.default.username = root`, `database.default.password = ` (your MySQL password).
4. Import `database_export.sql` (phpMyAdmin > Import, or `mysql -u root < database_export.sql`).
   It creates `pos_database`, the `customers` and `users` tables, and 5 sample rows each.
5. Run `php spark serve` and open http://localhost:8080/customers and http://localhost:8080/users
