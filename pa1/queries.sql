CREATE TABLE author (
        id INTEGER AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        birth_date DATE NOT NULL,
        nationality VARCHAR(255) NOT NULL,
        biography TEXT
);

INSERT INTO author (name, birth_date, nationality, biography) VALUES
      ('Alexander M. Smith', '1975-06-15', 'British', 'Alexander M. Smith, a British novelist and essayist, is known for his compelling narratives that often delve into the complexity of human emotions and the intricacies of social dynamics.'),
      ('Maria Gonzalez', '1982-04-23', 'Spanish', 'Maria Gonzalez is a celebrated Spanish poet and playwright whose work is characterized by its lyrical intensity and exploration of cultural identity.'),
      ('John A. Doe', '1965-02-10', 'American', 'An influential American author and journalist, John A. Doe is renowned for his investigative works that shed light on pressing social issues.'),
      ('Fatima Al Zahra', '1990-08-30', 'Moroccan', 'Fatima Al Zahra is a Moroccan novelist whose stories, set against the backdrop of North African landscapes, explore themes of tradition and modernity.'),
      ('Satoshi Nakamoto', '1975-04-05', 'Japanese', 'A pseudonymous author known for groundbreaking work in digital currency, Satoshi Nakamoto''s true identity remains one of the literary and technological world''s most intriguing mysteries.'),
      ('Emma Clarke', '1988-12-09', 'Canadian', 'Emma Clarke''s novels are a staple in Canadian literature, reflecting the country''s diverse culture and the challenges of the modern era.'),
      ('Michael Thompson', '1960-07-22', 'Australian', 'Michael Thompson is an Australian historian and author whose detailed research brings to life the rich history of the Australian continent.'),
      ('Aisha Bint Abu Bakr', '1992-11-05', 'Nigerian', 'A Nigerian writer and activist, Aisha Bint Abu Bakr''s powerful narratives focus on women''s rights and empowerment in Africa.'),
      ('Luca Bianchi', '1985-05-17', 'Italian', 'Luca Bianchi, an Italian non-fiction writer, is known for his insightful analysis of Mediterranean history and culture.'),
      ('Ivan Petrenko', '1980-03-12', 'Ukrainian', 'Ivan Petrenko is a Ukrainian historical fiction author, known for his vivid depiction of Eastern European history through the eyes of his compelling characters.'),
      ('Olena Kovalenko', '1993-07-08', 'Ukrainian', 'Olena Kovalenko, a young Ukrainian poet, captures the resilience and spirit of her people, weaving the rich tapestry of Ukraine''s culture and landscapes into her poetry.'),
      ('Nadia Boulanger', '1887-09-16', 'French', 'Nadia Boulanger, a French composer and conductor, broke barriers in classical music, becoming the first woman to conduct many major orchestras in America and Europe.'),
      ('Tariq Hassan', '1981-05-22', 'Egyptian', 'Tariq Hassan''s works delve into the heart of ancient Egyptian mythology, bringing to life the legends of pharaohs and gods in a modern context.'),
      ('Jane Austen', '1775-12-16', 'British', 'Renowned for her six major novels, including Pride and Prejudice and Sense and Sensibility.'),
      ('Leila Singh', '1979-11-30', 'Indian', 'Leila Singh''s critically acclaimed biographies of Indian freedom fighters offer a fresh perspective on the struggles and triumphs of India''s journey to independence.'),
      ('Kai Watanabe', '1990-04-15', 'Japanese', 'Kai Watanabe is known for his innovative blending of traditional Japanese storytelling with futuristic themes, earning him a distinct place in science fiction literature.'),
      ('Zara Whitaker', '1994-02-19', 'British', 'Zara Whitaker''s gripping detective novels set in Victorian London have revived the classic mystery genre for a new generation.'),
      ('Carlos Rivera', '1970-07-08', 'Mexican', 'Carlos Rivera employs magical realism to explore the complexities of Mexican identity and history, his narratives a kaleidoscope of the surreal and the mundane.');






