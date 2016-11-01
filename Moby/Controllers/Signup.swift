//
//  Signup.swift
//  Moby
//
//  Created by Jonathan on 10/31/16.
//  Copyright © 2016 Jonathan. All rights reserved.
//

import UIKit
import Material
import Cartography
import SwiftEventBus
import ChameleonFramework

class Signup: UIViewController {
    
    var bgView = ImageCard()
    var email = TextField()
    var firstName = TextField()
    var lastName = TextField()
    var password = TextField()
    var contentView = UIView()
    var signUp = FlatButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildViews()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buildViews(){
        
        self.view.backgroundColor = UIColor.flatTeal()
        
        self.view.addSubview(bgView)
        self.view.addSubview(contentView)
        self.contentView.addSubview(email)
        self.contentView.addSubview(firstName)
        self.contentView.addSubview(lastName)
        self.contentView.addSubview(password)
        self.contentView.addSubview(signUp)
    
        let views:[UIView] = [bgView,contentView,email,firstName,lastName,password,signUp]
        
        constrain(views) { (_Views) in
            
            let superView = _Views[0].superview
            
            _Views[0].center == (superView?.center)!
            _Views[0].left == (superView?.left)! + 20
            _Views[0].right == (superView?.right)! - 20
            _Views[0].height == 250
            
            //_Views[1].top == (superView?.bottom)!
            //_Views[1].centerX == (superView?.centerX)!
            //_Views[1].left == (superView?.left)!
            //_Views[1].right == (superView?.right)!
            _Views[1].height == 350
            
            _Views[2].top == (_Views[1].top) + 30
            _Views[2].left == (_Views[1].left) + 20
            _Views[2].width == _Views[0].width - 40
            //_Views[2].right == _Views[0].width
            
            _Views[3].top == _Views[2].bottom + 30
            _Views[3].left == (_Views[1].left) + 20
            _Views[3].width == _Views[0].width - 40
            //_Views[3].right == (_Views[0].right) - 20
            
            _Views[4].top == _Views[3].bottom + 30
            _Views[4].left == (_Views[1].left) + 20
            _Views[4].width == _Views[0].width - 40
            //_Views[4].right == (_Views[0].right) - 20
            
            _Views[5].top == _Views[4].bottom + 30
            _Views[5].left == (_Views[1].left) + 20
            _Views[5].width == _Views[0].width - 40
            //_Views[5].right == (_Views[0].right) - 20
            
            _Views[6].top == _Views[5].bottom + 30
            _Views[6].left == (_Views[1].left) + 20
            _Views[6].width == _Views[0].width - 40
            _Views[6].height == 50
            
    
            bgView.backgroundColor = UIColor(complementaryFlatColorOf: UIColor.flatTeal())
            bgView.imageView = UIImageView()
            bgView.imageView?.contentMode = .scaleAspectFit
            bgView.imageView?.image = UIImage(named: "fishing")?.resize(toHeight: 130)
            
            
            contentView.backgroundColor = UIColor.flatWhite()
            
            email.textColor = UIColor.flatWhite()
            email.placeholder = "Email"
            
            firstName.textColor = UIColor.flatWhite()
            firstName.placeholder = "First Name"
            
            lastName.textColor = UIColor.flatWhite()
            lastName.placeholder = "Last Name"
            
            password.textColor = UIColor.flatWhite()
            password.placeholder = "Password"
            
            signUp.setTitle("Sign Up", for: .normal)
            signUp.setTitleColor(UIColor.flatWhite(), for: .normal)
            signUp.backgroundColor = UIColor(complementaryFlatColorOf: UIColor.flatTeal())
            
            bgView.contentView = contentView
            bgView.contentViewEdgeInsetsPreset = .none
        
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}