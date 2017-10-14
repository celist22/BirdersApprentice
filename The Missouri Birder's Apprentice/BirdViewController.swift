//
//  BirdViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by List,Christopher on 10/13/17.
//  Copyright © 2017 List,Christopher. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {
    
    var bird:Bird!  //Bird
    @IBOutlet var locationLBL: UILabel!
    @IBOutlet var dateLBL: UILabel!
    @IBOutlet weak var numSightingsTF: UITextField!
    @IBAction func updateSightingsBTN(_ sender: Any) {
        let numSightings = Int(numSightingsTF.text!)!
        if(numSightingsTF.text != nil && numSightings >= 0){
            bird.updateNumSightings(num: numSightings)
        }        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationLBL.text = "\(bird.location.latitude), \(bird.location.longitude)"
        dateLBL.text = bird.dateSighted
        numSightingsTF.text = String(bird.numSightings)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
