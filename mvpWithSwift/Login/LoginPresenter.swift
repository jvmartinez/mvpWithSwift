//
//  LoginPresenter.swift
//  mvpWithSwift
//
//  Created by Juan Martinez on 2/22/20.
//  Copyright © 2020 Juan Martinez. All rights reserved.
//

import Foundation

class LoginPresenter: ProtocolLoginPresenter {
    private var view: ProtocolLoginView?
    private var email: String = ""
    private var password: String = ""
    init(view: ProtocolLoginView) {
        self.view = view
    }
    
    func viewDidLoad() {
        validateToogleButton()
    }
    
    func validateLogin() {
        
    }
    
    func emailTextChange(char: String) {
        email =  char
        validateToogleButton()
    }
    
    func passwordTextChange(char: String) {
        password = char
        validateToogleButton()
    }
    
    func validateToogleButton() {
        if email.isEmpty || password.isEmpty {
            view?.showButtonInvative()
            view?.toggleButton(enable: false)
        } else {
            view?.showButtonActive()
            view?.toggleButton(enable: true)
        }
    }
}
