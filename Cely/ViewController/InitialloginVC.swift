//
//  ViewController.swift
//  Cely
//
//  Created by 김재석 on 2019/12/24.
//  Copyright © 2019 김재석. All rights reserved.
//

import UIKit
import Pastel

class InitialloginVC: UIViewController {

    //ToDo:이메일 변수
    @IBOutlet weak var email: NSLayoutConstraint!
    
    //ToDo:비밀변호 변수
    @IBOutlet weak var password: NSLayoutConstraint!
    
    //ToDo:로그인 버튼(이메일 로그인 버튼이다.)
    @IBAction func logIn(_ sender: Any) {
    }
    
    //ToDo:처음 방문해서 회원가입 페이지로 이동하는 액션(회원가입 버튼액션)
    @IBAction func signUpViewMovingAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewBackgroundColor()
        
        
    }


}

// ViewCustom & RemovingKeyBoard
extension InitialloginVC:UITextFieldDelegate{
    

    
    func viewBackgroundColor(){
        let pastelView = PastelView(frame: view.bounds)

         // Custom Direction
         pastelView.startPastelPoint = .bottomLeft
         pastelView.endPastelPoint = .topRight

         // Custom Duration
         pastelView.animationDuration = 3.0

         // Custom Color
        pastelView.setColors([UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha:                           1.0),
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

