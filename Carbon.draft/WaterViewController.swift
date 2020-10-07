//
//  WaterViewController.swift
//  Carbon.draft
//
//  Created by Jocelyn Miller on 9/10/20.
//  Copyright © 2020 Jocelyn Miller. All rights reserved.
//

import UIKit

class WaterViewController: UIViewController
{
    var showerInt = 0
    var bathInt = 0
    var dishwasherInt = 0
    var washingmachineInt = 0
    var addedVar: Int = 0
    var totalWater = 0
    
    var shower = UserDefaults.standard.integer(forKey: "shower")
    var bath = UserDefaults.standard.integer(forKey: "bath")
    var dishwasher = UserDefaults.standard.integer(forKey: "dishwasher")
    var washingmachine = UserDefaults.standard.integer(forKey: "washingmachine")
    
    //var viewCount = 0
    
    @IBOutlet weak var bathContent: UITextField!
    @IBOutlet weak var showerContent: UITextField!
    @IBOutlet weak var washingmachineContent: UITextField!
    @IBOutlet weak var dishwasherContent: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        showerInt = shower
        showerContent.text = "\(showerInt)"
        bathInt = bath
        bathContent.text = "\(bathInt)"
        dishwasherInt = dishwasher
        dishwasherContent.text = "\(dishwasherInt)"
        washingmachineInt = washingmachine
        washingmachineContent.text = "\(washingmachineInt)"
        
        //UserDefaults.standard.set(showerInt, forKey: "shower")
        //UserDefaults.standard.set(5, forKey: "water")
        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear(_ animated: Bool)
    {
        UserDefaults.standard.set(showerInt, forKey: "shower")
        UserDefaults.standard.set(bathInt, forKey: "bath")
        UserDefaults.standard.set(dishwasherInt, forKey: "dishwasher")
        UserDefaults.standard.set(washingmachineInt, forKey: "washingmachine")
        totalWater = showerInt + bathInt + dishwasherInt + washingmachineInt
        UserDefaults.standard.set(totalWater, forKey: "water")
        
        
    }
  
    

    @IBAction func showerAdd(_ sender: UIButton)
    {
       
         showerInt += 1
        
        showerContent.text = "\(showerInt)"
        
    }
    
    @IBAction func bathAdd(_ sender: UIButton)
    {
        bathInt += 1
        bathContent.text = "\(bathInt)"
        //addToVar(inputVar: bathInt)
    }
    
    @IBAction func dishwasherAdd(_ sender: UIButton)
    {
        dishwasherInt += 1
        dishwasherContent.text = "\(dishwasherInt)"
       // addToVar(inputVar: dishwasherInt)
    }
    
    @IBAction func washingAdd(_ sender: UIButton)
    {
        washingmachineInt += 1
        washingmachineContent.text = "\(washingmachineInt)"
        //addToVar(inputVar: washingmachineInt)
    }
    @IBAction func showerSubtract(_ sender: UIButton)
    {
        showerInt -= 1
        if showerInt < 0
        {
            showerInt = 0
        }
        //UserDefaults.standard.set(showerInt, forKey: "shower")
        showerContent.text = "\(showerInt)"
    }
    
    @IBAction func bathSubtract(_ sender: UIButton)
    {
        bathInt -= 1
        if bathInt < 0
        {
            bathInt = 0
        }
        bathContent.text = "\(bathInt)"
        
    }
    
    @IBAction func dishwasherSubtract(_ sender: UIButton)
    {
        dishwasherInt -= 1
        if dishwasherInt < 0
        {
            dishwasherInt = 0
        }
        dishwasherContent.text = "\(dishwasherInt)"
    }
    @IBAction func washingmachineSubtract(_ sender: UIButton)
    {
        washingmachineInt -= 1
        if washingmachineInt < 0
        {
            washingmachineInt = 0
        }
        washingmachineContent.text = "\(washingmachineInt)"
    }
}
