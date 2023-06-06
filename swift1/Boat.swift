//
//  Boat.swift
//  swift1
//
//  Created by 翟旭博 on 2023/6/1.
//

import Cocoa
//测试子类
class Boat: Transportation {
    //轮船层数
    var floor:Int
    //对父类方法进行重写
    override func drive() {
        super.drive()
        print("在海上行驶了\(floor)km")
    }
    init(floor: Int) {
        self.floor = floor
    }
}
