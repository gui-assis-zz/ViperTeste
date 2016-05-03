//
//  LoginViewController.swift
//  teste
//
//  Created by Ruan on 03/05/16.
//  Copyright © 2016 Ruan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var presenter: LoginPresenterProtocol?
    
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var txtUser: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginConfigurator.configure(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLoginClick(sender: AnyObject) {
        presenter?.login(txtUser.text!, password: txtPassword.text!)
    }

}

extension LoginViewController: LoginViewProtocol {
    func showLastUser() {
        
    }
    
    func showLastPassword() {
        
    }
    
    func loginSuccess() {
        let alert = UIAlertController(title: "Sucesso", message: "Login efetuado com sucesso", preferredStyle: .Alert)
        self.showViewController(alert, sender: nil)
    }
    
    func loginError() {
        let alert = UIAlertController(title: "Erro", message: "Falha no login", preferredStyle: .Alert)
        self.showViewController(alert, sender: nil)
    }
}
