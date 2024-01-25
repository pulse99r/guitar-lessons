\c data_wharehouse_dev;

INSERT INTO gtr_users (
  first_name, last_name, user_name, email, recovery_email, phone1, phone2, dob, password_hash, primary_phone, 
  profile_img, street, city, home_state, zip_code, instructor, 
  student, parent, interests, tag_line, bio, create_date) VALUES
  ( 'Madhu', 'Sudan', 'madhus1', 'madhus@gmail.com', NULL, '212-212-2120', '646-515-1201', '{01,19,1992}', 'abcd1234', '212-212-2120', NULL, '121 Main Street', 'Central City', 'PA', '15061', false, false, '{}', '{}', NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'John', 'Goodman', 'johng','johng@gmail.com', NULL, '212-212-2121', '646-515-1202', '{07,17,1983}', 'abcd1234', '646-515-1202', NULL, '121 Main Street', 'Central City', 'PA', '15062', false, false, '{}', '{}', NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'Wes', 'Reid', 'wesr', 'wesr@gmail.com', NULL, '212-212-2123', '646-515-1203', '{08,01,1991}', 'abcd1234', '212-212-2123', NULL, '121 Main Street', 'Central City', 'PA', '15063', false, false, '{}', '{}', NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'Tammy', 'Wynett', 'tammyw', 'tammyw@gmail.com', NULL, '212-212-2124', '646-515-1204', '{12, 20, 1948}', 'abcd1234', '212-212-2124', NULL, '121 Main Street', 'Central City', 'PA', '15064', false, false, '{}', '{}',  NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'Abbie', 'Normal', 'abbien', 'abbie@gmail.com', NULL, '212-212-2125', '646-515-1204', '{11, 26, 1975}', 'abcd1234', NULL, NULL, '55 Wisteria Lane', 'Fairview', 'Eagle State', '15065', false, false, '{}', '{}', NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'Barbie', 'Myslak', 'barbiem', 'barbiem@gmail.com', NULL, '212-212-2126', '646-515-1205', '{10, 21, 1988}', 'abcd1234', NULL, NULL, '55 Wisteria Lane', 'Fairview', 'Eagle State', '15066', false, false, '{}', '{}', NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'Rachel', 'Feldman', 'rachelf', 'rachelf@gmail.com', NULL, '212-212-2127', '646-515-1206', '{09, 08, 2002}', 'abcd1234', NULL, NULL, '77 Cloud Vista Place', 'Clementine', 'NJ', '06302', false, false, '{}', '{}', NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'Olivia', 'Paris', 'oliviap', 'oliviap@gmail.com', NULL, '212-212-2127', '646-515-1206', '{06, 18, 1999}', 'abcd1234', NULL, NULL, NULL, NULL, 'NY', '10061', false, false, '{}', '{}', NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'Sandra', 'Justice', 'sandraj', 'sandra@hotmail.com', NULL, '212-212-2127', '646-515-1206', '{07, 18, 1993}', 'abcd1234', NULL, NULL, NULL, NULL, 'PA', '15061', false, false, '{}', '{}', NULL, NULL, CURRENT_TIMESTAMP ),
  ( 'Kenti', 'Johnson', 'kentij', 'rayjguitar@gmail.com', NULL, '212-212-2199', '646-515-1298', '{08, 11, 1996}', 'abcd1234', NULL, NULL, '422 Cherry Blossom Lane', 'Mountain City', 'NY', '10461', true, false, '{}', '{}', 'Jazz, Rock, Blues', 'Offering Guitar Lessons in the New York area since 1998!', CURRENT_TIMESTAMP );

-- Learning preferences - Genre preferences - Networking preferences
INSERT INTO gtr_interests (learning_preferences_lookup, genre_preferences_lookup, networking_preferences_lookup) VALUES (
  '{"Finger Picking", "Flatpicking", "Fundamentals", "Guitar Fundamentals", "Note Reading", "Music Fundamentals", "Music Theory", "Plectrum Technique", "Scale Theory","Song Writing"}', 
  '{"Blues", "Bluegrass", "Classical", "Country", "Flamenco", "Folk", "Jazz", "Gospel"}',
  '{"Guitarists", "Bass Players",  "Cellist", "Double Bass", "Lsp Steel Players", "Piano Players", "Upright Bass", "Violinist"}'
);

