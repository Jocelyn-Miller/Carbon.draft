//
//  ViewController.swift
//  Carbon.draft
//
//  Created by Jocelyn Miller on 6/28/20.
//  Copyright © 2020 Jocelyn Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var dailyCarbon = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let shower = UserDefaults.standard.integer(forKey: "shower")
        print(shower)
        // US citizen annual emission of 16 tons
        // daily emission of 0.044 tons
        // ag 10%, trans 28%, 
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool)
    {
        //let num = UserDefaults.standard.integer(forKey: "water")
        //print(num)
        //let shower = UserDefaults.standard.integer(forKey: "shower")
        //print(shower)
        //print("view appears")
        let shower = UserDefaults.standard.integer(forKey: "shower")
        print(shower)
    }
    
    
//log buttons
    @IBAction func logFood(_ sender: UIButton)
    {
    }
    @IBAction func logWater(_ sender: UIButton)
    {
    }
    @IBAction func logTrans(_ sender: UIButton)
    {
    }
    @IBAction func logWaste(_ sender: UIButton)
    {
    }
    
    
    @IBAction func progressTrack(_ sender: UISlider)
    {
        //fills based on user input and input "scores" (scaling to be determined)
    }
    @IBAction func calender(_ sender: UIButton)
    {
        //will show calender of logged days, days will appear green or red based on carbon emission
    }
    @IBAction func infobutton(_ sender: UIButton)
    {
        //scene slides down
        //explain what carbon footprint means
        //fun and interactive way for users to be environmentally conscious
        // explain that app tracks your daily carbon footprint and adds each day into the calender, so users understand the fotprint they leave on the environment
        //explain how the foot and fillable ring represent "average" carbon footprint
        //explain how this excludes housing associated carbon production
        //average carbon footprint is 16 tons
    }
    
    
    @IBAction func reduceInfo(_ sender: UIButton)
    {
        //slide down view on ways to reduce your carbon footprint
    }
    
}

