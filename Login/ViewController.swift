//
//  ViewController.swift
//  Login
//
//  Created by TTung on 2/7/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var tf_password: UITextField!
    @IBOutlet weak var lbl_noti: UILabel!
    
    
    @IBOutlet weak var tf_registerUser: UITextField!
    @IBOutlet weak var tf_registerPass: UITextField!
    
    @IBOutlet weak var lbl_notiRegister: UILabel!
    @IBOutlet weak var lbl_Account: UILabel!
    @IBOutlet weak var lbl_deleteAccount: UILabel!
    @IBOutlet weak var tf_deleteAccount: UITextField!
    @IBOutlet weak var lbl_notiDelete: UILabel!
    
    var user = ["TTung":"123","Techmaster":"1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btn_login(_ sender: UIButton) {
        checkLogin()
        lbl_noti.isHidden = false
       }
    
    func checkLogin() {
        if let password = user [tf_user.text!]{
            if password == tf_password.text {
               lbl_noti.text = String("Dang Nhap Thanh Cong")
            }else{
                lbl_noti.text = String("Mat Khau Khong Dung")
            }
        }else{
                lbl_noti.text = String("Tai Khoan Khong Ton Tai")
        }
        

    }

    @IBAction func btn_newAccount(_ sender: UIButton) {
        tf_registerPass.isHidden = false
        tf_registerUser.isHidden = false
        
    }
    
    func checkReister(){
        if let passwd = user [tf_registerUser.text!]{
            lbl_notiRegister.text = String("Tai Khoan da ton tai")
        }else{
            user [tf_registerUser.text!] = tf_registerPass.text!
            lbl_notiRegister.text = String("Dang Ky Thanh Cong")
        }
    }
    
    @IBAction func btn_register(_ sender: Any) {
        checkReister()
        lbl_notiRegister.isHidden = false

    }
  
    @IBAction func btn_accountLists(_ sender: UIButton) {
       
        var fullList = ""
       
    for (key,value) in user{
        
            fullList += "\(key)\n"
            lbl_Account.text = "\(fullList)"

            print("Tai khoan : \(key): \(value)")
        }
        lbl_Account.isHidden = false
        tf_deleteAccount.isHidden = false
        
    }
    @IBAction func btn_deleteAccount(_ sender: Any) {
       
        if let passwd = user [tf_deleteAccount.text!]{
            let delete = tf_deleteAccount.text
            user.removeValue(forKey: delete!)
            lbl_notiDelete.text = "Da Xoa Thanh Cong"
            lbl_notiDelete.isHidden = false
            
        } else {
          lbl_notiDelete.text = "Khong co tai khoan nay"
        }
        
           }
    
}

