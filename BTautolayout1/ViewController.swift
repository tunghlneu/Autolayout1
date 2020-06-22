//
//  ViewController.swift
//  BTautolayout1
//
//  Created by Tung on 6/17/20.
//  Copyright © 2020 Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        // Do any additional setup after loading the view, typically from a nib.
        let viewfacebook = UIButton()
        viewfacebook.translatesAutoresizingMaskIntoConstraints = false
        viewfacebook.backgroundColor = UIColor.blue
        viewfacebook.layer.cornerRadius = 20
        viewfacebook.setTitle("Facebook", for: . normal)
        self.view.addSubview(viewfacebook)
        viewfacebook.addTarget(self, action: #selector(openSignInVC), for: .touchUpInside)
        
        viewfacebook.leftAnchor.constraint(equalTo: self.view.leftAnchor , constant: 40).isActive = true;
        viewfacebook.rightAnchor.constraint(equalTo: self.view.rightAnchor , constant: -40).isActive = true;
        viewfacebook.bottomAnchor.constraint(equalTo: self.view.bottomAnchor , constant: -50).isActive = true;
        viewfacebook.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        let viewemail = UIButton()
        viewemail.translatesAutoresizingMaskIntoConstraints = false
        viewemail.backgroundColor = UIColor.gray
        viewemail.layer.cornerRadius = 20
        viewemail.setTitle("Email", for: . normal)
        self.view.addSubview(viewemail)
        viewemail.addTarget(self, action: #selector(openNavigationVC), for: .touchUpInside)
        
        viewemail.leftAnchor.constraint(equalTo: self.view.leftAnchor , constant: 40).isActive = true;
        viewemail.rightAnchor.constraint(equalTo: self.view.rightAnchor , constant: -40).isActive = true;
        viewemail.bottomAnchor.constraint(equalTo: viewfacebook.topAnchor , constant: -10).isActive = true;
        viewemail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        let viewtext = UIView()
        viewtext.translatesAutoresizingMaskIntoConstraints = false
        viewtext.backgroundColor = UIColor.black
        
        self.view.addSubview(viewtext)
        
        viewtext.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -40).isActive = true;
        viewtext.leftAnchor.constraint(equalTo: self.view.leftAnchor , constant: 40).isActive = true;
        viewtext.bottomAnchor.constraint(equalTo: viewemail.topAnchor , constant: -10).isActive = true;
        viewtext.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        let viewlable = UILabel()
        viewlable.translatesAutoresizingMaskIntoConstraints = false
        viewlable.backgroundColor = UIColor.black
        viewlable.text = "Xin chao cac ban!"
        viewlable.font = viewlable.font.withSize(30)
        viewlable.textColor = UIColor.white
        viewlable.textAlignment = NSTextAlignment.center
        self.view.addSubview(viewlable)
        
        viewlable.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -40).isActive = true;
        viewlable.leftAnchor.constraint(equalTo: self.view.leftAnchor , constant: 40).isActive = true;
        viewlable.bottomAnchor.constraint(equalTo: viewtext.topAnchor , constant: -10).isActive = true;
        viewlable.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }

    @objc func openSignInVC(){
        let signINVC = SignInViewController()
        self.present(signINVC, animated: true, completion: nil)
    }
    
    @objc func openNavigationVC(){
        let nv = UINavigationController(rootViewController: NavigationViewController())
        self.present(nv, animated: true, completion: nil)
        
    }
}

