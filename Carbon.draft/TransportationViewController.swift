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
    var plane = 0
    var shortcar = 0
    var longcar = 0
    var publictrans = 0
    var walk = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func planeAdd(_ sender: UIButton)
    {
        plane += 1
        planeContent.text = "\(plane)"
    }
    
    @IBAction func shortcarAdd(_ sender: UIButton)
    {
        shortcar += 1
        shortcarContent.text = "\(shortcar)"
    }
    
    @IBAction func longcarAdd(_ sender: UIButton)
    {
        longcar += 1
        longcarContent.text = "\(longcar)"
    }
    @IBAction func publictransAdd(_ sender: UIButton)
    {
        publictrans += 1
        publictransContent.text = "\(publictrans)"
    }
    
    @IBAction func walkAdd(_ sender: UIButton)
    {
        walk += 1
        walkContent.text = "\(walk)"
    }
}
