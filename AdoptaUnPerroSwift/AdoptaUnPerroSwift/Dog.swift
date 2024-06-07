//
//  Dog.swift
//  AdoptaUnPerroSwift
//
//  Created by Administrador on 7/6/24.
//

import Foundation
import UIKit

class Dog{
    
    var dogName:String
    var dogAge:String
    var dogBreed:String
    var dogSize:String
    var dogDescription:String
    var dogImage: UIImage
    
    init(dogName: String, dogAge: String, dogBreed: String, dogSize: String, dogDescription: String,dogImage:UIImage) {
        self.dogName = dogName
        self.dogAge = dogAge
        self.dogBreed = dogBreed
        self.dogSize = dogSize
        self.dogDescription = dogDescription
        self.dogImage = dogImage
    }
    
}
