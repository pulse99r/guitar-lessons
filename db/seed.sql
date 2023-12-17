\c data_wharehouse

INSERT INTO guitar_users (first_name, last_name, email, phone1, phone2, password_hash, create_date) VALUES
( 'Madhu', 'Sudan', 'madhus@reflections.com', '212-212-2120', '646-515-1201', 'abc121', CURRENT_TIMESTAMP ),
( 'John', 'Goodman', 'johng@reflections.com', '212-212-2121', '646-515-1202', 'abc122', CURRENT_TIMESTAMP ),
( 'Wes', 'Reid', 'wesr@reflections.com', '212-212-2123', '646-515-1203', 'abc123', CURRENT_TIMESTAMP ),
( 'Tammy', 'Wynett', 'wesr@reflections.com', '212-212-2124', '646-515-1204', 'abc124', CURRENT_TIMESTAMP ),
( 'Abbie', 'Normal', 'wesr@reflections.com', '212-212-2125', '646-515-1204', CURRENT_TIMESTAMP ),
( 'Barbie', 'Myslak', 'wesr@reflections.com', '212-212-2126', '646-515-1205', 'abc125',  CURRENT_TIMESTAMP ),
( 'Rachel', 'Feldman', 'rachelf@reflections.com', '212-212-2127', '646-515-1206', 'abc126', CURRENT_TIMESTAMP ),
( 'Olivia', 'Paris', 'oliviaf@gmail.com', '212-212-2127', '646-515-1206', 'abc126', CURRENT_TIMESTAMP ),
( 'Sandra', 'Justice', 'sandra@hotmail.com', '212-212-2127', '646-515-1206', 'abc126', CURRENT_TIMESTAMP ),
( 'Kenti', 'Johnson', 'rayjguitar@gmail.com', '212-212-2199', '646-515-1298', 'abc120', CURRENT_TIMESTAMP );

-- 'Boxx Town', 'NY',  'https://madhu.seas.harvard.edu/img/mugshot-12.jpg'
-- 'Boxx Town', 'NY', 'abc132', 'https://avatars.githubusercontent.com/u/16713737?v=4',
-- 'Boxx Town', 'NY', 'abc312', 'https://avatars.githubusercontent.com/u/1316902?v=4',
-- 'Boxx Town', 'NY', 'abc312', 'https://avatars.githubusercontent.com/u/1316902?v=4',
-- 'Boxx Town', 'NY', 'abc312', 'https://guardian.ng/wp-content/uploads/2018/11/o-MOTHER-AND-BABY-facebook.jpg', 
-- 'Boxx Town', 'NY', 'https://avatars.githubusercontent.com/u/1316902?v=4',
--'Boxx Town', 'NY', 'https://www.linkedin.com/in/rachel-f-3b7ab858/overlay/photo/',

INSERT INTO guitar_profiles (user_id, profile_img, primary_phone, street, city, homestate, instructor, student, parent, create_date) VALUES
( 1, NULL, NULL, '121 Main Street', 'Central City', 'PA', false, true, false, CURRENT_TIMESTAMP),
( 5, NULL, NULL, '55 Wisteria Lane', 'Fairview', 'Eagle State', false, true, false, CURRENT_TIMESTAMP ),
( 7, NULL, NULL, '77 Cloud Vista Place', 'Clementine', 'NJ', false, true, false, CURRENT_TIMESTAMP ),
( 10, NULL, NULL, '422 Cherry Blossom Lane', 'Mountain City', 'NY', true, true, false, CURRENT_TIMESTAMP ),

INSERT INTO guitar_interests (user_id, finger_picking, fundamentals, note_reading, music_theory, scale_theory, blues, bluegrass, classical, country, flamenco, folk, jazz, gospel, guitarists, bass_players, piano_players, violinist, cellist, double_bass, create_date) VALUES 
( 5, false, true, true, false, false, false, false, false, false, false, false, true, true, true, false, false, false, false, false, CURRENT_TIMESTAMP ),
( 1, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, false, false, false, false, CURRENT_TIMESTAMP ),
( 10, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, false, true, CURRENT_TIMESTAMP );

INSERT INTO guitar_activities (instructor_id, user_id, activity_date, instrument, activity_description, activity_complete, create_date) VALUES
( 10, 5, '2023-12-17', "Guitar", "1st lesson",true, 2023-12-17 01:32:25.488187 ),
( 10, 5, '2024-01-05', "Guitar", "2nd lesson",false, CURRENT_TIMESTAMP ),
( 10, 5, '2024-01-12', "Guitar", "3rd lesson",false, CURRENT_TIMESTAMP ),
( 10, 5, '2024-01-19', "Guitar", "4th lesson",false, CURRENT_TIMESTAMP ),
( 10, 5, '2024-01-26', "Guitar", "5th lesson",false, CURRENT_TIMESTAMP );
( 10, 8, '2024-01-05', "Guitar", "2nd lesson",false, CURRENT_TIMESTAMP ),
( 10, 8, '2024-01-12', "Guitar", "3rd lesson",false, CURRENT_TIMESTAMP ),
( 10, 8, '2024-01-19', "Guitar", "4th lesson",false, CURRENT_TIMESTAMP ),
( 10, 8, '2024-01-26', "Guitar", "5th lesson",false, CURRENT_TIMESTAMP );

INSERT INTO activity_notes (activities_id, note_date, activity_note, create_date) VALUES
( 1, '2023-12-17', 'Abbie arrived 10 minutes late.  We covered the basics of the guitar, how to use the right hand fingers for fingerpicking and the notes ''E'' and ''B'' on the open strings.','2023-12-17' ),
( 1, '2023-12-17', 'Next lesson is scheduled for January 12th!','2023-12-17' ),
( 6, '2024-01-05', 'Olivia already knows the basics and want to learn some new songs, along with more sophisticated chords to improve her playing','2023-12-17' );