CREATE TABLE genre (
   id INTEGER AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   description TEXT
);

INSERT INTO genre (name, description) VALUES
      ('Science Fiction', 'A genre that explores speculative, futuristic, and imaginative worlds, often delving into advanced science, technology, and space exploration.'),
      ('Mystery', 'This genre revolves around suspenseful and puzzling events, often featuring a detective or amateur sleuth working to solve a crime or uncover secrets.'),
      ('Fantasy', 'Encompasses magical, mythical, and supernatural elements, creating worlds where magic is commonplace and mythical creatures roam.'),
      ('Historical Fiction', 'Fiction set in the past, this genre weaves its storylines around historical events, figures, and settings, blending factual history with creative storytelling.'),
      ('Poetry', 'A literary form that emphasizes the aesthetic and rhythmic qualities of language—such as phonaesthetics, sound symbolism, and metre—to evoke meanings in addition to, or in place of, the prosaic ostensible meaning.'),
      ('Thriller', 'A genre characterized by excitement, suspense, high levels of anticipation, ultra-heightened expectation, uncertainty, and anxiety. It typically involves a mysterious crime, unexplained event, or intricate pursuit.'),
      ('Biography', 'This non-fiction genre presents the life story of a real person, narrated in detail, covering significant events, achievements, and personal aspects.');
    




CREATE TABLE publisher (
       id INTEGER AUTO_INCREMENT PRIMARY KEY,
       name VARCHAR(255) NOT NULL,
       address VARCHAR(255),
       phone VARCHAR(20),
       website VARCHAR(255)
);

INSERT INTO publisher (name, address, phone, website) VALUES
      ('Lunar Press', '123 Moonbeam St, New York, NY 10010', '12125550101', 'www.lunarpress.com'),
      ('Solar Publishing', '456 Sunspot Ave, San Francisco, CA 94107', '14155550202', 'www.solarpublishing.com'),
      ('Orion Publishers', '789 Starlight Blvd, London, EC3A 8AF', '442055550303', 'www.orionpublishers.co.uk'),
      ('Celestial Books', '101 Comet Path, Sydney, NSW 2000', '61255550404', 'www.celestialbooks.au'),
      ('Kyiv Literary House', '101 Shevchenko Blvd, Kyiv, 01032', '380445550101', 'www.kyivliteraryhouse.ua'),
      ('Dnipro Publishers', '202 Dnipro Ave, Dnipro, 49000', '380565550202', 'www.dnipropublishers.ua'),
      ('Galactic Media', '202 Asteroid Belt, Toronto, ON M5V 2W1', '14165550505', 'www.galacticmedia.ca'),
      ('Eclipse Editions', '303 Lunar Eclipse Ave, Dublin, D02 T380', '35315550606', 'www.eclipseeditions.ie'),
      ('Nebula Novelties', '404 Supernova St, Cape Town, 8001', '27215550707', 'www.nebulanovelties.za'),
      ('Cosmos Creations', '505 Milky Way, Wellington, 6011', '6445550808', 'www.cosmoscreations.nz'),
      ('Infinity Ink', '606 Endless Loop, Tokyo, 100-0004', '81355550909', 'www.infinityink.jp'),
      ('Quantum Quills', '707 Particle Way, Paris, 75001', '33155551010', 'www.quantumquills.fr'),
      ('Zaporizhzhia Historical', '707 Soborny Ave, Zaporizhzhia, 69000', '380615550707', 'www.zaporizhzhiahistorical.ua'),
      ('Chernivtsi Cultural', '808 Universytetska St, Chernivtsi, 58000', '380375550808', 'www.chernivtsicultural.ua'),
      ('Solar Publishing', '250 Solstice Circle, Miami, FL 33131', '13055550222', 'www.solarpublishing.us'),
      ('Lunar Press', '321 Crescent Ln, Seattle, WA 98104', '12065550111', 'www.lunarpressbooks.com'),
      ('Orion Publishers', '987 Constellation Ct, Melbourne, VIC 3000', '61355550333', 'www.orionpublishers.com.au'),
      ('Celestial Books', '212 Meteor Shower St, Austin, TX 78701', '15125550444', 'www.celestialbooks.com');






