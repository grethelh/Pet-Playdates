BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role)
VALUES
    ('stevemcqueeniscool@yahoo.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'), -- user_id:1
    ('kaeiscooler@gmail.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN'); -- user_id:2

INSERT INTO owners (user_id, first_name, last_name, birthdate, profile_pic, email)
VALUES
    (1, 'Steve', 'McQueen', '1930-03-24', 'https://res.cloudinary.com/dccsx3iht/image/upload/v1712951834/d5qnyhtprq1y40lszwxr.jpg', 'stevemcqueeniscool@yahoo.com'),
    (2, 'Kae', 'Bonaguro', '1996-05-02', 'https://res.cloudinary.com/dccsx3iht/image/upload/v1712951916/wajywycfsz68kvknt1ci.jpg', 'kaeiscooler@gmail.com');

INSERT INTO pets (name, owner_id, birthdate, breed, size, isFriendly, profile_pic)
VALUES
    ('Bean', '1','1996-05-02','pug', 'S', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/v1712952092/qqshrlf1dadckxhheyi9.jpg'),
    ('Steve', '2', '2008-03-05', 'labrador', 'XL', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/v1712952027/u6lfywbn5sjx93qne6fu.jpg');



INSERT INTO locations(location_name, street_address, city, state_abbr)
VALUES ('Otto Armleder Dog Park', '5057 Wooster Pike', 'Cincinnati', 'OH'),
('Fido Field', '630 Eggleston Ave', 'Cincinnati', 'OH'),
('Mt. Airy Dog Park', '2970 Westwood Northern Blvd', 'Cincinnati', 'OH'),
('Oakley Station Dog Park', '3310 Madison Rd', 'Cincinnati', 'OH'),
('Washington Park', '1230 Elm St', 'Cincinnati', 'OH'),
('Summit Park Dog Park', '4335 Glendale Milford Rd', 'Blue Ash', 'OH'),
('Newport Dog Park', '901 E 6th St', 'Newport', 'KY'),
('Symmes Township Park', '11600 N Lebanon Rd', 'Loveland', 'OH'),
('Amberley Green', '7801 Ridge Ave', 'Cincinnati', 'OH'),
('Fort Thomas Dog Park', '199 Mayfield Ave', 'Fort Thomas', 'KY'),
('The Bark Park & Patio', '7544 Burlington Pike', 'Florence', 'KY'),
('Clepper Dog Park', '663 Barg Salt Run Rd', 'Cincinnati', 'OH'),
('David J Stricker Dog Park', '1539 Clough Pike', 'Batavia', 'OH'),
('Bark Park', '20 New London Rd', 'Hamilton', 'OH'),
('Diamond Dogs Dog Park', '11405 E Miami River Rd', 'Cincinnati', 'OH'),
('Furfield Dog Park', '6611 River Rd', 'Fairfield', 'OH'),
('McCullough Nature Preserve', '2726 Cypress Way', 'Cincinnati', 'OH')
;

INSERT INTO play_dates(title, description, host_id, date_time, end_date_time, location_id, ispublic)
VALUES ('Paws in the Park', 'A fun day out for dogs and their owners at the local park.', 1, '2024-04-21 10:00:00', '2024-04-21 12:00:00', 1, true),
('Canine Carnival', 'Join us for a carnival-themed event filled with games and treats for dogs!', 2, '2024-04-20 12:00:00','2024-04-20 14:00:00', 2, true),
('Fetch Frenzy', 'A day dedicated to playing fetch with all the furry friends.', 2, '2024-04-25 14:00:00', '2024-04-25 16:00:00', 3, true),
('Doggy Dip Day', 'Cool off with your pups in a splash-worthy pool party!', 2, '2024-04-23 11:00:00', '2024-04-23 13:00:00', 4, true),
('Bark and Brews', 'An evening of mingling with other dog owners at a local brewery.',1, '2024-04-22 18:00:00', '2024-04-22 20:00:00', 5, true),
('Doggie Dash', 'A fun run event for dogs and their humans.', 1, '2024-04-17 09:00:00', '2024-04-17 11:00:00', 6, true),
('Puppy Picnic', 'A picnic in the park specially designed for young puppies.', 1, '2024-04-27 12:00:00', '2024-04-27 14:00:00', 7, true),
('Woof Walk', 'Join us for a scenic walk with our furry companions.',1, '2024-04-23 10:00:00', '2024-04-23 12:00:00', 8, true),
('Doggy Disco', 'Get ready to boogie with your pups at the dog-friendly disco!', 2, '2024-04-24 20:00:00', '2024-04-24 22:00:00', 9, true);

COMMIT TRANSACTION;
