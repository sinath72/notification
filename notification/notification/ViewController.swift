//
//  ViewController.swift
//  notification
//
//  Created by Sina Taherkhani on 6/14/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self,selector:#selector(didrecivenotif(_:)),name:.didreciveData,object:API.shared)
    }
    @objc func didrecivenotif(_ notification:Notification){
        if let data=notification.userInfo as?[Int:String] {
            print("\(data)")
        }
        print("notification recived")
    }

    @IBAction func btn_pressed(_ sender: Any) {
        API.shared.sendnotification()
    }
    
}
extension Notification.Name{
    static let didreciveData=Notification.Name("didReciveData")
}
