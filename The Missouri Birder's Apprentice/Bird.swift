//
//  Bird.swift
//  The Missouri Birder's Apprentice
//
//  Created by List,Christopher on 10/13/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import Foundation
import CoreLocation

class Bird : Equatable, CustomStringConvertible {
    var name:String
    var latinName:String
    var location:CLLocationCoordinate2D
    var dateSighted:String
    var numSightings:Int
    //In adhereance to the CustomStringConvertible, here is the description of any given bird
    var description:String {
        return ("Name: \(name), Latin Name: \(latinName), Location: \(location), First Sighting: \(dateSighted), Number of Sightings: \(numSightings)")
    }
    //In adhereance to the equatable protocol, bird one is equal to bird two if their descriptions
    //match up.
    static func ==(bird1: Bird, bird2: Bird) -> Bool {
        return bird1.description == bird2.description
    }
    //Initializer
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateSighted:String){
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateSighted = dateSighted
        self.numSightings = 0
    }
    //Update number of sightings to the number typed into the text field
    func updateNumSightings(num:Int) {
        numSightings = num
    }
    
}
