function Pet(name, status)
    local animal = {}

    animal.name = name or "Kikki"
    animal.status = status or "Hungry"
    function animal.check(self)
        print(string.format("%s is %s", self.name, self.status))
    end
    function animal.feed(self)
        print(string.format("%s has been fed", self.name))
    end
    return animal
end

function Dog(name, status, breed)
    local pet = Pet(name or "Meimei", status)
    pet.breed = breed or "Australian Shepherd"
    pet.loyalty = 0
    
    function pet.feed(self)
        pet.loyalty = pet.loyalty + 5
        print(string.format("%s has been fed", self.name))
        pet.status = "fed"
    end
    function pet.isLoyal(self)
        if self.loyalty >= 10 then
            print(string.format("%s is Loyal", self.name))
        else
            print(string.format("%s is NOT Loyal", self.name))
        end
    end
    function pet.bark(self)
        print("Woof Woof")
    end
    function pet.check(self)
        print(string.format("%s is a %s %s", self.name, self.status, self.breed))
    end
    return pet
end

local dog = Dog()
dog.isLoyal(dog)
dog.feed(dog)
dog.feed(dog) 
dog.isLoyal(dog)
dog.check(dog)