package com.company.lasta3;

public class CarManualBuilder implements Builder{

    private Manual manual;

    public CarManualBuilder(){
        this.reset();
    }

    @Override
    public void reset() {
        this.manual=new Manual();
    }

    @Override
    public void setSeats(int seats) {
        manual.setSeats(seats);
    }

    @Override
    public void setEngine(Engine engine) {
    manual.setEngine(engine);
    }

    @Override
    public void setTripComputer(boolean trip) {
    manual.setTripComputer(trip);
    }

    @Override
    public void setGps(boolean gps) {
    manual.setGPS(gps);
    }

    public Manual getProduct() {
        return this.manual;
    }
}
