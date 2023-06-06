//
//  Teacher.swift
//  swift1
//
//  Created by 翟旭博 on 2023/6/1.
//

import Cocoa
//set和get方法
class Teacher {
    var name: String = "" {
        willSet(newName) {
            print("Teacher's name will be set to \(newName)")
        }
        didSet(oldName) {
            print("Teacher's name was changed from \(oldName) to \(name)")
        }
    }
    
//    func setName(_ name: String) {
//        self.name = name
//    }
//
//    func getName() -> String {
//        return self.name
//    }
}
