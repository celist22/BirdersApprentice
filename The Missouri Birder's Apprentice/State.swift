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
    
     /* The following is the array of Counties (or regions as I prefer)
        in each County is the array of Birds,
        each including their name, their "latin" name *cough*japanese release name*cough*
        location (see if you see the pattern), and date first sighted (on a certain app).
        Certain premonitions applied for the assignment requirements
     */
    static var counties:[County] = [
        County(countyName: "Kanto", countyBirds: [
            Bird(name: "Pidgey", latinName: "Poppo", location: CLLocationCoordinate2D(latitude: 10.16, longitude: 10.16), dateSighted: "July 6, 2016"),
            Bird(name: "Spearow", latinName: "Onisuzume", location: CLLocationCoordinate2D(latitude: 10.21, longitude: 10.21), dateSighted: "July 6, 2016"),
            Bird(name: "Doduo", latinName: "Dodo", location: CLLocationCoordinate2D(latitude: 10.84, longitude: 10.84), dateSighted: "July 6, 2016"),
            Bird(name: "Articuno", latinName: "Freezer", location: CLLocationCoordinate2D(latitude: 11.44, longitude: 11.44), dateSighted: "July 22, 2017"),
            Bird(name: "Zapdos", latinName: "Thunder", location: CLLocationCoordinate2D(latitude: 11.45, longitude: 11.45), dateSighted: "July 31, 2017"),
            Bird(name: "Moltres", latinName: "Fire", location: CLLocationCoordinate2D(latitude: 11.46, longitude: 11.46), dateSighted: "July 16, 2017")]),
        County(countyName: "Johto", countyBirds: [
            Bird(name: "Hoothoot", latinName: "Hoho", location: CLLocationCoordinate2D(latitude: 21.63, longitude: 21.63), dateSighted: "February 17, 2017"),
            Bird(name: "Natu", latinName: "Naty", location: CLLocationCoordinate2D(latitude: 21.77, longitude: 21.77), dateSighted: "February 17, 2017"),
            Bird(name: "Murkrow", latinName: "Yamikarasu", location: CLLocationCoordinate2D(latitude: 21.98, longitude: 21.98), dateSighted: "February 17, 2017"),
            Bird(name: "Skarmory", latinName: "Airmd", location: CLLocationCoordinate2D(latitude: 22.27, longitude: 22.27), dateSighted: "February 17, 2017"),
            Bird(name: "Lugia", latinName: "Lugia", location: CLLocationCoordinate2D(latitude: 22.49, longitude: 22.49), dateSighted: "July 22, 2017")]),
        //My senses are tingling...
        County(countyName: "Hoenn", countyBirds: [
            Bird(name: "Torchic", latinName: "Achamo", location: CLLocationCoordinate2D(latitude: 32.55, longitude: 32.55), dateSighted: "October 23, 2017"),
            Bird(name: "Taillow", latinName: "Subame", location: CLLocationCoordinate2D(latitude: 32.76, longitude: 32.76), dateSighted: "October 23, 2017"),
            Bird(name: "Wingull", latinName: "Camome", location: CLLocationCoordinate2D(latitude: 32.78, longitude: 32.78), dateSighted: "October 23, 2017")])
    ]
    //Function to return a county
    static func countyNum(_ index:Int) -> County {
        return counties[index]
    }
}
