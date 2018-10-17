//
//  Attraction.swift
//  ABayronTopTenChicago
//
//  Created by Audi Bayron on 3/9/17.
//  Copyright © 2017 NIU Computer Science. All rights reserved.
//

import UIKit

class Attraction: NSObject {
    var number:Int
    var cellImage:String!
    var attractionImage:String!
    var attractionName:String!
    var locationAddress:String!
    var websiteAddress:String!
    var phoneNumber:String!
    var hoursOfOperation:String!
    var emailAddress:String!
    var descript:String!
    var latitude:Double!
    var longitude:Double!
    
    init(number: Int, cell_image: String, attraction_image: String, attraction_name: String, location_address: String, website_address: String, phone_number: String, hours_of_operation: String, email_address: String, descript: String, latitude: Double, longitude: Double) {
        self.number = number
        self.cellImage = cell_image
        self.attractionImage = attraction_image
        self.attractionName = attraction_name
        self.locationAddress = location_address
        self.websiteAddress = website_address
        self.phoneNumber = phone_number
        self.hoursOfOperation = hours_of_operation
        self.emailAddress = email_address
        self.descript = descript
        self.latitude = latitude
        self.longitude = longitude
    }
}
