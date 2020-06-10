package web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.model.Car;
import web.service.CarService;


import java.util.List;
// Интернация проекта на сприге

@Controller
@RequestMapping("/")
public class CarsController {

    private CarService carService = CarService.getInstance();

    @RequestMapping(value = "cars", method = RequestMethod.GET)
    public String getCarsTable(ModelMap model) {
        List<Car> cars = carService.getAllCars();
        model.addAttribute("cars", cars);
        return "cars";
    }
}
