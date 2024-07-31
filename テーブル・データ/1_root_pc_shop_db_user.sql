/*--★root で実行する-------------------------------------*/
/* DB作成 */
DROP DATABASE IF EXISTS pc_shop_db;
CREATE DATABASE pc_shop_db CHARACTER SET utf8 COLLATE utf8_general_ci;

/* DBユーザを作成 */
CREATE USER IF NOT EXISTS shop_user IDENTIFIED BY 'pass';

/* 権限付与 */
GRANT ALL PRIVILEGES ON pc_shop_db.* TO shop_user;
