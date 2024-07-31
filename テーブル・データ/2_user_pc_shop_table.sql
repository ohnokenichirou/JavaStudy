/*--●shop_userで実行する（テーブル作成）-----------------*/
/* ユーザーマスタ作成 */
CREATE TABLE m_user (
  user_id    VARCHAR(16)  NOT NULL,
  user_name  VARCHAR(32)  NOT NULL,
  email      VARCHAR(32)  NOT NULL,
  birth_day  DATE,
  update_dt  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP 
                          ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(user_id)
);

/* 商品マスタ作成 */
CREATE TABLE m_product (
  product_id    VARCHAR(8)   NOT NULL,
  product_name  VARCHAR(32)  NOT NULL,
  price         INT          NOT NULL,
  update_dt     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP 
                          ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(product_id)
);

/* 売上テーブル作成 */
CREATE TABLE t_sales (
  sales_id    INT NOT NULL AUTO_INCREMENT,
  user_id     VARCHAR(16),
  product_id  VARCHAR(8)  NOT NULL,
  quantity    INT NOT NULL,
  sales_date  DATE NOT NULL,
  update_dt   TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP 
                        ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(sales_id),
  FOREIGN KEY(product_id) REFERENCES m_product (product_id)
);
