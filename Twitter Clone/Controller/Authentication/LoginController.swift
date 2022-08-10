//
//  LoginController.swift
//  Twitter Clone
//
//  Created by Marlon Marques on 26/07/22.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "TwitterLogo")
        
        return imageView
    }()
    
    private lazy var emailContainerView: UIView = {
        let image = UIImage(named: "ic_mail_outline_white_2x-1")
        let view = Utilities().inputContainerView(withImage: image!, textField: emailTextField)
       
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let image = UIImage(named: "ic_lock_outline_white_2x")
        let view = Utilities().inputContainerView(withImage: image!, textField: passwordTextField)
        
        return view
    }()
    
    private let emailTextField: UITextField = {
        let textField = Utilities().textField(withPlaceholder: "Email")
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = Utilities().textField(withPlaceholder: "Password")
        textField.isSecureTextEntry = true
        return textField
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 150, height: 150)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        
        stack.axis = .vertical
        stack.spacing = 8
        
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingLeft: 16, paddingRight: 16)
    }
    
}
