//
//  Dogs.swift
//  PetTableViewApp
//
//  Created by Taylor Frost on 7/6/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import Foundation

class Dogs {

var name: String = ""
var age: String = ""
var imageName: String = ""
var breed: String = ""
var size: String = ""
var gender: String = ""

init(name: String, age: String, imageName: String, breed: String, size: String, gender: String) {
    self.name = name
    self.age = age
    self.imageName = imageName
    self.breed = breed
    self.size = size
    self.gender = gender
    
    }
}