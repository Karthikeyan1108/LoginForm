////
////  tabViewController.swift
////  AirportApplication
////
////  Created by Truetech on 15/05/15.
////  Copyright (c) 2015 Truetech. All rights reserved.
////
//
//import UIKit
//
//class tabViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
////
////  TableViewController.swift
////  AirportApplication
////
////  Created by Truetech on 14/05/15.
////  Copyright (c) 2015 Truetech. All rights reserved.
////

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var tv:UITableView=UITableView()
    
    
    let array=["HOME","AIRLINES","AIRPORT GUIDE","SHOP","DINE","RELAX","FACILITIES","SERVICES","INFORMATION"]

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tv.frame         =   CGRectMake(0, 72,280,500)
        tv.delegate      =   self
        tv.dataSource    =   self
        
        tv.registerClass(UITableViewCell.self, forCellReuseIdentifier: "s")
        
        self.view.backgroundColor=UIColor(red:0.03, green: 0.03, blue: 0.17, alpha: 1.0)
        
        
        let symbolimageview = UIImageView(frame:CGRectMake(285, 30, 30,30))
        let tabimageview = UIImageView(frame:CGRectMake(5,30, 30, 30))
        
        
        let symbolimage=UIImage(named:"Symbol.png")
        symbolimageview.image=symbolimage
        
        let tabimage1=UIImage(named: "tabbar.png")
        tabimageview.image=tabimage1

        
        self.view.addSubview(symbolimageview)
        self.view.addSubview(tabimageview)
        self.view.addSubview(tv)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 0;
    }
    
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        
        
        
        let headerview = UIView(frame: CGRectMake(0, 0, self.tv.frame.size.width, 40))
        
        headerview.backgroundColor=UIColor(red:0.11, green: 0.23, blue: 0.41, alpha: 1.0)
        
        
        
        
        var label:UILabel=UILabel()
        
        
        
        
        
        
        label.frame  = CGRectMake(140,50, tableView.frame.size.width - 5, 18);
        
        label.text="Menu"
        
        label.textColor=UIColor.cyanColor()
        
        self.tv .addSubview(label)
        
        return headerview
        
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell = tv.dequeueReusableCellWithIdentifier("s") as! UITableViewCell
        let imageview2=UIImageView(frame: CGRectMake(225, 30, 25, 25))
        
        let image=UIImage(named:"slide.png")
        imageview2.image=image
        
       // cell.textLabel?.textAlignment = NSTextAlignment.Center;
        cell.textLabel?.text = self.array[indexPath.row];
        
        
        // cell.imageView?.image=UIImage(named: "slide.png")
        // cell.imageView?.alignmentRectForFrame(CGRectMake(200, 100, 10, 10))
        
        cell.textLabel?.textColor=UIColor.whiteColor()
        cell.contentView.backgroundColor = UIColor(red:0.11, green: 0.23, blue: 0.41, alpha: 1.0);
        cell.contentView.addSubview(imageview2)
        
        
        
        return cell
        
    }
    
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 80;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var selectedrow = indexPath.row;
        
        if(selectedrow==0)
        {
            self.navigationController!.pushViewController(mainViewController().self, animated: true)
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        else if(selectedrow==1)
        {
            self.navigationController!.pushViewController(AirportViewController().self, animated: true)
            
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        else if(selectedrow==2)
        {
            self.navigationController!.pushViewController(AirportGuideViewController().self, animated: true)
            
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        else if(selectedrow==3)
        {
            self.navigationController!.pushViewController(ShopViewController().self, animated: true)
            
            
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        else if(selectedrow==4)
        {
            self.navigationController!.pushViewController(DineViewController().self, animated: true)
            
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        else if(selectedrow==5)
        {
            self.navigationController!.pushViewController(RelaxViewController().self, animated: true)
            
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        else if(selectedrow==6)
        {
            self.navigationController!.pushViewController(FacilitiesViewController().self, animated: true)
            
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        else if(selectedrow==7)
        {
            self.navigationController!.pushViewController(ServicesViewController().self, animated: true)
            
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        else if(selectedrow==8)
        {
            self.navigationController!.pushViewController(InformationViewController().self, animated: true)
            
            println("You selected cell #\(self.array[indexPath.row])!")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

