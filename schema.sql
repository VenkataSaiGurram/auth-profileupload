DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS user_details;
DROP TABLE IF EXISTS role;

CREATE TABLE role(
	id serial PRIMARY KEY,
	name VARCHAR ( 200 ) UNIQUE NOT NULL
);



CREATE TABLE user_details(
	id serial PRIMARY KEY,
	username VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 50 ) NOT NULL,
	passwordConfirm VARCHAR ( 50 ) NOT NULL
);


CREATE TABLE user_role(
  user_id INT NOT NULL,
  role_id INT NOT NULL,
  PRIMARY KEY (user_id, role_id),
  FOREIGN KEY (role_id)
      REFERENCES role (id),
  FOREIGN KEY (user_id)
      REFERENCES user_details(id)
      
);