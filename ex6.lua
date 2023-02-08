function Pet(name, status)
    local animal = {}
    animal.name = name or "Kikki"
    animal.status = status or "Hungry"
    return animal
end

Pet()   