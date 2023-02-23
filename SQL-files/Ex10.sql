/*
10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой
питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.
*/

DROP TABLE Camel;
DELETE FROM Sumpters WHERE Animal_breed='Camel';

CREATE TABLE AllSumpters(
    sumpter_id INT PRIMARY KEY AUTO_INCREMENT,
    Animal_type_id INT NOT NULL,
    FOREIGN KEY (Animal_type_id) REFERENCES Sumpters(Type_id),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Command_id INT NOT NULL,
    FOREIGN KEY (Command_id) REFERENCES Command(Command_id)
);

INSERT INTO AllSumpters (Animal_type_id, Name, BirthDay, Command_id) 
SELECT Animal_type_id, Name, BirthDay, Command_id FROM Horse
UNION
SELECT Animal_type_id, Name, BirthDay, Command_id FROM Donkey;