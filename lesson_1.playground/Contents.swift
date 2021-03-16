import Foundation

let a = Int.random(in: -10...10)
let b = Int.random(in: -10...10)
let c = Int.random(in: -10...10)
var d = sqrt((Float)(b*b)-(Float)(4*a*c))

if d == 0{
    let radical = ((Float)(-b))/((Float)(2)*(Float)(a))
    print("У уравнения \(a)*x^2+\(b)*x+\(c) один корень и он равен \(radical)")

} else if d < 0 {
    print("У уравнения \(a)*x^2+\(b)*x+\(c) нет корней")

} else {
    let radicalOne = ((Float)(-b) - d)/((Float)(2)*(Float)(a))
    let radicalTwo = ((Float)(-b) + d)/((Float)(2)*(Float)(a))
    
    print("У уравнения \(a)*x^2+\(b)*x+\(c) два корня: \(radicalOne) и \(radicalTwo)")
}


let legOne = Int.random(in: 0...10)
let legTwo = Int.random(in: 0...10)
let area = (Double)(legOne * legTwo) / 2
let hypotenuse = sqrt((Float)(legOne * legOne) + (Float)(legTwo * legTwo))
let perimeter = (Float)(legTwo + legOne) + hypotenuse
print("Площадь треугольника - \(area)\nПериметр треугольника - \(perimeter)\nДлина гипотенузы треугольника - \(hypotenuse)")



var depositAmount = Int.random(in: 0...100000000)
var year = 1
let percent = Int.random(in: 0...100)
while year <= 5 {
    depositAmount = depositAmount + depositAmount * percent / 100;
    year += 1
}
print("Сумма вклада через 5 лет: \(depositAmount)")