CREATE TABLE book (
      id INTEGER AUTO_INCREMENT PRIMARY KEY,
      title VARCHAR(255) NOT NULL,
      isbn VARCHAR(17),
      edition VARCHAR(255) NOT NULL,
      release_year YEAR NOT NULL,
      price DOUBLE(10, 2) NOT NULL,
      author_id INTEGER,
      genre_id INTEGER,
      publisher_id INTEGER,
      FOREIGN KEY (author_id) REFERENCES author(id),
      FOREIGN KEY (genre_id) REFERENCES genre(id),
      FOREIGN KEY (publisher_id) REFERENCES publisher(id)
);

INSERT INTO book (title, isbn, edition, release_year, price, author_id, genre_id, publisher_id) VALUES
    ('The Great Escape', '978-1-23456-789-1', '1st', 2019, 9.99, 1, 1, 1),
    ('Mystery of the Old House', '978-1-23456-789-2', '2nd', 2018, 15.99, 2, 2, 2),
    ('Adventures in the Unknown', '978-1-23456-789-3', '1st', 2017, 12.50, 3, 3, 3),
    ('Secrets of the Deep', '978-1-23456-789-4', '1st', 2019, 11.99, 4, 4, 4),
    ('Journey Through Time', '978-1-23456-789-5', '3rd', 2016, 14.99, 5, 5, 5),
    ('The Lost Kingdom', '978-1-23456-789-6', '1st', 2018, 8.99, 6, 6, 6),
    ('Under the Moonlight', '978-1-23456-789-7', '2nd', 2019, 10.99, 7, 7, 7),
    ('Beyond the Mountains', '978-1-23456-789-8', '1st', 2015, 13.99, 8, 1, 8),
    ('Tales of the Forgotten', '978-1-23456-789-9', '1st', 2017, 7.99, 9, 2, 9),
    ('Whispers in the Dark', '978-1-23456-789-0', '4th', 2014, 16.99, 10, 3, 10),
    ('Echoes of the Past', '978-2-23456-789-1', '1st', 2013, 9.50, 11, 4, 11),
    ('The Enchanted Forest', '978-2-23456-789-2', '1st', 2018, 12.99, 12, 5, 12),
    ('The Invisible City', '978-2-23456-789-3', '2nd', 2016, 8.50, 13, 6, 13),
    ('Legends of the East', '978-2-23456-789-4', '2nd', 2019, 14.50, 14, 7, 14),
    ('The Silent Witness', '978-2-23456-789-5', '1st', 2019, 7.99, 15, 1, 15),
    ('A Walk in the Shadows', '978-2-23456-789-6', '1st', 2015, 10.50, 16, 2, 16),
    ('The Edge of the World', '978-2-23456-789-7', '1st', 2014, 15.50, 17, 3, 17),
    ('One Hundred Years of Solitude', '978-0-06-088328-7', '4th', 1967, 22.99, 18, 4, 18);




CREATE TABLE customer (
      id INTEGER AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      address VARCHAR(255) NOT NULL,
      phone VARCHAR(255) NOT NULL,
      email VARCHAR(255) NOT NULL,
      pas VARCHAR(255) NOT NULL
);

