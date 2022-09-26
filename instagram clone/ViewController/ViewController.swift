//
//  ViewController.swift
//  instagram clone
//
//  Created by Mucha Naibei on 16/09/2022.
//

import UIKit

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    //variables
    var email: String = ""
    var password: String = ""
    
    //lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialUi()
    }
    
    //custom func

    func initialUi(){
        buttonLogin.layer.cornerRadius = 8
        buttonLogin.layer.masksToBounds = true
    }
    
    
    //action
    @IBAction func loginAction(_ sender: Any) {
        self.view.endEditing(true)
        
        if textFieldUsername.text == email &&
            textFieldPassword.text == password {
            print("Login Successful")
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "Tabbar") as? UITabBarController
            self.navigationController?.pushViewController(vc!, animated: true)
        } else{
            print("Wrong username or password")
        }
    }
    
}

