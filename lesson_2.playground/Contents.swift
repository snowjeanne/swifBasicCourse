import UIKit

// 1 task

func even (number : Int) {
    if number % 2 == 0 {
        print ("Число \(number) является четным")
    } else {
        print ("Число \(number) является нечетным")
    }
}

even(number: 1856)
even(number: 1397)

// Или

func even_2 (number : Int) {
    number % 2 == 0 ?  print ("Число \(number) является четным") : print ("Число \(number) является нечетным")
}

even_2(number: 10)
even_2(number: 13)

// 2 task

func divThree (number : Int)  {
    number % 3 == 0 ? print ("Число \(number) делится на 3 без остатка") : print ("Число \(number) не делится на 3 без остатка")
}

divThree(number: 999)
divThree(number: 1000)

// 3 task

var array =  [Int]()
for index in 1...100 {
    array.append(index)
}
print(array)

// 4 task

var i = 0
while i < array.count {
    guard array[i] % 2 != 0 && array[i] % 3 == 0 else { array.remove(at: i)
        continue
    }
    i += 1
}
print(array)

// 5 task

func fib () -> Array <Int> {
    var arrayFib = [Int]()
    var a = 1
    var b = 2
    var c = 0
    arrayFib.append(a)
    arrayFib.append(b)
    while arrayFib.count < 50 {
        c = a + b
        arrayFib.append(c)
        a = b
        b = c
    }
    return arrayFib
}
print(fib())

// 6 task

func isPrimeNumber (number: UInt64) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}
var primeNumbersArray = [UInt64]()
var number: UInt64 = 2
while primeNumbersArray.count < 100 {
    if isPrimeNumber(number: number){
        primeNumbersArray.append(number)
    }
    number += 1
}
print(primeNumbersArray)
