//
//  State.swift
//  The Missouri Birder's Apprentice
//
//  Created by List,Christopher on 10/13/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import Foundation
import CoreLocation

struct State {
    
    //    var kantoBirds:[Bird] = [
    //        Bird(name: "Pidgy", latinName: "Poppo", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
    //        Bird(name: "Spearow", latinName: "Onisuzume", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
    //        Bird(name: "Doduo", latinName: "Dodo", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0)
    //    ]
    //    var johtoBirds:[Bird] = [
    //        Bird(name: "Hoothoot", latinName: "Hoho", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
    //        Bird(name: "Natu", latinName: "Naty", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
    //        Bird(name: "Skarmory", latinName: "Airmd", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0)
    //    ]
    //    var hoennBirds:[Bird] = [
    //        Bird(name: "Torchic", latinName: "Achamo", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
    //        Bird(name: "Taillow", latinName: "Subame", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
    //        Bird(name: "Wingull", latinName: "Camome", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0)
    //    ]
    
    static var counties:[County] = [
        County(countyName: "Kanto", countyBirds: [
            Bird(name: "Pidgy", latinName: "Poppo", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
            Bird(name: "Spearow", latinName: "Onisuzume", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
            Bird(name: "Doduo", latinName: "Dodo", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0)]),
        County(countyName: "Johto", countyBirds: [
            Bird(name: "Hoothoot", latinName: "Hoho", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
            Bird(name: "Natu", latinName: "Naty", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
            Bird(name: "Skarmory", latinName: "Airmd", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0)]),
        County(countyName: "Hoenn", countyBirds: [
            Bird(name: "Torchic", latinName: "Achamo", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
            Bird(name: "Taillow", latinName: "Subame", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0),
            Bird(name: "Wingull", latinName: "Camome", location: CLLocationCoordinate2D(latitude: 00.00, longitude: 00.00), dateSighted: "July 16, 2006", numSightings: 0)])
    ]
    
    static func countyNum(_ index:Int) -> County {
        return counties[index]
    }
}
