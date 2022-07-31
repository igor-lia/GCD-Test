//
//  FourthViewController.swift
//  GCD-Test
//
//  Created by Ігор Ляхович on 29.07.2022.
//

import UIKit

class FourthViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabelWithDelay()
        
    }
    
    func updateLabelWithDelay() {
        DispatchQueue.main.async {
            Thread.sleep(forTimeInterval: 2)
            self.label.text = "Hi, this label is showing up with a delay"
        }
    }
    
}
