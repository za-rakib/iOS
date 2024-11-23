protocol CanFly {
   func fly()
}

class Bird {
    var isFemale = true
    func leyEgg(){
        if isFemale {
            print("Bird can lay eggs")
        }
    }
}

class Eagle: Bird ,CanFly {
    func fly() {
        print("Fly your won way")
    }
    
    func soar(){
        print("Eagle glide in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim(){
        print("The penguin paddles throuh swim.")
    }
}

struct FlyingsMuseum{
    func flyDemo(flyObject : CanFly){
        flyObject.fly()
    }
}

let myEagle = Eagle()
myEagle.soar()
myEagle.fly()

let myPenguin = Penguin()
myPenguin.swim()

let museum = FlyingsMuseum()
museum.flyDemo(flyObject: myEagle)
