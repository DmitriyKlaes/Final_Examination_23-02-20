/*
12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на
прошлую принадлежность к старым таблицам.
*/

SET FOREIGN_KEY_CHECKS=0;
SET GLOBAL FOREIGN_KEY_CHECKS=0;

CREATE TABLE AllTogether(
    Together_id INT PRIMARY KEY AUTO_INCREMENT,
    Animal_type_id INT NOT NULL,
    FOREIGN KEY (Animal_type_id) REFERENCES Sumpters(Type_id),
    Pet_type_id INT NOT NULL,
    FOREIGN KEY (Pet_type_id) REFERENCES Animals(Type_id),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Command_id INT NOT NULL,
    FOREIGN KEY (Command_id) REFERENCES Command(Command_id)
);

INSERT INTO AllTogether (Animal_type_id, Pet_type_id, Name, BirthDay, Command_id) 
SELECT Animal_type_id, p.Animals_id, Name, BirthDay, Command_id FROM Horse as c JOIN Sumpters as p ON c.Animal_type_id = p.Type_id
UNION
SELECT Animal_type_id, p.Animals_id, Name, BirthDay, Command_id FROM Donkey as c JOIN Sumpters as p ON c.Animal_type_id = p.Type_id
UNION
SELECT Animal_type_id, p.Animals_id, Name, BirthDay, Command_id FROM Cat as c JOIN Pets as p ON c.Animal_type_id = p.Type_id 
UNION
SELECT Animal_type_id, p.Animals_id, Name, BirthDay, Command_id FROM Dog as c JOIN Pets as p ON c.Animal_type_id = p.Type_id
UNION
SELECT Animal_type_id, p.Animals_id, Name, BirthDay, Command_id FROM Hamster as c JOIN Pets as p ON c.Animal_type_id = p.Type_id;