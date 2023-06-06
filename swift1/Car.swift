//
//  Car.swift
//  swift1
//
//  Created by 翟旭博 on 2023/6/1.
//

import Cocoa
//测试子类
class Car: Transportation {
    //轮胎数
    var tyre:Int = 0
    override func drive() {
        super.drive()
        print("在路上行驶\(tyre)km")
        self.petrol -= 1;
    }
    init(tyreCount: Int) {
       tyre = tyreCount
    }
}
