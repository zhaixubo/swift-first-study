//
//  Transportation.swift
//  swift1
//
//  Created by 翟旭博 on 2023/6/1.
//

import Cocoa
//测试父类
class Transportation: NSObject {
    var petrol:Int = 10
    func drive() {
        if petrol == 0 {
            self.addPetrol()
        }
    }
    func addPetrol() {
        petrol += 10
    }
}
