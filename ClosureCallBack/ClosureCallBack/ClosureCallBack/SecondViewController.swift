//
//  SecondViewController.swift
//  ClosureCallBack
////var passclosure:((String?) -> Void)?    //declaration
//  Created by Iphone XR on 28/12/22.
//

import UIKit
typealias text = (String)-> ()

class SecondViewController: UIViewController, UITextFieldDelegate {
    let nameTF =  UITextField()
    let backButton = UIButton()
     var closures:text!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        TF()
        backBtn()
    }
    
    func TF(){
        nameTF.placeholder = "Enter text here"
        nameTF.font = UIFont.systemFont(ofSize: 15)
        nameTF.borderStyle = UITextField.BorderStyle.roundedRect
        nameTF.autocorrectionType = UITextAutocorrectionType.no
        nameTF.returnKeyType = UIReturnKeyType.done
        nameTF.clearButtonMode = UITextField.ViewMode.whileEditing
        nameTF.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        nameTF.delegate = self
        self.view.addSubview(nameTF)
        nameTF.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameTF, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: nameTF, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: nameTF, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
    }
    func backBtn(){
        backButton.setTitle("BackData", for: .normal)
        backButton.setTitleColor(UIColor.blue, for: [])
        backButton.addTarget(self,action: #selector(backbuttonAction),for: .touchUpInside)
        backButton.backgroundColor = UIColor.white
        backButton.center = view.center
        view.addSubview(backButton)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: backButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 350).isActive = true
        NSLayoutConstraint(item: backButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: backButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
    }
    @objc func backbuttonAction(_sender:UIButton){
        guard let text = nameTF.text else { return }
        closures(text)    //call
        
        self.navigationController?.popViewController(animated: true)

    }
}




















// passclosure?(<#String#>)
//        guard let closure = passclosure else{
//            print("pass data closure not ave value")
//            return
//        }
//        let datatovc1 = self.nameTF.text
//        closure(datatovc1!)
//        self.navigationController?.popViewController(animated: true)

//        print("Back button tapped")
//      let result = passclosure?("FUS-ROH-DAH!!!")
//        print("passclosure returns...\(result)")
