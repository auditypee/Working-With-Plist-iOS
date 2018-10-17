//
//  AuthorViewController.swift
//  ABayronTopTenChicago
//
//  Created by Audi Bayron on 3/10/17.
//  Copyright © 2017 NIU Computer Science. All rights reserved.
//
/*
 Sources
 
 Millennium Park
    image: http://www.som.com/FILE/13948/millenniumparkmp_1400x800_peterberreras_06jpg.jpg
    image cell: https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/2005-10-13_2880x1920_chicago_above_millennium_park.jpg/275px-2005-10-13_2880x1920_chicago_above_millennium_park.jpg
    description: https://www.cityofchicago.org/city/en/depts/dca/supp_info/millennium_park.…
 ChinaTown
    image: http://images.slideplayer.com/36/10641197/slides/slide_1.jpg
    image cell: https://cdn-images-1.medium.com/max/1920/1*gV1yx3oL87v9rUHNEf84zg.jpeg
    description: https://en.wikipedia.org/wiki/Chinatown,_Chicago
 Navy Pier
    image: http://enjoynewyears.com/images/venues/navy-pier-7.jpg
    image cell: http://parking.chicago.com/wp-content/uploads/2012/06/Navy-Pier-Parking.jpg
    description: https://navypier.com
 Chicago Theater
    image: https://upload.wikimedia.org/wikipedia/commons/8/82/Chicago_Theater.jpg
    image cell: https://upload.wikimedia.org/wikipedia/commons/2/26/Chicago_Theatre_blend.jpg
    description: http://www.thechicagotheatre.com/about/history.html
 Maggie Daley Park
    image: http://maggiedaleypark.com/maggiedaley/wp-content/uploads/2016/10/MaggieDaley1
    image cell: https://upload.wikimedia.org/wikipedia/commons/3/3b/Maggie_Daley_Park_2014.JPG
    description: https://en.wikipedia.org/wiki/Maggie_Daley_Park
 Art Institute of Chicago
    image: http://www.artic.edu/sites/default/files/styles/slideshow_scale/public/HMR-AIC-208.jpg?itok=zX5hbhKh
    image cell: http://www.chicagoparent.com/media/3550164/artinstitute.jpg
    description: http://www.artic.edu/visit
 Water Tower
    image: http://s3.amazonaws.com/architecture-org/files/buildings/chicago-water-tower-02-3.jpg
    image cell: http://www.chicagoarchitecture.info/CAI/Images/GoldCoast/WaterTower-Aug07-004a.jpg
    description: https://www.shopwatertower.com/en.html
 Wrigley Field
    image: http://www.ballparksofbaseball.com/wp-content/uploads/2016/03/wrigley_top.jpg
    image cell: https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Wrigley_Field_marquee_grandstand_exterior_IMG_2339.jpg/220px-Wrigley_Field_marquee_grandstand_exterior_IMG_2339.jpg
    description: http://chicago.cubs.mlb.com/chc/ballpark/information/
 Willis Tower
    image: http://legacy.skyscrapercenter.com/class-image.php/userpics/10003/?width=1000&height=800&image=/images/albums/userpics/10003/WillisTower1.jpg
    image cell: http://legacy.skyscrapercenter.com/class-image.php/userpics/10003/?width=1000&height=800&image=/images/albums/userpics/10003/Sears_ViewFromRiver1_AW.jpg
    description: http://theskydeck.com
 Shedd Aquarium
    image: http://media.nbcchicago.com/images/1200*675/shedd+aquarium+building.jpg
    image cell: http://www.nickulivieriphotography.com/blog/wp-content/uploads/2013/01/1.11.13-Shedd_Aquarium-LO-1.jpg
    description: http://www.sheddaquarium.org
 
 */
import UIKit

class AuthorViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Path to author webpage
        let path = NSBundle.mainBundle().pathForResource("/Profile/index", ofType: "html")!
        
        let data: NSData = NSData(contentsOfFile: path)!
        let html = NSString(data: data, encoding: NSUTF8StringEncoding)
        
        webView.loadHTMLString(html as! String, baseURL: NSBundle.mainBundle().bundleURL)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
