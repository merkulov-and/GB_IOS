import UIKit
print("1.Написать функцию, которая определяет, четное число или нет:")
func ostatok1 (num1: Int)->Int{
    let d = num1 % 2
    if d == 0 {
        print("\(num1) - четное число")}
    else{
        print("\(num1) - нечетное число")}
return d
}
let chislo1 = ostatok1(num1: 7)
print("Потому что при деление на 2 остаток - \(chislo1)")

print("2.Написать функцию, которая определяет, делится ли число без остатка на 3:")
func ostatok2 (num2: Int)->Int{
    let d = num2 % 3
    if d == 0 {
        print("\(num2) - делится без остатка")}
    else{
        print("\(num2) - неделится без остатка")}
return d
}
let chislo2 = ostatok2(num2: 9)
print("Потому что при деление на 3 остаток - \(chislo2)")

print("3.Создать возрастающий массив из 100 чисел:")
var massiv:Array<Int> = []
for i in 1...100{
    massiv.append(i)
}
print(massiv)

print("4.Удалить из этого массива все четные числа и все числа, которые не делятся на 3:")
let delete = massiv.filter{$0 % 2 != 0  && $0 % 3 != 0}
print(delete)

