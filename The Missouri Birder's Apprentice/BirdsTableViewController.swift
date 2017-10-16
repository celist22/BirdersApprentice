//
//  BirdsTableViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by List,Christopher on 10/13/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit

class BirdsTableViewController: UITableViewController {
    
    var county:County!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sets the title to the name of the County (or region)
        self.navigationItem.title = county.countyName
        tableView.register(CountyTableViewCell.self, forCellReuseIdentifier: "bird_cell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return county.countyBirds.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Setting the bird to the one clicked on in the table
        let birdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "bird_view_controller") as! BirdViewController // now we have a BirdViewController, ready to push onto a                                                    // navigation controller's stack
        birdVC.bird = county.countyBirds[indexPath.row]
        self.navigationController?.pushViewController(birdVC, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Setting up the cell via code
        let cell = tableView.dequeueReusableCell(withIdentifier: "bird_cell", for: indexPath)
        cell.textLabel?.text = county.countyBirds[indexPath.row].name
        cell.detailTextLabel?.text = county.countyBirds[indexPath.row].latinName
        let image = UIImage(named: "\(county.countyBirds[indexPath.row].name).png")
        cell.imageView?.image = image// Configure the cell...
        return cell
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
