//
//  TransportationViewController.swift
//  Carbon.draft
//
//  Created by Jocelyn Miller on 9/16/20.
//  Copyright © 2020 Jocelyn Miller. All rights reserved.
//

import UIKit

class TransportationViewController: UIViewController {

    @IBOutlet weak var planeContent: UITextField!
    @IBOutlet weak var shortcarContent: UITextField!
    @IBOutlet weak var longcarContent: UITextField!
    @IBOutlet weak var publictransContent: UITextField!
    @IBOutlet weak var walkContent: UITextField!
    var planeInt = 0
    var shortcarInt = 0
    var longcarInt = 0
    var publictransInt = 0
    var walkInt = 0
    var plane = UserDefaults.standard.integer(forKey: "plane")
    var shortcar = UserDefaults.standard.integer(forKey: "shortcar")
    var longcar = UserDefaults.standard.integer(forKey: "longcar")
    var publictrans = UserDefaults.standard.integer(forKey: "publictrans")
    var walk = UserDefaults.standard.integer(forKey: "walk")
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        planeInt = plane
        planeContent.text = "\(planeInt)"
        shortcarInt = shortcar
        shortcarContent.text = "\(shortcarInt)"
        longcarInt = longcar
        longcarContent.text = "\(longcarInt)"
        publictransInt = publictrans
        publictransContent.text = "\(publictransInt)"
        walkInt = walk
        walkContent.text = "\(walkInt)"

        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool)
    {
        UserDefaults.standard.set(planeInt, forKey: "plane")
        UserDefaults.standard.set(shortcarInt, forKey: "shortcar")
        UserDefaults.standard.set(longcarInt, forKey: "longcar")
        UserDefaults.standard.set(publictransInt, forKey: "publictrans")
        UserDefaults.standard.set(walkInt, forKey: "walk")
        
    }
    
    @IBAction func planeAdd(_ sender: UIButton)
    {
        planeInt += 1
        planeContent.text = "\(planeInt)"
    }
    
    @IBAction func shortcarAdd(_ sender: UIButton)
    {
        shortcarInt += 1
        shortcarContent.text = "\(shortcarInt)"
    }
    
    @IBAction func longcarAdd(_ sender: UIButton)
    {
        longcarInt += 1
        longcarContent.text = "\(longcarInt)"
    }
    @IBAction func publictransAdd(_ sender: UIButton)
    {
        publictransInt += 1
        publictransContent.text = "\(publictransInt)"
    }
    
    @IBAction func walkAdd(_ sender: UIButton)
    {
        walkInt += 1
        walkContent.text = "\(walkInt)"
    }
    
    @IBAction func planeSubtract(_ sender: UIButton)
    {
        planeInt -= 1
        if planeInt < 0
        {
            planeInt = 0
        }
        planeContent.text = "\(planeInt)"
    }
    @IBAction func shortcarSubtract(_ sender: UIButton)
    {
        shortcarInt -= 1
        if shortcarInt < 0
        {
            shortcarInt = 0
        }
        shortcarContent.text = "\(shortcarInt)"
    }
    @IBAction func longcarSubtract(_ sender: UIButton)
    {
        longcarInt -= 1
        if longcarInt < 0
        {
            longcarInt = 0
        }
        longcarContent.text = "\(longcarInt)"
    }
    @IBAction func publictransSubtract(_ sender: UIButton)
    {
        publictransInt -= 1
        if publictransInt < 0
        {
            publictransInt = 0
        }
        publictransContent.text = "\(publictransInt)"
    }
    @IBAction func walkSubtract(_ sender: UIButton)
    {
        walkInt -= 1
        if walkInt < 0
        {
            walkInt = 0
        }
        walkContent.text = "\(walkInt)"
    }
}
