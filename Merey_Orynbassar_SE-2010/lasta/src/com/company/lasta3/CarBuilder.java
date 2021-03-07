package com.company.lasta3;

public class CarBuilder implements Builder {
private Car car;

    public CarBuilder() {
        this.reset();
    }

    @Override
    public void reset() {
    this.car= new Car();
    }

    @Override
    public void setSeats(int seats) {
        car.setSeats(seats);
    }

    @Override
    public void setEngine(Engine engine) {
        car.setEngine(engine);
    }

    @Override
    public void setTripComputer(boolean trip) {
    car.setTripComputer(trip);
    }

    @Override
    public void setGps(boolean gps) {
        car.setGPS(gps);

    }

    public Car getProduct() {
        return this.car;
    }
}
