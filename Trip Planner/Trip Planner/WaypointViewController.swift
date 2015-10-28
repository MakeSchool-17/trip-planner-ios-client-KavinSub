//
//  WaypointViewController.swift
//  Trip Planner
//
//  Created by Kavin Subramanyam on 10/28/15.
//  Copyright © 2015 Kavin Subramanyam. All rights reserved.
//

import UIKit

class WaypointViewController: UIViewController, UITableViewDelegate {
    
    var waypoints = ["alpha", "beta", "gamma"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // Returns the number of trips
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return waypoints.count
    }
    
    // Returns the generated cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = waypoints[indexPath.row]
        return cell
    }
    
    // Handles deletion of a cell
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            // handle delete
        }
    }
    
    // Handles selection of a cell
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        presentViewController((storyboard?.instantiateViewControllerWithIdentifier("ViewWaypoint"))!, animated: true, completion: nil)
    }

}
