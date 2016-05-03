//
//  LoginProtocol.swift
//  teste
//
//  Created by Ruan on 03/05/16.
//  Copyright © 2016 Ruan. All rights reserved.
//

import UIKit

protocol LoginWireframeProtocol : class{
    func callHome()
}

protocol LoginViewProtocol : class {
    var presenter : LoginPresenterProtocol? {get set}
    
    func showLastUser()
    func showLastPassword()
    func loginError()
    func loginSuccess()
}

protocol LoginPresenterProtocol : class{
    var loginView : LoginViewProtocol? {get set}
    var loginInteractor : LoginInteractorProtocol? {get set}
    var loginWireframe : LoginWireframeProtocol? {get set}
    
    func login(user: String, password: String)
}

protocol LoginInteractorProtocol : class {
    var presenter: LoginInteractorProtocolOutput? {get set}
    func login(user : String, password: String)
}

protocol LoginInteractorProtocolOutput: class {
    func didLoginSuccess()
    func didLoginFail()
}