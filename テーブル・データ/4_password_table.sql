/* パスワードマスタ作成 */
CREATE TABLE m_password (
  user_id    VARCHAR(16)  NOT NULL,
  password   VARCHAR(256) NOT NULL,
  update_dt  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP 
                          ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(user_id),
  FOREIGN KEY(user_id) REFERENCES m_user (user_id)
);
