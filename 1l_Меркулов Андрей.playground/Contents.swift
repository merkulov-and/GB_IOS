import UIKit
//1.Решение квадратного уравнения: ax^2+bx+c=0
let a:Double = 3
let b:Double = 7
let c:Double = 4
 
let d:Double = b*b-4*a*c
 
if d>0 {
    let x1:Double = (-b-sqrt(d))/(2*a)
    let x2:Double = (-b+sqrt(d))/(2*a)
    print("Значение x1 \(NSString(format: "%.2f", x1))  Значение x2 = \(NSString(format: "%.2f", x2))")
}
else if d==0{
    let x:Double = -b/(2*a)
   print("Значение x = \(NSString(format: "%.2f", x))")
}
else if d<0{

let x:Double = -b/(2*a)
   print("Значение x = \(NSString(format: "%.2f", x))")
}
//2.Нахождение площади, периметра и гипотенузы прямоугольника, при сторанах катета а=3, b=7
let k:Double = 3
let m:Double = 7

let S:Double = 0.5*k*m
let C:Double = sqrt(pow(k, 2)+pow(m, 2))
let P:Double = k+m+C
print("Площадь:\(NSString(format: "%.2f", S)) Периметр:\(NSString(format: "%.2f", P)) Гипотенуза:\(NSString(format: "%.2f", C))")
//3.Вычесление суммы вклада за 5 лет при изначальнной сумме 300 и годовыми 4%
var sum:Double = 300
let proc:Double = 0.04
var god:Int = 1

while god<=5 {
    sum = sum+(sum*proc)
god+=1
}
print("Сумма вклада через 5 лет равна: \(NSString(format:"%.4f",sum))")





