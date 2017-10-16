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
    //The following are various outlets to which stuff will change depending on the bird
    @IBOutlet var locationLBL: UILabel!
    @IBOutlet var dateLBL: UILabel!
    @IBOutlet weak var numSightingsTF: UITextField!
    @IBOutlet weak var birdIMG: UIImageView!
    //This will change the number of sightings on a given bird to the number entered
    @IBAction func updateSightingsBTN(_ sender: Any) {
        let numSightings = Int(numSightingsTF.text!)!
        if(numSightingsTF.text != nil && numSightings >= 0){
            bird.updateNumSightings(num: numSightings)
        }        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setting the text and images to the given bird
        locationLBL.text = "\(bird.location.latitude), \(bird.location.longitude)"
        dateLBL.text = bird.dateSighted
        numSightingsTF.text = String(bird.numSightings)
        let birdImage:UIImage = UIImage(named: "\(bird.name).png")!
        birdIMG.image = birdImage
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
