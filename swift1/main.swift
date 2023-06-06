//
//  main.swift
//  swift1
//
//  Created by 翟旭博 on 2023/5/31.
//

import Foundation

//print("Hello, World!")
var str:String
str = "hello world";
print(str)
str += " 11";
print(str)

var a, b, c:Int
a = 1
print(a)

var bool1:Bool = true
print(bool1)

//元组
var pen:(name:String, price:Int) = ("英雄", 15);
pen.name = "毕加索"

var car:(String, Int) = ("奔驰", 9999)
car.0 = "宝马"
var (theName, thePrice) = car
print(theName, thePrice)

//swift不允许空值，所以需要包装Optional
var str1:String?
if (str1 == nil) {
    print(str1 as Any)
}

//typealias
typealias Price = Int
var penPrice:Price = 100

//if-let
var product:Int? = 100
if let weight = product, (weight > 30) {
    print("666")
}

//String
var c1 = "hello"
var c2 = "world"
var c3 = c1 + " " + c2

var d1 = "hello\(123)"
var d2 = "hello\(c2)"
var d3 = "hello\(1+2)"
var d4 = "hello\(1) \(3)"
print(d1, d2, d3, d4)

var string2 = "My name is Jaki"
string2 = string2.uppercased()   //全部转化为大写
print(string2)
string2 = string2.lowercased()   //全部转化为小写
print(string2)
print(string2.hasPrefix("my"))
print(string2.hasSuffix("jaki"))

//MemoryLayout(类比于c中的sizeof)
print(MemoryLayout<String>.size)

//数组
var array1:[Int]
var array2:Array<Int>

//创建有10个String类型元素的数组，并且每个元素都为字符串Hello
var array3 = [String](repeating: "hello", count: 10)
print(array3)
//同理的Int
var array4 = Array (repeating: 1, count: 10);
print(array4)
print(array4.contains(1))   //判断数组中是否包含某个元素
//数组排序
var arraySort = [1, 3, 5, 6, 7]
arraySort = arraySort.sorted(by: >)   //从大到小
arraySort = arraySort.sorted(by: <)   //从小到大
print(arraySort.max()!)   //获取数组中的最大值
print(arraySort.min()!)   //获取数组中的最小值

//集合
var set1:Set<Int> = [1, 2, 3, 4]
var set2 = Set(arrayLiteral: 1, 2, 3, 4)
print(set1.isEmpty)
print(set1.contains(1))   //是否包含1
set1.insert(5)
set1.remove(1)
set1.removeFirst()
//set1.remove(at: set1.firstIndex(of: 2)!)   //移除集合中某个位置的元素
for item in set1.sorted(by: >) {
    print(item)   //从大到小排序再遍历集合
}

//字典
var dic1:[Int: String]
var dic2:Dictionary<Int, String>
var dic3 = [1: "one"]
dic1 = [1:"1", 2:"2", 3:"3"]
dic2 = Dictionary(dictionaryLiteral: (1, "1"), (2, "2"), (3, "3"))

//循环打印
for i in 1...7 {
    print(i, terminator: " ")
}

//函数
func hanshu(param:Int) -> Int {
    return param + 1;
}

//重载
func addFunc(param1:Int, param2:Int)->Int {
    return param1 + param2
}
func addFunc(param1:Double, param2:Double)->Double {
    return param1 + param2
}
func addFunc(param1:String, param2:String)->String {
    return param1 + param2
}
print(addFunc(param1: 5, param2: 10));
print(addFunc(param1: 1.52, param2: 3.61))
print(addFunc(param1: "123", param2: "abc"))

//类和继承(final阻止继承和重写)
var car1 = Car(tyreCount: 4)
car1.drive()
var boat1 = Boat(floor: 50)
boat1.drive()

//set、get方法
let teacher = Teacher1()
teacher.memberAge = -1
teacher.memberName = ""
print(teacher.description)

