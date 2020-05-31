package web.service;

import web.model.Car;

import java.util.LinkedList;
import java.util.List;

public class CarService {

    private static CarService carService;

    private CarService() {

    }

    public List<Car> getAllCars() {
        List<Car> cars = new LinkedList<>();

        Car a = new Car("first", "car", 100L);
        cars.add(a);
        Car b = new Car("second", "car", 50L);
        cars.add(b);
        Car c = new Car("third", "track", 200L);
        cars.add(c);
        return cars;
    }

    public static CarService getInstance() {
        if (carService == null) {
            carService = new CarService();
        }
        return carService;
    }
}
