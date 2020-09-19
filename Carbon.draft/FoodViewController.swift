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
    var redMeat = 0
    var lightMeat = 0
    var vegetarian = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func redMeatAdd(_ sender: UIButton)
    {
        redMeat += 1
        redMeatContent.text = "\(redMeat)"
    }
    
    @IBAction func lightMeatAdd(_ sender: UIButton)
    {
        lightMeat += 1
        lightMeatContent.text = "\(lightMeat)"
    }
    
    @IBAction func vegetarianAdd(_ sender: UIButton)
    {
        vegetarian += 1
        vegetarianContent.text = "\(vegetarian)"
    }
    

}
