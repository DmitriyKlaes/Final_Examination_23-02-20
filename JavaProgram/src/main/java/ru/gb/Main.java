package ru.gb;


import ru.gb.controller.AnimalController;
import ru.gb.controller.CountController;
import ru.gb.model.FileOperation;
import ru.gb.model.FileWork;
import ru.gb.model.Repository;
import ru.gb.model.RepositoryFile;
import ru.gb.view.ViewUser;

public class Main {
    public static void main(String[] args) {
        FileOperation fileOperation = new FileWork("Animals.txt");
        Repository repository = new RepositoryFile(fileOperation);
        AnimalController controller = new AnimalController(repository);
        CountController countController = new CountController();
        ViewUser view = new ViewUser(controller, countController);
        view.run();
    }
}
