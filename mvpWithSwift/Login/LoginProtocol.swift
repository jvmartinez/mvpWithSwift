//
//  LoginContract.swift
//  mvpWithSwift
//
//  Created by Juan Martinez on 2/22/20.
//  Copyright © 2020 Juan Martinez. All rights reserved.
//

import Foundation

protocol ProtocolLoginView: LoginViewController {
    func toggleButton(enable: Bool)
    func showRecoveryPassword()
    func showHome()
    func showRegister()
    func showButtonActive()
    func showButtonInvative()
}

protocol ProtocolLoginPresenter: ProtocolBasePresenter {
    func validateLogin()
    func emailTextChange(char: String)
    func passwordTextChange(char: String)
}

