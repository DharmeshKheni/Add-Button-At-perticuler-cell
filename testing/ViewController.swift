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
    var items = ["1","2","3","4","5","6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell:TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        
        // here is the redbutton
        
        if indexPath.row == 2 || indexPath.row == 5{
            var redBtn = UIButton()
            redBtn = UIButton(frame: CGRectMake(0, 0, 40, 40))
            redBtn.backgroundColor = UIColor.redColor()
            cell.addSubview(redBtn)
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

