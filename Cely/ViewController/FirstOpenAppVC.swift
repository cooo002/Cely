//
//  FirstOpenAppVC.swift
//  Cely
//
//  Created by 김재석 on 2020/01/19.
//  Copyright © 2020 김재석. All rights reserved.
//ToDo:앱을 맨 처음 사용하는 사람들에게 이 앱에 대해 설명을 해주는 IntroScreen이다.

import Foundation
import IntroScreen

class FirstOpenVC: UIViewController{
    
    @IBAction func showIntroAction(_ sender: Any) {
        performSegue(withIdentifier: "IntroSegue", sender: nil)
    }
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          switch segue.identifier {
          case "IntroSegue":
              let destination = segue.destination as! IntroViewController
              destination.modalPresentationStyle = .fullScreen
              destination.introDataSource = self
          default:
              break
          }
      }
    
    
}

// MARK: - Intro data source
extension FirstOpenVC: IntroDataSource {
    
    var numberOfPages: Int { 3 }
    
    var fadeOutLastPage: Bool { false }
    
    func viewController(at index: Int) -> IntroPageViewController? {
        switch index {
        case 0:
            return DefaultIntroPageViewController.getInstance(
                index: index,
                hue: 195/360,
                title: "First page",
                subtitle: "This is the first page.",
                image: UIImage(named: "Intstagram Text Logo")
            )
        case 1:
            return DefaultIntroPageViewController.getInstance(
                index: index,
                hue: 180/360,
                title: "Second page",
                subtitle: "This is the second page.",
                image: UIImage(named: "Intstagram Text Logo")
            )
        case 2:
            return DefaultIntroPageViewController.getInstance(
                index: index,
                hue: 205/360,
                title: "Third page",
                subtitle: "This is the third page.",
                image: UIImage(named: "Intstagram Text Logo")
            )
        //Check:이제 3번째 스크린 다음으로 넘기는 제스쳐를 취하면 로그인하느 페이지가 띄워지도록 만들어주자
        default:
            return nil
        }
    }
}

