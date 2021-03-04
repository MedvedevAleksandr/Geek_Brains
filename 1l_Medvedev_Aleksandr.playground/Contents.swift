import UIKit
import Foundation
import Darwin

// Задание №1. Решить квадратное уравнение. Уравнение беру произвольно, пусть это будет
// приведенное полное уравнение aх^2 + b*x + c = 0 где: a=1, b = 8, c = 3
// определяем сколько корней имеет уравнение
do {
print("Дано квадратное уравнение ax^2 + b*x + c = 0, где a=1, b=8, c=3")
var a:Double = 1
var b:Double = 8
var c:Double = 3
let D = (b*b) - 4*a*c
if D < 0 {
    print("Дискриминант меньше 0, уравнение не имеет корней")
} else if D == 0 {
    let x = (-b / 2*a)
    print("Дискриминант равен 0, уравнение имеет один корень. Корень х равен \(x)")
} else {
    let x1 = ((-b + sqrt(D)) / 2*a)
    let x2 = ((-b - sqrt(D)) / 2*a)
    print("Дискриминант больше 0, уравнение имеет два корня. Корень х1 равен \(x1), корень х2 равен \(x2)")
}
}

do {
// Задание №2. Дан прямоугольный треугольник с катетами 10 и 20. Найти гипотенузу, периметр и площадь треугольника.
print("Дан прямоугольный треугольник с катетами 10 см и 20 см.")
var a:Double = 10
var b:Double = 20
let c =  String(format: "%.3f", sqrt((a*a) + (b*b)))
    print("Гипотенуза треугольника равна \(c) см")
let h = String(format: "%.3f", sqrt(a*b))
    print("Высота треугольника равна \(h) см")
let S = String(format: "%.3f", 0.5*a*b)
    print("Площадь треугольника равна \(S) квадратных см")
//String(format:"specificators", argument) я использовал только потому что за 30 минут гугла не смог найти другого способа
//    округления чисел. Если округлять необязательно, то можно убрать, останутся немного громоздкие значения. Но если
//    ничего страшного в том, что параметры теперь будут иметь тип   String нет, то можно оставить и так.
}

// Задание №3. Найти сумму вклада в банке через 5 лет. Сумму вклада и годовой процент по вкладу вводим произвольно.
// с капитализацией процентов один раз в год самым простым и долгим способом
var depositAmount:Decimal = 10_000
var annualPercentage:Decimal = 10

depositAmount = depositAmount + (depositAmount * (annualPercentage / 100))
depositAmount += depositAmount * (annualPercentage / 100)
depositAmount += depositAmount * (annualPercentage / 100)
depositAmount += depositAmount * (annualPercentage / 100)
let finalDepositAmount = depositAmount + (depositAmount * (annualPercentage / 100))
print("Сумма вклада с ежегодной капитализацией процентов через 5 лет составит \(finalDepositAmount) рублей")


// Высчитывание окончательной суммы вклада в одну строку
var anotherDepositAmount:Decimal = 20_000
var anotherAnnualPercentage:Decimal = 12
var anotherFinalDepositAmount = anotherDepositAmount * pow((1 + (anotherAnnualPercentage/100)), Int(5.0))
print("Сумма вклада с ежегодной капитализацией процентов через 5 лет составит \(anotherFinalDepositAmount) рублей")

// с ежемесячной капитализацией процентов
anotherFinalDepositAmount = anotherDepositAmount * pow((1 + ((anotherAnnualPercentage/100)/12)), Int(60.0))
print("Сумма вклада с ежемесячной капитализацией процентов через 5 лет составит \(anotherFinalDepositAmount) рублей")

//с ежедневной капитализацией процентов (из расчета, что за 5 лет будет только один високосный год, то есть 1826 дней)
anotherFinalDepositAmount = anotherDepositAmount * pow((1 + (anotherAnnualPercentage/100)/365), Int(1826.0))
print("Сумма вклада с ежедневной капитализацией процентов через 5 лет составит \(anotherFinalDepositAmount) рублей")
// не получилось найти способ округлить значения до 2 знаков после запятой. String(format) не дает Decimal в String
