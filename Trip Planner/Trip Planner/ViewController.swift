//
//  ViewController.swift
//  Trip Planner
//
//  Created by Kavin Subramanyam on 10/27/15.
//  Copyright © 2015 Kavin Subramanyam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{
    
    var trips = ["San Francisco", "London"]
    var waypoints = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Returns the number of trips
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return trips.count
    }
    
    // Returns the generated cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = trips[indexPath.row]
        return cell
    }
    
    // Allows all cells to be edited
    func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true
    }
    
    // Handles deletion of a cell
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            // handle delete
        }
    }
    
    // Handles selection of a cell
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        if waypoints == false{
            presentViewController((storyboard?.instantiateViewControllerWithIdentifier("NoWaypoint"))!, animated: true, completion: nil)
        }else{
            presentViewController((storyboard?.instantiateViewControllerWithIdentifier("Waypoint"))!, animated: true, completion: nil)
        }
    }
    
    
}

