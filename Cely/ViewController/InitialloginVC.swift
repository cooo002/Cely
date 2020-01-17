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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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


}

