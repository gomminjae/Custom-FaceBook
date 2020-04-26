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
        mainView.dataSource = self
        mainView.delegate = self
        layoutSetup()

        // Do any additional setup after loading the view.
    }
    
    func navigationSetup() {
             navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1)
             navigationController?.navigationBar.topItem?.title = "Messenger"
             navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    private func layoutSetup() {
        mainView.snp.makeConstraints { (make) in
            make.leading.trailing.equalTo(0)
            make.top.bottom.equalTo(60)
        }
    }
    
    lazy var mainView: UITableView = {
        let view = UITableView()
        
        return view
    }()
    


}

extension messengerViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
}
