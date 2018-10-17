//
//  TableViewController.swift
//  ABayronTopTenChicago
//
//  Created by Audi Bayron on 3/9/17.
//  Copyright © 2017 NIU Computer Science. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var attractionObject = [Attraction]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Creates the table cells from the property list
        readPropertyList()
    }

    func readPropertyList() {
        let path = NSBundle.mainBundle().pathForResource("chicagoTopTen", ofType: "plist")
        let attractionArray:NSArray = NSArray(contentsOfFile: path!)!
        
        for dictionary in attractionArray {
            let number = dictionary["number"] as! Int
            let cellImage = dictionary["cell_image"] as! String
            let attractionImage = dictionary["attraction_image"] as! String
            let attractionName = dictionary["attraction_name"] as! String
            let locationAddress = dictionary["location_address"] as! String
            let websiteAddress = dictionary["website_address"] as! String
            let phoneNumber = dictionary["phone_number"] as! String
            let hoursOfOperation = dictionary["hours_of_operation"] as! String
            let emailAddress = dictionary["email_address"] as! String
            let descript = dictionary["descript"] as! String
            let latitude = dictionary["latitude"] as! Double
            let longitude = dictionary["longitude"] as! Double
            
            attractionObject.append(Attraction(number: number, cell_image: cellImage, attraction_image: attractionImage
                , attraction_name: attractionName
                , location_address: locationAddress, website_address: websiteAddress, phone_number: phoneNumber, hours_of_operation: hoursOfOperation, email_address: emailAddress, descript: descript, latitude: latitude, longitude: longitude))
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return attractionObject.count
    }
    
    // Configures the tableView cells to what needs to be shown
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let attraction:Attraction = attractionObject[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CELL") as! TableViewCell

        
        // Configures each cell to be based on the attraction's image, name, and hours of op
        let cellImage = UIImage(named: attraction.cellImage)
        cell.cellImageView.image = cellImage
        cell.cellNameLabel.text = attraction.attractionName
        cell.cellLocAddLabel.text = attraction.locationAddress
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    // Populates the DetailViewController with the items from the Property List
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "DetailView") {
            let destVC = segue.destinationViewController as! DetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let attraction:Attraction = attractionObject[indexPath.row]

                // "Pushes" the info from a cell to the next view
                destVC.navigationItem.title = attraction.attractionName
                destVC.sentData0 = attraction.attractionName
                destVC.sentData1 = attraction.attractionImage
                destVC.sentData2 = attraction.locationAddress
                destVC.sentData3 = attraction.descript
                destVC.sentData4 = attraction.websiteAddress
                destVC.sentData5 = attraction.phoneNumber
                destVC.sentData6 = attraction.emailAddress
                destVC.sentData7 = attraction.hoursOfOperation
                destVC.sentData8 = attraction.latitude
                destVC.sentData9 = attraction.longitude
            }
        }
    }
    
}
