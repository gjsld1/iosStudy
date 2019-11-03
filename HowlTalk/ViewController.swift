//
//  ViewController.swift
//  HowlTalk
//
//  Created by 신예지 on 03/11/2019.
//  Copyright © 2019 신예지. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text = "Testing input.."
       
        actionButton.addTarget(self, action: #selector(actionEvent), for: UIControl.Event.touchUpInside)
        //self는 자기 클래스 지칭, for는 어떤 상태일 때 실행할지
        
    }
    @objc func actionEvent() {
        textLabel.text = textField.text
        mainImageView.image = UIImage(named:"mugadang")
    }
}

