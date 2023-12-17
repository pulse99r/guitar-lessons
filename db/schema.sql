
\c data_wharehouse_dev;


DROP TABLE IF EXISTS guitar_users;
CREATE TABLE guitar_users (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone1 VARCHAR(15),
  phone2 VARCHAR(15),
  password_hash VARCHAR(255),
  create_date TIMESTAMP DEFAULT now()
);

DROP TABLE IF EXISTS guitar_profiles;
CREATE TABLE guitar_profiles (
  id SERIAL PRIMARY KEY,
  user_id INT,
  profile_img TEXT,
  primary_phone VARCHAR(15),
  street VARCHAR(20)
  city VARCHAR(50),
  homestate VARCHAR(50),
  instructor BOOLEAN,
  student BOOLEAN,
  parent BOOLEAN,
  create_date DATE
);

DROP TABLE IF EXISTS guitar_interests;
CREATE TABLE guitar_interests (
  id SERIAL PRIMARY KEY,
  user_id INT,
  -- Learning preferences
  finger_picking BOOLEAN,
  fundamentals BOOLEAN,
  note_readng BOOLEAN,
  music_theory BOOLEAN,
  scale_theory BOOLEAN,
  -- Genre preferences
  blues BOOLEAN,
  bluegrass BOOLEAN,
  classical BOOLEAN,
  country BOOLEAN,
  flamenco BOOLEAN,
  folk BOOLEAN,
  jazz BOOLEAN,
  gospel BOOLEAN,
  -- Networking preferences
  guitarists BOOLEAN,
  bass_players BOOLEAN,
  piano_players BOOLEAN,
  violinist BOOLEAN,
  cellist BOOLEAN,
  double_bass BOOLEAN,
  create_date DATE
);

DROP TABLE IF EXISTS guitar_activities;
CREATE TABLE guitar_activities (
  id SERIAL PRIMARY KEY,
  instructor_id INT,
  student_id INT,
  activity_date DATE,
  instrument VARCHAR(15),
  activity_description TEXT,
  activity_complete BOOLEAN,
  create_date DATE
);
DROP TABLE IF EXISTS activity_notes;
CREATE TABLE activity_notes (
  id SERIAL PRIMARY KEY,
  activities_id INT,
  note_date DATE,
  activity_note TEXT,
  create_date DATE
);

