package com.company.lasta1;

public class ApplicationConfigurator {
    static GUIFactory factory;
    static String config;
    public static void main(String[] args) throws Exception {
        config = "Mac";
        if (config == "Windows") {
                factory = new WinFactory();}
        else if (config == "Mac") {
                factory = new MacFactory();}
        else{
            throw new Exception("Error! Unknown operating system.");}

        Application app = new Application(factory);
        app.createUI();
        app.paint();
    }
}
