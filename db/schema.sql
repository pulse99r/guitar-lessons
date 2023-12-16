
DROP DATABASE IF EXISTS data_wharehouse;
CREATE DATABASE data_wharehouse;

\c data_wharehouse;


DROP TABLE IF EXISTS guitar_users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  fname TEXT,
  lname TEXT,
  email TEXT,
  phone VARCHAR(15),
  street VARCHAR(20)
  city VARCHAR(50),
  homestate VARCHAR(50),
  password_hash VARCHAR(255),
  profile_img TEXT,
  roles TEXT[],
  created_at TIMESTAMP DEFAULT now()
);

DROP TABLE IF EXISTS guitar_roles;
CREATE TABLE roles (
  id SERIAL PRIMARY KEY,
  user_id INT,
);git 