//
//  LoginContract.swift
//  mvpWithSwift
//
//  Created by Juan Martinez on 2/22/20.
//  Copyright © 2020 Juan Martinez. All rights reserved.
//

import Foundation

protocol ProtocolLoginView {
    func toggleButton(enable: Bool)
    func showRecoveryPassword()
    func showHome()
    func showRegister()
}

protocol ProtocolLoginPresenter {
    func validateLogin(username: String, passoword: String)
}

