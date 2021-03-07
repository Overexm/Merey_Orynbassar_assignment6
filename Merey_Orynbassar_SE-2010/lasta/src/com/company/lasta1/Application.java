package com.company.lasta1;

public class Application {
    private GUIFactory factory;
    private Button button;

    public Application(GUIFactory factory) {
        this.factory = factory;
    }

    public void createUI(){
        this.button = factory.createButton();
    }

    public void paint(){
        button.paint();
    }
}

