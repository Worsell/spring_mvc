package web.model;

public class Car {

    private String name;

    private String type;

    private Long price;

    public Car(String name, String type, Long price) {
        this.name = name;
        this.type = type;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public Car setName(String name) {
        this.name = name;
        return this;
    }

    public String getType() {
        return type;
    }

    public Car setType(String type) {
        this.type = type;
        return this;
    }

    public Long getPrice() {
        return price;
    }

    public Car setPrice(Long price) {
        this.price = price;
        return this;
    }
}
