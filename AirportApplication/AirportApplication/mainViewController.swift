//
//  mainViewController.swift
//  AirportApplication
//
//  Created by Truetech on 13/05/15.
//  Copyright (c) 2015 Truetech. All rights reserved.
//

//import Cocoa

import UIKit


// Image declaration

let imageview1 = UIImageView(frame:CGRectMake(5,25, 30, 30))
let imageview2 = UIImageView(frame:CGRectMake(20,25, 30, 30))
let Image=UIImageView(frame: CGRectMake(290, 30, 25, 25))
let Image1=UIImageView(frame: CGRectMake(0,70,325,420))


let mapimageview = UIImageView(frame:CGRectMake(12,520, 35, 35))
let favouritesimageview = UIImageView(frame:CGRectMake(82,520, 30, 30))
let guideImageview=UIImageView(frame: CGRectMake(150, 520, 25, 25))
let promotionsImageview=UIImageView(frame: CGRectMake(216,520,25,25))
let sosImageview=UIImageView(frame: CGRectMake(280,520,25,25))






// label declaartion

let titlelabel=UILabel(frame: CGRectMake(50,-158, 400, 350))











class mainViewController: UIViewController,UIGestureRecognizerDelegate {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //image views
        
       
        let symbolimage=UIImage(named:"Symbol.png")
        Image.image=symbolimage
        
        let symbolimage1=UIImage(named:"MainPageLogo.jpeg")
        Image1.image=symbolimage1

        let tabimage1=UIImage(named: "tabbar.png")
        imageview1.image=tabimage1
        imageview1.userInteractionEnabled=true
        
        
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

        
        
        
        
        
        
        
        
        
        //label 
        
         titlelabel.text="Hamood International Airport"
         titlelabel.textColor=UIColor.blackColor()
        
     
       
        //tap
        
           var tapGesture=UITapGestureRecognizer(target: self, action: Selector("tappedMe"))
           tapGesture.delegate=self
           tapGesture.numberOfTapsRequired = 1
           imageview1.addGestureRecognizer(tapGesture)
           imageview1.addSubview(titlelabel)
        
      
        
        
        
        let textfield=UITextField(frame: CGRectMake(2, 0, 315, 40))
        
        textfield.placeholderRectForBounds(CGRectMake(3, 0, 100, 100))
        textfield.borderStyle=UITextBorderStyle.RoundedRect
        
        textfield.placeholder="Search for flights,facilites,and services"
        textfield.textColor=UIColor.blackColor()
        textfield.backgroundColor=UIColor.whiteColor()
    
        
        
        //adding views
        
        Image1.addSubview(textfield)
        self.view.addSubview(Image)
         self.view.addSubview(Image1)
        self.view.addSubview(imageview1)
        self.view.addSubview(mapimageview)
         self.view.addSubview(favouritesimageview)
        self.view.addSubview(guideImageview)
        self.view.addSubview(promotionsImageview)
        self.view.addSubview(sosImageview)
        
     
        
        
        
        self.view.backgroundColor=UIColor(red:0.11, green: 0.23, blue: 0.41, alpha: 1.0)

        
        
        
        // Do any additional setup after loading the view, typically from a nib.
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    
    func tappedMe() {
        
        println("Tap Gesture recognized")
       self.navigationController!.pushViewController(menuViewController().self, animated: true)
        
    }
}
