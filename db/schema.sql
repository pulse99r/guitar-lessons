
\c data_wharehouse_dev;

DROP TABLE IF EXISTS gtr_users;
DROP TABLE IF EXISTS gtr_events;
DROP TABLE IF EXISTS gtr_event_activity;
DROP TABLE IF EXISTS gtr_event_activity_notes;
DROP TABLE IF EXISTS gtr_chat_rooms;
DROP TABLE IF EXISTS gtr_ads;
DROP TABLE IF EXISTS gtr_messages;
DROP TABLE IF EXISTS gtr_message_status;
DROP TABLE IF EXISTS gtr_message_folders;

CREATE TABLE gtr_users (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  user_name VARCHAR(20),
  email TEXT,
  recovery_email VARCHAR(30) DEFAULT NULL,
  phone1 VARCHAR(15),
  phone2 VARCHAR(15) DEFAULT NULL,
  -- dob: INT array of month, day, year [99, 99, 9999]
  dob DATE DEFAULT '1900-12-31',
  password_hash VARCHAR(20),
  primary_phone VARCHAR(15),
  profile_img TEXT,
  street VARCHAR(50),
  city VARCHAR(40),
  home_state VARCHAR(25),
  zip_code VARCHAR(10),
  instructor BOOLEAN DEFAULT false,
  student BOOLEAN DEFAULT false,
  parent INT[] DEFAULT NULL,
  -- Learning preferences
  learning_preferences TEXT[] DEFAULT NULL,
  -- Genre preferences
  genre_preferences TEXT[] DEFAULT NULL,
  -- Networking preferences
  networking_preferences TEXT[] DEFAULT '{"Guitar"}',
  tag_line TEXT DEFAULT NULL,
  bio TEXT DEFAULT NULL,
  create_date TIMESTAMP DEFAULT now()
);

CREATE TABLE gtr_events (
  id SERIAL PRIMARY KEY,
  title TEXT,
  event_description TEXT,
  instructor_id INT,
  duration_mins INT,
  occurrences INT,
  instrument_needed BOOLEAN,
  tuition DECIMAL,
  create_date DATE
);

CREATE TABLE gtr_event_activity (
  id SERIAL PRIMARY KEY,
  event_activity_id INT,
  instructor_id INT,
  participant_id INT,
  activity_date DATE,
  instrument VARCHAR(15),
  activity_complete BOOLEAN,
  create_date TIMESTAMP DEFAULT now()
);

CREATE TABLE gtr_event_activity_notes (
  id SERIAL PRIMARY KEY,
  event_activity_id INT,
  note_date DATE,
  note TEXT,
  create_date TIMESTAMP DEFAULT now()
);

CREATE TABLE gtr_chat_rooms (
  id SERIAL PRIMARY KEY,
  room_name TEXT,
  room_description TEXT,
  create_date TIMESTAMP DEFAULT now()
);

CREATE TABLE gtr_ads (
  -- Use for classified adds  
  id SERIAL PRIMARY KEY,
  topic TEXT,
  content TEXT,
  city VARCHAR(30),
  home_state VARCHAR(2),
  zip VARCHAR(10),
  create_date TIMESTAMP DEFAULT now()
);

CREATE TABLE gtr_messages (
  id SERIAL PRIMARY KEY,
  sender INT,
  recipient INT,
  topic TEXT,
  content TEXT,
  parent_id INT,
  create_date TIMESTAMP DEFAULT now()
);

CREATE TABLE gtr_message_status (
  id SERIAL PRIMARY KEY,
  message_id INT,
  mssg_read BOOLEAN,
  archived BOOLEAN
);

CREATE TABLE gtr_message_folders (
  id SERIAL PRIMARY KEY,
  message_id INT,
  folder_name text,
  date_added TIMESTAMP DEFAULT now()
);
