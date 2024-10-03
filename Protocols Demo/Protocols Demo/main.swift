
protocol canFly{
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEggs() {
        if isFemale {
            print("The bird lays an egg.")
        }
    }
}
class Egale: Bird , canFly{
    func fly() {
        print("The egale takes flight, flapping its wings.")
    }
    
    func sore(){
        print("the egale glides in the air.")
    }
}

class Penguin : Bird{
    func swim(){
        print("The Penguin paddle through the watter!")
    }
}

struct FlyingMuseum{
    func flyingDemo(flyObject : canFly){
        flyObject.fly()
    }
}

struct Airplane : canFly{
    func fly() {
        print("The airplane takes flight, flapping its wings.")
    }
}

let myEgale = Egale()
let myBird = Bird()
//myEgale.fly()
//myEgale.sore()
//
//let myPenguin = Penguin()
//myPenguin.swim()
//myPenguin.fly()
let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyObject: myEgale)
