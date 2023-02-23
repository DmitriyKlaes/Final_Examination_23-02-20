package ru.gb.controller;

import ru.gb.model.Counter;

public class CountController {

    private final Counter counter = new Counter();

    public Counter getCounter() {
        return counter;
    }
}
