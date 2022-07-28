//
//  ViewController.swift
//  GCD-Test
//
//  Created by Ігор Ляхович on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonVC2: UIButton!
    @IBOutlet weak var buttonVC3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonVC2.layer.cornerRadius = 15
        buttonVC3.layer.cornerRadius = 15
        
    }
}