INSERT INTO customer (name, address, phone, email, pas) VALUES
    ('Olivia Davis', '404 Cedar Dr, Central City, USA', '15550707', 'oliviad@example.com', 'olivia404'),
    ('Liam Thompson', '909 Pear St, Midway City, USA', '15551212', 'liamt@example.com', 'liam909'),
    ('John Doe', '123 Main St, London, UK', '44205550101', 'johndoe@example.com', 'password123'),
    ('Jane Smith', '456 Maple Ave, Paris, France', '3315550202', 'janesmith@example.com', 'smith2020'),
    ('Emily Johnson', '789 Pine St, Berlin, Germany', '49305550303', 'emilyj@example.com', 'emilyj789'),
    ('Michael Brown', '101 Oak Rd, Madrid, Spain', '34915550404', 'michaelb@example.com', 'mikeb101'),
    ('Chloe Taylor', '202 Elm St, Rome, Italy', '39065550505', 'chloet@example.com', 'chloet202'),
    ('Lucas Miller', '303 Birch Ln, Amsterdam, Netherlands', '31205550606', 'lucasm@example.com', 'lucas123'),
    ('Olivia Davis', '404 Cedar Dr, Vienna, Austria', '4315550707', 'oliviad@example.com', 'olivia404'),
    ('Ethan Wilson', '505 Maple Ct, Copenhagen, Denmark', '455550808', 'ethanw@example.com', 'ethanw505'),
    ('Sophia Moore', '606 Walnut St, Stockholm, Sweden', '4685550909', 'sophiam@example.com', 'sophia606'),
    ('Aiden Jackson', '707 Cherry Ave, Oslo, Norway', '475551010', 'aidenj@example.com', 'aiden707'),
    ('Anastasia Shevchenko', '789 Odeska Ln, Odesa, Ukraine', '380485552424', 'anastasiashevchenko@example.com', 'anastasia789'),
    ('Liam Thompson', '909 Pear St, Helsinki, Finland', '35895551212', 'liamt@example.com', 'liam909'),
    ('Charlotte Garcia', '1010 Apple Ln, Lisbon, Portugal', '35115551313', 'charlotteg@example.com', 'charlotte1010'),
    ('Dmytro Yurchenko', '101 Kharkivska Rd, Kharkiv, Ukraine', '380575552525', 'dmytroyurchenko@example.com', 'dmytro101'),
    ('Sofia Kovalenko', '202 Dnipra Blvd, Dnipro, Ukraine', '380565552626', 'sofiakovalenko@example.com', 'sofia202');





CREATE TABLE loan (
      id INTEGER AUTO_INCREMENT PRIMARY KEY,
      customer_id INTEGER,
      book_id INTEGER,
      loan_date DATE NOT NULL,
      due_date DATE NOT NULL,
      return_date DATE,
      FOREIGN KEY (customer_id) REFERENCES customer(id),
      FOREIGN KEY (book_id) REFERENCES book(id)
);

INSERT INTO loan (customer_id, book_id, loan_date, due_date, return_date) VALUES
      (1, 1, '2024-01-01', '2024-01-31', '2024-01-30'),
      (2, 2, '2024-01-02', '2024-02-01', '2024-02-02'),
      (3, 3, '2024-01-03', '2024-02-02', '2024-02-01'),
      (4, 4, '2024-01-04', '2024-02-03', NULL),
      (5, 5, '2024-01-05', '2024-02-04', '2024-02-03'),
      (6, 6, '2024-01-06', '2024-02-05', '2024-02-06'),
      (7, 7, '2024-01-07', '2024-02-06', '2024-02-05'),
      (8, 8, '2024-01-08', '2024-02-07', NULL),
      (9, 9, '2024-01-09', '2024-02-08', '2024-02-07'),
      (10, 10, '2024-01-10', '2024-02-09', '2024-02-10'),
      (11, 11, '2024-01-11', '2024-02-10', '2024-02-10'),
      (12, 12, '2024-01-12', '2024-02-11', NULL),
      (13, 13, '2024-01-13', '2024-02-12', '2024-02-11'),
      (14, 14, '2024-01-14', '2024-02-13', '2024-02-10'),
      (15, 15, '2024-01-15', '2024-02-14', '2024-02-13'),
      (16, 16, '2024-01-16', '2024-02-15', NULL),
      (17, 17, '2024-01-17', '2024-02-16', '2024-02-15');


