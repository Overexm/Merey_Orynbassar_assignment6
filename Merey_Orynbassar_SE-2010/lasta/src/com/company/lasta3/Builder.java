package com.company.lasta3;

public interface Builder {
    void reset();
    void setSeats(int seats);
    void setEngine(Engine engine);
    void setTripComputer(boolean trip);
    void setGps(boolean gps);
}
