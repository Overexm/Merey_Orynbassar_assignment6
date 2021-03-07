package com.company.lasta;

public class Application {
    public static Dialog dialog;
    static String config="Web";
    public static void initialize() throws Exception {
        if(config=="Windows"){
            dialog=new WindowsDialog();
        }
        else if(config=="Web"){
            dialog=new WebDialog();
        }
        else{
            throw new Exception("Error! Unknown operation!");
        }
    }

    public static void main(String[] args) throws Exception {
        initialize();
        dialog.render();
    }
}
