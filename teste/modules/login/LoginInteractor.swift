//
//  LoginIteractor.swift
//  teste
//
//  Created by Ruan on 03/05/16.
//  Copyright © 2016 Ruan. All rights reserved.
//

import UIKit

class LoginInteractor: LoginInteractorProtocol {
    var presenter: LoginInteractorProtocolOutput?
    
    func login(user: String, password: String) {
        if user == "admin" && password == "123" {
            presenter?.didLoginSuccess()
        } else {
            presenter?.didLoginFail()
        }
    }
}
