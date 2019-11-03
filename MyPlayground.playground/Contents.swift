/*
let i : Int = 1
i = 2
print("i 값이 \(i) 입니다.")
*/

// 변수
var i = 1
var d = 0.1

var b = true
var s = "문자열"

var ss = ["하울", "캐스피"]
var s2 = ["하울", "캐스피"]


// 반복문
for i in 1...5 {
    print(i)
}

for i in stride (from:1, to:10, by:2) {
    print(i)
}

var array = [1,10,100]
for i in array {
    print(i)
}


// function
func swift (ios:Int) -> Int {
    if(ios==0) {
        return 1
    }
    return 0
}

print(swift(ios:0))
print(swift(ios:1))


// optional
var name : String? = "hawl"
print(name)

// unwrapping 1) 자동 해제
// 상수에 담을 게 있으면 true 아니면 false
if let checkName = name {
    print(checkName)
}

var name2 : String? = "hawl"
if let checkName = name, let checkName2 = name2 {
    print(checkName)
    print(checkName2)
}

// 조금 더 차원이 높아지면 위의 코드가 간결하지 못해서
// name일 닐일 경우 "" 걸로 처리하겠다
let checkNamee = name ?? ""


// unwrapping 2) 강제 해제
var x : Int? = 8
var y : Int? = 7
print(x!+y!)

var howl : String = ""
howl=name!


// class
open class Human {
    open var name = "yeji"
    
    func printName() {
        print("My name is \(name).")
    }
}
Human().printName()

class American : Human {
    override init() {
        super.init()
        self.name = "jobs"
    }
}
American().printName()


// interface
protocol HumanInterface {
    func conversation(v : String)
}

class Hhuman : HumanInterface {
    var delegate : HumanInterface?
    
    func conversation(v : String) {
        print("I heard that other people say \(v)")
    }
    func sayToOtherPeople(say : String) {
        delegate?.conversation(v: say)
    }
}

var firstHuman = Hhuman()
var SecondHuman = Hhuman()
firstHuman.delegate = SecondHuman   // secondHuman의 interface를 firstHuman에게 연결
firstHuman.sayToOtherPeople(say : "I'm a first poeple.")    // firstHuman이 말한 것을 secondHuman의 conversation 함수를 통해 출력
