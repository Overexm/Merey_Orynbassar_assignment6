package com.company.lasta3;

public class Director {
    private Builder builder;

    public void setBuilder(Builder builder){
        this.builder=builder;
    }

    public void constructSportsCar(Builder builder){
        builder.reset();
        builder.setSeats(2);
        builder.setEngine(new SportEngine("Sport"));
        builder.setTripComputer(true);
        builder.setGps(true);
    }

    public void constructSUV (Builder builder){
        builder.reset();
        builder.setSeats(4);
        builder.setEngine(new SportEngine("SUV"));
        builder.setTripComputer(true);
        builder.setGps(false);

    }
}
