//
//  LoginModel.swift
//  Donation
//
//  Created by yuan zhuang on 6/20/17.
//  Copyright © 2017 yuan zhuang. All rights reserved.
//

import Foundation

class LoginModel{
    func user_exist(username: String, password: String)->Bool{
        if username == "miaomi" && password == "haha"{
            return true;
        }
        return false;
    }
    /*
     get database and relevant methods
    */

}