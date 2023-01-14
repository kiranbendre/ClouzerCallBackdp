//
//  ViewController.swift
//  ClosureCallBack
//
//  Created by Iphone XR on 28/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel = UILabel()
    let saveButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        Label()
         Btn()
    }
    func Label(){
        nameLabel.text = "welcome"
        nameLabel.numberOfLines = 0
        nameLabel.textAlignment = .center
        nameLabel.sizeToFit()
        nameLabel.backgroundColor = UIColor.white
        self.view.addSubview(nameLabel)
        //Add Constraint to Label
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 150).isActive = true
        NSLayoutConstraint(item: nameLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: nameLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
    }
    func Btn(){
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(UIColor.blue, for: [])
        saveButton.addTarget(self,action: #selector(savebuttonAction),for: .touchUpInside)
        saveButton.backgroundColor = UIColor.white
        saveButton.center = view.center
        view.addSubview(saveButton)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: saveButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 250).isActive = true
        NSLayoutConstraint(item: saveButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: saveButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
    }
    @objc func savebuttonAction(_sender: UIButton){
        print("tapped on btn")
        
        let secVC = SecondViewController()
        secVC.closures = {text in
            self.nameLabel.text = text
        }//assign the value
     
            self.navigationController?.pushViewController(secVC, animated: true)
        }

    }


//        secVC.passclosure = {(datafromVC2)in
//            print("closure called")
//            self.nameLabel.text = datafromVC2
