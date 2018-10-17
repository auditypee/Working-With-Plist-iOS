//
//  DetailViewController.swift
//  ABayronTopTenChicago
//
//  Created by Audi Bayron on 3/9/17.
//  Copyright © 2017 NIU Computer Science. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var dtvAttractionImageView: UIImageView!
    @IBOutlet weak var dtvLocButton: UIButton!
    @IBOutlet weak var dtvDescripTextView: UITextView!
    @IBOutlet weak var dtvWebsiteButton: UIButton!
    @IBOutlet weak var dtvPhoneLabel: UILabel!
    @IBOutlet weak var dtvEmailLabel: UILabel!
    @IBOutlet weak var dtvHOPTextView: UITextView!
    
    var sentData0:String! // Attraction Name
    var sentData1:String! // Attraction Image
    var sentData2:String! // Local Address
    var sentData3:String! // Description Text
    var sentData4:String! // Website
    var sentData5:String! // Phone Number
    var sentData6:String! // Email Address
    var sentData7:String! // Hours of Operation
    var sentData8:Double! // Latitude
    var sentData9:Double! // Longitude
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dtvAttractionImageView.image = UIImage(named: sentData1)
        dtvLocButton.setTitle(sentData2, forState: .Normal)
        dtvDescripTextView.text = sentData3
        dtvWebsiteButton.setTitle(sentData4, forState: .Normal)
        dtvPhoneLabel.text = sentData5
        dtvEmailLabel.text = sentData6
        dtvHOPTextView.text = sentData7
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "WebsiteView") {
            let destVC = segue.destinationViewController as! WebsiteViewController
            
            destVC.navigationItem.title = sentData0
            destVC.webData1 = sentData4
            
        }
        if (segue.identifier == "MapView") {
            let destVC = segue.destinationViewController as! MapViewController
            
            destVC.navigationItem.title = sentData0
            destVC.mapData1 = sentData8
            destVC.mapData2 = sentData9
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
