//
//  ThirdViewController.swift
//  GCD-Test
//
//  Created by Ігор Ляхович on 28.07.2022.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delay(3) {
            self.loginAllert()
            
        }
    }
    
    
    func delay(_ delay: Int, closure: @escaping ()->()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(delay)) {
            closure()
        }
    }
    
    func loginAllert() {
        let ac = UIAlertController(title: "Зареєстровані?", message: "Введіть ваш логін та пароль", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
        
        ac.addAction(okAction)
        ac.addAction(cancelAction)
        
        ac.addTextField { (userNameTF) in
            userNameTF.placeholder = "Введіть логін"
        }
        
        ac.addTextField { (userPasswordTF) in
            userPasswordTF.placeholder = "Введіть пароль"
            userPasswordTF.isSecureTextEntry = true
        }
        
        present(ac, animated: true)
    }
}
