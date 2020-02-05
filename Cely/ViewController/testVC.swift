//
//  testVC.swift
//  Cely
//
//  Created by 김재석 on 2020/02/05.
//  Copyright © 2020 김재석. All rights reserved.
//

import Foundation
import UIKit

class testVC: UIViewController {
    @IBAction func button(_ sender: Any) {
        print(UserDefaults.standard.bool(forKey: "logInStatus"))
    }
    
    
    //ToDo:이메일 변수    //ToDo:비밀변호 변수
    //ToDo:로그인 버튼(이메일 로그인 버튼이다.)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
        
        
    }


}
