//
//  WasteViewController.swift
//  Carbon.draft
//
//  Created by Jocelyn Miller on 9/16/20.
//  Copyright © 2020 Jocelyn Miller. All rights reserved.
//

import UIKit

class WasteViewController: UIViewController
{

    @IBOutlet weak var trashContent: UITextField!
    @IBOutlet weak var recycleContent: UITextField!
    var trash = 0
    var recycle = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func trashAdd(_ sender: UIButton)
    {
        trash += 1
        trashContent.text = "\(trash)"
        
    }
    
    @IBAction func recycleAdd(_ sender: UIButton)
    {
        recycle += 1
        recycleContent.text = "\(recycle)"
    }
    
    @IBAction func recycleSubtract(_ sender: UIButton)
    {
        trash -= 1
            if trash < 0
            {
                trash = 0
            }
            trashContent.text = "\(trash)"
    }
    

    @IBAction func trashSubtract(_ sender: UIButton)
    {
        recycle -= 1
        if recycle < 0
        {
            recycle = 0
        }
        recycleContent.text = "\(recycle)"
    }
}
