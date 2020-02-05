//
//  UserProperty.swift
//  Cely
//
//  Created by 김재석 on 2020/02/05.
//  Copyright © 2020 김재석. All rights reserved.
//
//ToDo:로그인여부, 로그인한 유저의uid 등의 코어데이터가 저장되는 모델객체이다.

import Foundation
import CoreData

class PropetyList{
    var plist = UserDefaults.standard
    
    
    func wirteBool(value: Bool, key:String){
        self.plist.set(value, forKey: key)
        self.plist.synchronize()
    }
    
    func wirteString(value: String, key:String){
        self.plist.set(value, forKey: key)
        self.plist.synchronize()
    }
    
    func readBool(key: String) -> Bool{
        let value = self.plist.bool(forKey: key)
        return value
    }
    
    func readString(key: String) -> String{
        let value = self.plist.string(forKey: key)
        return value!
    }
    
    
}
