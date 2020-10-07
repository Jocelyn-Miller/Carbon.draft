//
//  FoodViewController.swift
//  Carbon.draft
//
//  Created by Jocelyn Miller on 9/16/20.
//  Copyright © 2020 Jocelyn Miller. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController
{
    
    @IBOutlet weak var redMeatContent: UITextField!
    @IBOutlet weak var lightMeatContent: UITextField!
    @IBOutlet weak var vegetarianContent: UITextField!
    var redMeatInt = 0
    var lightMeatInt = 0
    var vegetarianInt = 0
    
    var redMeat = UserDefaults.standard.integer(forKey: "redMeat")
    var lightMeat = UserDefaults.standard.integer(forKey: "lightMeat")
    var vegetarian = UserDefaults.standard.integer(forKey: "vegetarian")

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        redMeatInt = redMeat
        redMeatContent.text = "\(redMeatInt)"
        lightMeatInt = lightMeat
        lightMeatContent.text = "\(lightMeatInt)"
        vegetarianInt = vegetarian
        vegetarianContent.text = "\(vegetarian)"
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        UserDefaults.standard.set(redMeatInt, forKey: "redMeat")
        UserDefaults.standard.set(lightMeatInt, forKey: "lightMeat")
        UserDefaults.standard.set(vegetarianInt, forKey: "vegetarian")
    }
    
    @IBAction func redMeatAdd(_ sender: UIButton)
    {
        redMeatInt += 1
        redMeatContent.text = "\(redMeatInt)"
    }
    
    @IBAction func lightMeatAdd(_ sender: UIButton)
    {
        lightMeatInt += 1
        lightMeatContent.text = "\(lightMeatInt)"
    }
    
    @IBAction func vegetarianAdd(_ sender: UIButton)
    {
        vegetarianInt += 1
        vegetarianContent.text = "\(vegetarianInt)"
    }
    
    @IBAction func redMeatSubtract(_ sender: UIButton)
    {
        redMeatInt -= 1
        if redMeatInt < 0
        {
            redMeatInt = 0
        }
        redMeatContent.text = "\(redMeatInt)"
    }
    @IBAction func lightMeatSubtract(_ sender: UIButton)
    {
        lightMeatInt -= 1
        if lightMeatInt < 0
        {
            lightMeatInt = 0
        }
        lightMeatContent.text = "\(lightMeatInt)"
    }
    
    @IBAction func vegetarianSubtract(_ sender: UIButton)
    {
        vegetarianInt -= 1
        if vegetarianInt < 0
        {
            vegetarianInt = 0
        }
        vegetarianContent.text = "\(vegetarianInt)"
    }
    
}
