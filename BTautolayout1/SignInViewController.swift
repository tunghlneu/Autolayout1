//
//  SignInViewController.swift
//  BTautolayout1
//
//  Created by Tung on 6/17/20.
//  Copyright © 2020 Tung. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        let viewfacebook = UIButton()
        viewfacebook.translatesAutoresizingMaskIntoConstraints = false
        viewfacebook.backgroundColor = UIColor.blue
        viewfacebook.layer.cornerRadius = 20
        viewfacebook.setTitle("Facebook", for: . normal)
        self.view.addSubview(viewfacebook)
        viewfacebook.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        viewfacebook.leftAnchor.constraint(equalTo: self.view.leftAnchor , constant: 40).isActive = true;
        viewfacebook.rightAnchor.constraint(equalTo: self.view.rightAnchor , constant: -40).isActive = true;
        viewfacebook.bottomAnchor.constraint(equalTo: self.view.bottomAnchor , constant: -50).isActive = true;
        viewfacebook.heightAnchor.constraint(equalToConstant: 50).isActive = true  }
    

    @objc func dismissVC(){
        self.dismiss(animated: true, completion: nil)
        
    }

}
