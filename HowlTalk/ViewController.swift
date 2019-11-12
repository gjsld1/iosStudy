//
//  ViewController.swift
//  HowlTalk
//
//  Created by 신예지 on 03/11/2019.
//  Copyright © 2019 신예지. All rights reserved.
//

import UIKit
import Firebase

//UITableViewDelegate, UITableViewDataSource -> 테이블 뷰와 정보 교환 가능
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var strArray = ["yeji", "judy", "snoopy"]
    var imageArray = [UIImage(named: "yeji"), UIImage(named: "judy"), UIImage(named: "snoopy")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strArray.count;   //행의 갯수 지정
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)  //indexPath 지정을 통해 행을 알 수 있음
        
        //mItemCell class로 형 변환
        var mItemCell = cell as! myItemCell
        //MyItemCell.nameLabel.text = "input text"
        mItemCell.nameLabel.text = strArray[indexPath.row]
        mItemCell.mainImageView.image = imageArray[indexPath.row]
        return mItemCell
    }
    
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
        Auth.auth().createUser(withEmail: "test@gmail.com", password: "123456") { (auth,err) in print(auth?.user)
            
        }
    }
}

class myItemCell : UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
}
