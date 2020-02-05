//
//  SelectLoginWayVC.swift
//  Cely
//
//  Created by 김재석 on 2020/02/05.
//  Copyright © 2020 김재석. All rights reserved.
//

import Foundation
import UIKit
import Pastel
import Firebase
import FirebaseUI
import GoogleSignIn


class SelectLoginWayVC: UIViewController {
    
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewBackgroundColor()
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
        // TODO(developer) Configure the sign-in button look/feel
        // ...
                
    }

}

// ViewCustom & RemovingKeyBoard
extension SelectLoginWayVC{
    

    
    func viewBackgroundColor(){
        let pastelView = PastelView(frame: view.bounds)

         // Custom Direction
         pastelView.startPastelPoint = .bottomLeft
         pastelView.endPastelPoint = .topRight

         // Custom Duration
         pastelView.animationDuration = 3.0

         // Custom Color
        pastelView.setColors([UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha: 1.0),
                              UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1.0),
                              UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1.0),
                              UIColor(red: 20/255, green: 20/255, blue: 20/255, alpha: 1.0),])
        
         pastelView.startAnimation()
         view.insertSubview(pastelView, at: 0)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

extension SelectLoginWayVC: GIDSignInDelegate{
    
//Check: GIDSignINDelegate프로토콜 때문에 어쩔 수 없이 추가된 메소드이다. 실질적인 구글인증 로직을 수행하는 메소드는
//      AppDelegate클래스에 있는 sign메소드가 수행한다. 
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
    }
    
    
    
}

