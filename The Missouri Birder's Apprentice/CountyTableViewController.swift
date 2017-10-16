//
//  CountyTableViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by List,Christopher on 10/13/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit
import CoreLocation

//var name:String
//var latinName:String
//var location:CLLocationCoordinate2D
//var dateSighted:Date
//var numSightings:Int


class CountyTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        //Sets up the County table with nav controller
        super.viewDidLoad()
        self.navigationItem.title = "Regions"
        //Creates a back button
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "back", style: .done, target: nil, action: nil)
        tableView.register(CountyTableViewCell.self, forCellReuseIdentifier: "county_cell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return State.counties.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "county_cell", for: indexPath)

        let county = State.countyNum(indexPath.row)
        cell.textLabel?.text = county.countyName
        return cell
    }
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Selects the county from the table
        let birdsTVC:BirdsTableViewController = BirdsTableViewController()
        birdsTVC.county = State.counties[indexPath.row]
        self.navigationController?.pushViewController(birdsTVC, animated: true)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
