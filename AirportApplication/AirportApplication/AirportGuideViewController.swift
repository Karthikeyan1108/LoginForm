//
//  AirportGuideViewController.swift
//  AirportApplication
//
//  Created by admin on 14/05/15.
//  Copyright (c) 2015 Truetech. All rights reserved.
//

import UIKit

class AirportGuideViewController: UIViewController,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor(red:0.11, green: 0.23, blue: 0.41, alpha: 1.0)
        
        
        
        
        
        let mapimageview = UIImageView(frame:CGRectMake(12,520, 35, 35))
        let favouritesimageview = UIImageView(frame:CGRectMake(82,520, 30, 30))
        let guideImageview=UIImageView(frame: CGRectMake(150, 520, 25, 25))
        let promotionsImageview=UIImageView(frame: CGRectMake(216,520,25,25))
        let sosImageview=UIImageView(frame: CGRectMake(280,520,25,25))
        let Mapimage=UIImage(named:"Maps.png")
        mapimageview.image=Mapimage
        
        let favouritesimage=UIImage(named:"favourites.png")
        favouritesimageview.image=favouritesimage
        
        let Guideimage=UIImage(named:"Guide.png")
        guideImageview.image=Guideimage
        
        let promotionimage=UIImage(named:"promotions.png")
        promotionsImageview.image=promotionimage
        
        let sosimage=UIImage(named:"sos.png")
        sosImageview.image=sosimage
        

        
        
        
        
        var label=UILabel(frame: CGRectMake(10, 0, 100, 100))
        label.text="Back"
        label.textColor=UIColor.brownColor()
        
        
        var label1=UILabel(frame: CGRectMake(130, 1, 100, 100))
        label1.text="Menu"
        label1.textColor=UIColor.brownColor()
        
        let Image=UIImageView(frame: CGRectMake(260, 30, 40, 40))
        
        let symbolimage=UIImage(named:"Symbol.png")
        Image.image=symbolimage
        
        let Image1=UIImageView(frame: CGRectMake(5, 123,310,140))
        
        let symbolimage1=UIImage(named:"airlines.jpeg")
        Image1.image=symbolimage1
        
        let textfield=UITextField(frame: CGRectMake(2, 80, 315, 40))
        
        textfield.placeholderRectForBounds(CGRectMake(3, 0, 100, 100))
        textfield.borderStyle=UITextBorderStyle.RoundedRect
        
        textfield.placeholder="Search for flights,facilites,and services"
        textfield.textColor=UIColor.blackColor()
        textfield.backgroundColor=UIColor.whiteColor()
        
        self.view.addSubview(textfield)
        
        
        let textView : UITextView = UITextView(frame : CGRect(x:0,y:270, width:CGRectGetWidth(self.view.frame), height: CGRectGetWidth(self.view.frame)-20))
        
        textView.backgroundColor = UIColor(red:0.11, green: 0.23, blue: 0.41, alpha: 1.0)
        textView.text="Qatar Airways Company Q.C.S.C. operating as Qatar Airways, is the flag carrier of Qatar, and operates flight to the following  destinations, listed by city name. Additionally, there are labels for airports that are the airline's hub, cargo, future cities and stations that have been terminatedHeadquartered in the Qatar Airways Tower in Doha,[4] the airline operates a hub-and-spoke network, linking over 140 international destinations across Africa, Central Asia, Europe, Far East, South Asia, Middle East, North America, South America and Oceania from its base at Hamad International Airport, using a fleet of more than 100 aircraft."
        
        textView.font=UIFont(name:  "myCustomFontName", size: 30)
        
        textView.textColor = UIColor.blackColor()
        textView.editable=false
        //   textView.borderStyle = UITextBorderStyle.Line;
        //textView.textAlignment = .Center
        
        self.view.addSubview( textView )
        
        
        
        
        var tap=UITapGestureRecognizer(target: self, action: Selector("tap"))
        tap.numberOfTapsRequired=1
        tap.delegate=self
        label.userInteractionEnabled=true
        label.addGestureRecognizer(tap)
        self.view.addSubview(label)
        self.view.addSubview(label1)
        self.view.addSubview(Image)
        self.view.addSubview(Image1)
        self.view.addSubview(mapimageview)
        self.view.addSubview(favouritesimageview)
        self.view.addSubview(guideImageview)
        self.view.addSubview(promotionsImageview)
        self.view.addSubview(sosImageview)
        

        
             
        
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    func tap()
    {
        self.navigationController!.pushViewController(TableViewController().self, animated: false)
        println("tapped")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
