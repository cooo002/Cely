//
//  LogInByEmailVC.swift
//  Cely
//
//  Created by 김재석 on 2020/02/05.
//  Copyright © 2020 김재석. All rights reserved.
//
import UIKit
import Pastel
import Firebase

class LogInByEmailVC: UIViewController {
    
    
    //ToDo:이메일 변수
    
    @IBOutlet weak var email: UITextField!
    
    //ToDo:비밀변호 변수
    
    @IBOutlet weak var password: UITextField!
    
    //ToDo:로그인 버튼(이메일 로그인 버튼이다.)
    @IBAction func LogInByEmail(_ sender: Any) {
        logInByEmail()
        
    }
    
    override func viewDidLoad() {        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewBackgroundColor()
        
        
        
    }


}

// ViewCustom & RemovingKeyBoard
extension LogInByEmailVC{
    

    
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

//ToDo:회원가입 관련된 부분의 로직이 작성되어있는 부분이다.
extension LogInByEmailVC{
//

    private func logInByEmail(){
        
        let userDefault = UserDefaults.standard
        
        guard let email = email.text, let password = password.text else{
            return print("값이 제대로 안 들어와서 로그인 실패")
        }
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
          // ...
            userDefault.set(true, forKey: "logInStatus")
            userDefault.synchronize()
            self?.performSegue(withIdentifier: "test", sender: self)
        }
    }
}
