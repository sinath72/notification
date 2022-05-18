//
//  API.swift
//  notification
//
//  Created by Sina Taherkhani on 6/14/1400 AP.
//

import Foundation
class API {
    static let shared=API()
    func sendnotification() {
        let name=[1:"ss",2:"ii",3:"nn",4:"aa"]
        NotificationCenter.default.post(Notification(name: .didreciveData,object: API.shared,userInfo: name))
    }
}
