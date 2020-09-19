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
    
    @IBOutlet weak var bathContent: UITextField!
    @IBOutlet weak var showerContent: UITextField!
    @IBOutlet weak var washingmachineContent: UITextField!
    @IBOutlet weak var dishwasherContent: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        UserDefaults.standard.set(5, forKey: "water")
        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear(_ animated: Bool)
    {
       
        
        UserDefaults.standard.set(showerInt, forKey: "shower")
        

        
    }
    

    @IBAction func showerAdd(_ sender: UIButton)
    {
        //addToVar(inputVar: showerInt)
        //showerInt = addedVar
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
    
   // func addToVar(inputVar: Int) -> Int
   // {
    //    addedVar = inputVar + 1
     //   return addedVar
        
    //}
}
