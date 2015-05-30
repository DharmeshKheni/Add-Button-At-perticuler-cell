//
//  ViewController.swift
//  testing
//
//  Created by Anil on 30/05/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btn: UIButton!
    var items = ["1","2","3","4","5","6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var str : NSMutableAttributedString = NSMutableAttributedString(string: "From station\nSTN\nStation Name")
        str.addAttribute(NSFontAttributeName, value: UIFont.systemFontOfSize(20), range: NSRange(location: 13,length: 3))
        btn.setAttributedTitle(str, forState: UIControlState.Normal)
        btn.titleLabel!.lineBreakMode = .ByWordWrapping
        btn.titleLabel?.textAlignment = .Center
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell:TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        
        // here is the redbutton
        
        if indexPath.row == 2 || indexPath.row == 5{
            cell.btn.hidden = false
        } else {
            cell.btn.hidden = true
        }
        
        
        //label text just added from an array
        
//        cell.textLabel?.textAlignment = NSTextAlignment.Centers
        cell.lbl.text = items[indexPath.row]
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

