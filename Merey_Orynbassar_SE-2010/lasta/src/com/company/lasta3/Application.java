package com.company.lasta3;

public class Application {
    static  Director director;
    public static void makeCar() {
        director = new Director();


        CarBuilder builder = new CarBuilder();
        director.constructSportsCar(builder);
        Car car= builder.getProduct();

        CarManualBuilder builder1 = new CarManualBuilder();
        director.constructSportsCar(builder);
        Manual manual = builder1.getProduct();
        System.out.println(car.getEngine().name);
    }

    public static void main(String[] args) {
        makeCar();
    }
}
