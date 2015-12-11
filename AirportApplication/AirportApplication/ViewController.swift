//
//  ViewController.swift
//  AirportApplication
//
//  Created by Truetech on 13/05/15.
//  Copyright (c) 2015 Truetech. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UIAlertViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
           self.view.backgroundColor = UIColor.redColor()
        
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Bluetooth Activation!"
            alertView.message = "Turn on the Bluetooth to Explore our Airport"
            alertView.delegate = self
            alertView.addButtonWithTitle("No")
            alertView.addButtonWithTitle("Turn On")
            
           
            alertView.show()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func alertView(alertView: UIAlertView,clickedButtonAtIndex buttonIndex: Int)
{

if (buttonIndex==1)
{
  self.navigationController!.pushViewController(mainViewController().self, animated: true)
  print("clicked")
    
    
}else
{
 println ("Avg. temp = \(buttonIndex)")
    exit(1)
}

}
}

