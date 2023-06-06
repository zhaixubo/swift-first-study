//
//  Teacher1.swift
//  swift1
//
//  Created by 翟旭博 on 2023/6/3.
//

import Cocoa

class Teacher1 {
    private var name:String
    private var age:Int
    init() {
        self.name = "default"
        self.age = 0
    }
    var memberName:String {
        get {
            return self.name
        }
        set(newValue) {
            if newValue.count == 0 {
                self.name = "default"
            } else {
                self.name = newValue
            }
        }
    }
    var memberAge:Int {
        get {
            return self.age
        }
        set(newValue) {
            if newValue < 0 {
                self.age = 0
            } else {
                self.age = newValue
            }
        }
    }
    
    var description: String {
        return "\(self.memberName):\(self.memberAge)11111"
    }
}
