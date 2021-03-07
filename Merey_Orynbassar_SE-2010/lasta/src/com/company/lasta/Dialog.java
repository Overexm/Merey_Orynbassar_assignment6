package com.company.lasta;

public abstract class Dialog {

abstract Button createButton();


    public Dialog(){

    }

public  void render(){
    Button okButton = createButton();
    okButton.onClick("closeDialog");
    okButton.render();
}


}
