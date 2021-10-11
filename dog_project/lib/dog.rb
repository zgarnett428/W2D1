class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end
    
    def age
        @age
    end

    def age=(new_age)
        @age = new_age
    end

    def bark
        return @bark.upcase if @age > 3
        @bark.downcase
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(food)
        @favorite_foods.include?(food.capitalize)
    end

end      


dog_1 = Dog.new("Zephyr", "German Shorthaired Pointer", 0.5, "Bork!", ["Bacon", "My damn hands"])
p dog_1