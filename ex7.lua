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

local animal = Pet("Minou", "on fire")

animal.check(animal)
animal.feed(animal)