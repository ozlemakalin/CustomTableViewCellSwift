//
//  ViewController.swift
//  CustomTableView
//
//  Created by Ozlem Akalin on 02/01/15.
//  Copyright (c) 2015 Ozlem Akalin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var tableView: UITableView!
    
    var items: [String] = ["Title1", "Title2", "Title3"]
    var subItems: [String] = ["SubTitle1", "SubTitle2", "SubTitle3"]
    var itemIds:[Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  //   self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath)-> CGFloat
    {
        return 93
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        
        
        let identifier = "customCell"
        var cell: CustomTableViewCell! = self.tableView.dequeueReusableCellWithIdentifier(identifier ,forIndexPath: indexPath) as CustomTableViewCell
        
        cell.tableTitle.text = self.items[indexPath.row]
        cell.tableSubtitle.text = self.subItems[indexPath.row]
        itemIds.append(indexPath.row)
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("\(indexPath.row)!.customcell \(itemIds[indexPath.row])!")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

