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



class SelectLoginWayVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewBackgroundColor()
                
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

