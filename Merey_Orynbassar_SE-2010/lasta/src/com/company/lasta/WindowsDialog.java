package com.company.lasta;

public class WindowsDialog extends Dialog{



    @Override
    Button createButton() {
        return new WindowsButton() ;
    }
}
