//
//  LoginConfigurator.swift
//  teste
//
//  Created by Ruan on 03/05/16.
//  Copyright © 2016 Ruan. All rights reserved.
//

import UIKit

class LoginConfigurator: NSObject {
    static func configure(view : LoginViewProtocol){
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let wireframe = LoginWireFrame()
        
        view.presenter = presenter
        presenter.loginView = view
        presenter.loginWireframe = wireframe
        presenter.loginInteractor = interactor
        interactor.presenter = presenter
        
    }
}
