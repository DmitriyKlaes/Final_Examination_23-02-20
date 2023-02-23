/*
11. Создать новую таблицу “молодые животные” в которую попадут все
животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью
до месяца подсчитать возраст животных в новой таблице
*/

CREATE TABLE YoungAnimals(
    Animal_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Age INT NOT NULL
)

SELECT Name, BirthDay, TIMESTAMPDIFF(MONTH, all.BirthDay, CURDATE()) AS Age 
    FROM (
        SELECT * FROM AllSumpters UNION 
        SELECT * FROM Cat UNION 
        SELECT * FROM Dog UNION
        SELECT * FROM Hamster)
    AS all
WHERE TIMESTAMPDIFF(MONTH, all.BirthDay, CURDATE()) < 36 and TIMESTAMPDIFF(MONTH, all.BirthDay, CURDATE()) > 12;