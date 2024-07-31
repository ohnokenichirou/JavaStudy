/*--●shop_userで実行する（データ登録）-----------------*/
/* 一旦、全削除 */
DELETE FROM t_sales;
DELETE FROM m_product;
DELETE FROM m_user;

/* ユーザーマスタINSERT */
INSERT INTO m_user (user_id, user_name, email) 
     VALUES ('takahashi', 'たかはしみのる', 'minoru@sample.com');
INSERT INTO m_user (user_id, user_name, email, birth_day) 
     VALUES ('yamada', '山田太郎', 'yamada@sample.com', '2001-02-03');
INSERT INTO m_user (user_id, user_name, email) 
     VALUES ('suzuki', '鈴木次郎', 'suzuki@sample.com');
INSERT INTO m_user (user_id, user_name, email, birth_day) 
     VALUES ('sato', '佐藤優子', 'sato@sample.com', '1996-04-05');
INSERT INTO m_user (user_id, user_name, email, birth_day) 
     VALUES ('yamamoto', '山本三郎', 'yamamoto@sample.com', '1995-06-07');
INSERT INTO m_user (user_id, user_name, email) 
     VALUES ('uchiyama', '内山四郎', 'uchiyama@sample.com');
INSERT INTO m_user (user_id, user_name, email) 
     VALUES ('isayama', '伊佐山吾郎', 'isayama@sample.com');

/* 商品マスタINSERT */
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A110', '無線マウス', 2000);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A120', '薄型キーボード', 3600);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A130', 'Webカメラ', 5200);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A140', 'トラックボールマウス', 2900);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A150', 'USB接続HDD（外付け）', 9800);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A160', '2m電源タップ５口', 1900);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A170', '革製マウスパッド', 4500);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A180', '小型ディスプレイ', 11000);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A190', 'LED照明', 4200);
INSERT INTO m_product (product_id, product_name, price) 
     VALUES ('A200', 'マウスパッド', 2000);

/* 売上テーブルINSERT */
INSERT INTO t_sales (user_id, product_id, quantity, sales_date)
     VALUES ('yamada', 'A120', 1, '2023-08-01');
INSERT INTO t_sales (user_id, product_id, quantity, sales_date)
     VALUES ('takahashi', 'A160', 1, '2023-08-01');
INSERT INTO t_sales (user_id, product_id, quantity, sales_date)
     VALUES ('sato', 'A190', 1, '2023-08-01');
INSERT INTO t_sales (user_id, product_id, quantity, sales_date)
     VALUES ('suzuki', 'A160', 2, '2023-08-05');
INSERT INTO t_sales (user_id, product_id, quantity, sales_date)
     VALUES ('takahashi', 'A120', 3, '2023-08-05');
INSERT INTO t_sales (user_id, product_id, quantity, sales_date)
     VALUES ('yamada', 'A190', 2, '2023-08-07');
INSERT INTO t_sales (user_id, product_id, quantity, sales_date)
     VALUES ('suzuki', 'A120', 1, '2023-08-07');
INSERT INTO t_sales (user_id, product_id, quantity, sales_date)
     VALUES ('guest', 'A160', 1, '2023-08-07');
INSERT INTO t_sales (product_id, quantity, sales_date)
     VALUES ('A190', 1, '2023-08-07');
