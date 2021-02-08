import Cocoa

var str = "Hello, playground"

struct person {
    //MARK: Properties
    //Each property is an attribute of a given person
    //These are the examples of stored properties
    //they literally just hold a value (they are containers)
    var name: String
    var hairColor: String
    var age: Int
    var heightInCentimetre: Double
    var massInKilograms: Double
    
    var heightInMeter: Double {
        return heightInCentimetre / 100
    }
    //return boday mass index
    //A computed property
    var badyMassIndex: Double {
        return massInKilograms / heightInMeter / heightInMeter
    }
    
    //Say "Hi"
    //Func
    //Use a func over a computed property when we need some info to the job
    //In this case, the info() we need is intro
    func sayHello(with intro: String) {
        print("\(intro)\(name)")
    }
    
}

var me = person(name: "Steven",
                hairColor: "Black",
                age: 16,
                heightInCentimetre: 173,
                massInKilograms: 70)
me.sayHello(with: "Hi my name is ")
me.sayHello(with: "How are you, I'm ")
