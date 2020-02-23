//
//  LoginViewPresenter.swift
//  mvpWithSwift
//
//  Created by Juan Martinez on 2/22/20.
//  Copyright © 2020 Juan Martinez. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController, ProtocolLoginView {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var btnRegister: UIButton!
    @IBOutlet var btnRecoveryPassword: UIButton!
    var presenter: LoginPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.addTarget(self, action: #selector(actionLogin), for: .touchUpInside)
        btnLogin.layer.borderColor = UIColor.darkGray.cgColor
        btnRegister.layer.borderColor = UIColor.darkGray.cgColor
        presenter.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toggleButton(enable: Bool) {
        btnLogin.isUserInteractionEnabled = enable
    }
    
    func showRecoveryPassword() {
        
    }
    
    func showHome() {
        // call viewController of home
    }
    
    func showRegister() {
        // call viewController of form register
    }
        
    @objc func actionLogin() {
        presenter?.validateLogin()
    }
    
    @IBAction func emailTextChange(_ sender: UITextField) {
        presenter.emailTextChange(char: txtEmail.text ?? "")
    }
    
    @IBAction func passwordTextChange(_ sender: UITextField) {
        presenter.passwordTextChange(char: txtPassword.text ?? "")
    }
    
    func showButtonActive() {
        btnLogin.backgroundColor = .systemBlue
    }
    
    func showButtonInvative() {
        btnLogin.backgroundColor = .lightGray
    }
}
