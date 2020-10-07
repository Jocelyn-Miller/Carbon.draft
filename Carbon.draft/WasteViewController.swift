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
    var trashInt = 0
    var recycleInt = 0
    var trash = UserDefaults.standard.integer(forKey: "trash")
    var recycling = UserDefaults.standard.integer(forKey: "recycling")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        trashInt = trash
        recycleInt = recycling
        trashContent.text = "\(trashInt)"
        recycleContent.text = "\(recycleInt)"

        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool)
    {
        UserDefaults.standard.set(trashInt, forKey: "trash")
        UserDefaults.standard.set(recycleInt, forKey: "recyclying")
    }
    

    @IBAction func trashAdd(_ sender: UIButton)
    {
        trashInt += 1
        trashContent.text = "\(trashInt)"
        
    }
    
    @IBAction func recycleAdd(_ sender: UIButton)
    {
        recycleInt += 1
        recycleContent.text = "\(recycleInt)"
    }
    
    @IBAction func recycleSubtract(_ sender: UIButton)
    {
        trashInt -= 1
            if trashInt < 0
            {
                trashInt = 0
            }
            trashContent.text = "\(trashInt)"
    }
    

    @IBAction func trashSubtract(_ sender: UIButton)
    {
        recycleInt -= 1
        if recycleInt < 0
        {
            recycleInt = 0
        }
        recycleContent.text = "\(recycleInt)"
    }
}
