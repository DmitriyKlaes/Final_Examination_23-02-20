package ru.gb.model;

import ru.gb.model.animals.Animal;

import java.util.List;

public interface Repository {

    void createAnimal(Animal animal);
    List<Animal> getAnimals();

    void updateAnimal(Animal animal);
}
