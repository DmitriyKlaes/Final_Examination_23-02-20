/*
8. Создать таблицы с иерархией из диаграммы в БД
9. Заполнить низкоуровневые таблицы именами(животных), командами
*/

CREATE TABLE Animals(
    Type_id INT PRIMARY KEY AUTO_INCREMENT, 
    Animal_type VARCHAR(20) UNIQUE NOT NULL
);

INSERT Animals(Animal_type) 
VALUES
	('Pets'),
	('Sumpters'); 

SELECT * FROM Animals;

CREATE TABLE Sumpters(
    Type_id INT PRIMARY KEY AUTO_INCREMENT,
    Animals_id INT,
    FOREIGN KEY (Animals_id) REFERENCES Animals(Type_id),
    Animal_breed VARCHAR(20) NOT NULL
);

CREATE TABLE Pets(
    Type_id INT PRIMARY KEY AUTO_INCREMENT, 
    Animals_id INT,
    FOREIGN KEY (Animals_id) REFERENCES Animals(Type_id),
    Animal_type VARCHAR(20) NOT NULL
);

INSERT Sumpters(Animals_id, Animal_breed) 
VALUES
	(2, 'Horse'),
	(2, 'Donkey'), 
	(2, 'CameL'); 

INSERT Pets(Animals_id, Animal_type) 
VALUES
	(1, 'Cat'),
	(1, 'Dog'),
	(1, 'Hamster'); 

CREATE TABLE Command(
    Command_id INT PRIMARY KEY AUTO_INCREMENT,
    Command_name TEXT NOT NULL
);

INSERT Command(Command_name)
VALUES
	('Неси'),
    ('Сиди'),
    ('Фас'),
    ('Грызи');
    

CREATE TABLE Cat(
    Cat_id INT PRIMARY KEY AUTO_INCREMENT,
    Animal_type_id INT,
    FOREIGN KEY (Animal_type_id) REFERENCES Pets(Type_id),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Command_id INT NOT NULL,
    FOREIGN KEY (Command_id) REFERENCES Command(Command_id)
);

CREATE TABLE Dog(
    Dog_id INT PRIMARY KEY AUTO_INCREMENT,
    Animal_type_id INT,
    FOREIGN KEY (Animal_type_id) REFERENCES Pets(Type_id),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Command_id INT NOT NULL,
    FOREIGN KEY (Command_id) REFERENCES Command(Command_id)
);

CREATE TABLE Hamster(
    Hamster_id INT PRIMARY KEY AUTO_INCREMENT,
    Animal_type_id INT,
    FOREIGN KEY (Animal_type_id) REFERENCES Pets(Type_id),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Command_id INT NOT NULL,
    FOREIGN KEY (Command_id) REFERENCES Command(Command_id)
);

CREATE TABLE Horse(
    Horse_id INT PRIMARY KEY AUTO_INCREMENT,
    Animal_type_id INT,
    FOREIGN KEY (Animal_type_id) REFERENCES Sumpters(Type_id),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Command_id INT NOT NULL,
    FOREIGN KEY (Command_id) REFERENCES Command(Command_id)
);

CREATE TABLE Donkey(
    Donkey_id INT PRIMARY KEY AUTO_INCREMENT,
    Animal_type_id INT,
    FOREIGN KEY (Animal_type_id) REFERENCES Sumpters(Type_id),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Command_id INT NOT NULL,
    FOREIGN KEY (Command_id) REFERENCES Command(Command_id)
);

CREATE TABLE Camel(
    Camel_id INT PRIMARY KEY AUTO_INCREMENT,
    Animal_type_id INT,
    FOREIGN KEY (Animal_type_id) REFERENCES Sumpters(Type_id),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Command_id INT NOT NULL,
    FOREIGN KEY (Command_id) REFERENCES Command(Command_id)
);

INSERT Horse(Animal_type_id, Name, BirthDay, Command_id) VALUES
(1, 'Лошадь1', '2019-06-21', 1),
(1, 'Лошадь2','2021-05-15', 1),
(1, 'Лошадь3','2022-04-02', 1);

INSERT Donkey(Animal_type_id, Name, BirthDay, Command_id) VALUES
(2, 'Осел1', '2017-07-25', 1),
(2, 'Осел2', '2021-01-31', 1),
(2, 'Осел3', '2022-03-20', 1);

INSERT Camel(Animal_type_id, Name, BirthDay, Command_id) VALUES
(3, 'Верблюд1', '2022-06-03', 1),
(3, 'Верблюд2', '2021-06-11', 1),
(3, 'Верблюд3', '2012-03-21', 1);

INSERT Cat(Animal_type_id, Name, BirthDay, Command_id) VALUES
(1, 'Кот1', '2019-11-21', 2),
(1, 'Кот2', '2018-12-14', 2),
(1, 'Кот3', '2018-03-18', 2);

INSERT Dog(Animal_type_id, Name, BirthDay, Command_id) VALUES
(2, 'Собака1', '2017-02-05', 3),
(2, 'Собака2', '2021-03-04', 3),
(2, 'Собака3', '2021-10-06', 3);

INSERT Hamster(Animal_type_id, Name, BirthDay, Command_id) VALUES
(3, 'Хомяк1', '2022-02-28', 4),
(3, 'Хомяк2', '2016-04-07', 4),
(3, 'Хомяк2', '2016-07-17', 4);