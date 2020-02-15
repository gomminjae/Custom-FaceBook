//
//  messengerViewController.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import SnapKit

class messengerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationSetup()
        view.addSubview(mainView)
        layoutSetup()

        // Do any additional setup after loading the view.
    }
    
    func navigationSetup() {
             navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1)
             navigationController?.navigationBar.topItem?.title = "MinjaeBook"
             navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    private func layoutSetup() {
        mainView.snp.makeConstraints { (make) in
            make.leading.trailing.equalTo(0)
            make.top.bottom.equalTo(0)
        }
    }
    
    lazy var mainView: UIView = {
        let view = UIView()
        
        return view
    }()
         
    


}