INSERT INTO gtr_events (title, event_description, instructor_id, duration_mins, occurrences, instrument_needed, tuition, create_date) VALUES
  ('Guitar Fundamentals', 'Learn the fundamentals of playing the guitar, how to read notes, chords, strum, how to fingerpick, No instrument required during lesson in instructor''s studio.  Instrument needed for other locations', 10, 60, 1, true, 75.00, CURRENT_TIMESTAMP),
  ('Guitar Fundamentals', 'Learn the fundamentals of playing the guitar, how to read notes, chords, strum, how to fingerpick, No instrument required during lesson in instructor''s studio.  Instrument needed for other locations.  Twelve Sessions', 10, 60, 12, true, 75.00, CURRENT_TIMESTAMP
);

INSERT INTO gtr_event_activity (event_activity_id, instructor_id, participant_id, activity_date, instrument, activity_complete, create_date) VALUES
  ( 1, 10, 5, '2023-12-14', 'Guitar', true, '2023-12-17 01:32:25.488187' ),
  ( 1, 10, 5, '2023-12-21', 'Guitar', true, CURRENT_TIMESTAMP ),
  ( 1, 10, 5, '2024-01-12', 'Guitar', true, CURRENT_TIMESTAMP ),
  ( 1, 10, 5, '2024-01-19', 'Guitar', false, CURRENT_TIMESTAMP ),
  ( 1, 10, 5, '2024-01-26', 'Guitar', false, CURRENT_TIMESTAMP ),
  ( 1, 10, 8, '2024-01-05', 'Guitar', false, CURRENT_TIMESTAMP ),
  ( 1, 10, 8, '2024-01-12', 'Guitar', false, CURRENT_TIMESTAMP ),
  ( 1, 10, 8, '2024-01-19', 'Guitar', false, CURRENT_TIMESTAMP ),
  ( 1, 10, 8, '2024-01-26', 'Guitar', false, CURRENT_TIMESTAMP );

INSERT INTO gtr_event_activity_notes (event_activity_id, note_date, note, create_date) VALUES
  ( 1, '2023-12-17', 'Abbie arrived 10 minutes late.  We covered the basics of the guitar, how to use the right hand fingers for finger-picking and the notes ''E'' and ''B'' on the open strings.','2023-12-17' ),
  ( 2, '2023-12-17', 'Next lesson is scheduled for January 19th!','2023-12-17' ),
  ( 3, '2024-01-05', 'Olivia already knows the basics and want to learn some new songs, along with more sophisticated chords to improve her playing','2023-12-17' );

  INSERT INTO gtr_chat_rooms (room_name, room_description, create_date) VALUES 
 ('Bands','Want to be in a band? Discuss! Start a band, join a band, meet and collaborate.', CURRENT_TIMESTAMP),
 ('Best Guitar Model','What''s your favorite guitar brand, model, and why?', CURRENT_TIMESTAMP),
 ('Favorite Songs to Play','Everyone has favorite songs they enjoy listening to, which are often very different form what we like top play ourselves on guitar. What songs do you like to play, and why?', CURRENT_TIMESTAMP),
 ('Guitar for Sale','Have a guitar to sell?  Post it here.', CURRENT_TIMESTAMP),
 ('Music Teachers','People meet potential teachers in your area.  Teachers, share experiences with other teachers and meet potential students.', CURRENT_TIMESTAMP),
 ('Music Theory','Everything you''ve ever wanted to know about music theory but were afraid to ask, maybe?', CURRENT_TIMESTAMP),
 ('New York City','Meet and chat with other guitarists, teachers, songwriters, producers', CURRENT_TIMESTAMP);
