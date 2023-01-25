
DROP DATABASE IF EXISTS adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    species TEXT NOT NULL,
    photo_url TEXT,
    age INT,
    notes TEXT,
    available BOOLEAN NOT NULL DEFAULT TRUE    
);

INSERT INTO pets
    (name, species, photo_url, age, notes, available)
VALUES
    ('Woofly', 'dog', 'https://media.4-paws.org/0/c/7/e/0c7e157aabf6ef2f316c05607813b130c994f293/VIER%20PFOTEN_2019-03-15_001-2886x1999.jpg', 3, 'Incredibly adorable.', 't'),
  ('Porchetta', 'porcupine', 'http://kids.sandiegozoo.org/sites/default/files/2017-12/porcupine-incisors.jpg', 4, 'Somewhat spiky!', 't'),
  ('Snargle', 'cat', 'https://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg', null, null, 't'),
  ('Dr. Claw', 'cat', null, null, null, 't');