//
//  LoginPresenter.swift
//  teste
//
//  Created by Ruan on 03/05/16.
//  Copyright © 2016 Ruan. All rights reserved.
//

import UIKit

class LoginPresenter: LoginPresenterProtocol {
    
    var loginView : LoginViewProtocol?
    var loginInteractor : LoginInteractorProtocol?
    var loginWireframe : LoginWireframeProtocol?
    
    func login(user: String, password: String) {
        loginInteractor?.login(user, password: password)
    }
}

extension LoginPresenter: LoginInteractorProtocolOutput {
    func didLoginFail() {
        loginView?.loginError()
    }
    
    func didLoginSuccess() {
        loginView?.loginSuccess()
    }
}
