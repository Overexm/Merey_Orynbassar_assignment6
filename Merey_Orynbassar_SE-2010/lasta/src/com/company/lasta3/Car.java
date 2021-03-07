package com.company.lasta3;

public class Car extends Product{
 private boolean GPS;
 private boolean TripComputer;
 private Engine engine;
 private int Seats;

    public Car(boolean GPS, boolean tripComputer, Engine engine, int seats) {
        this.GPS = GPS;
        TripComputer = tripComputer;
        this.engine = engine;
        Seats = seats;
    }

    public Car(){

    }

    public boolean isGPS() {
        return GPS;
    }

    public void setGPS(boolean GPS) {
        this.GPS = GPS;
    }

    public boolean isTripComputer() {
        return TripComputer;
    }

    public void setTripComputer(boolean tripComputer) {
        TripComputer = tripComputer;
    }

    public Engine getEngine() {
        return engine;
    }

    public void setEngine(Engine engine) {
        this.engine = engine;
    }

    public int getSeats() {
        return Seats;
    }

    public void setSeats(int seats) {
        Seats = seats;
    }
}
