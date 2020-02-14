//
//  friendRequestViewController.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class friendRequestViewController: UIViewController {
    
    static let cellId = "cellId"
    static let headerId = "headerId"
     
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationSetup()
        view.addSubview(tableView)

        // Do any additional setup after loading the view.
    }
    
    func navigationSetup() {
          navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1)
          navigationController?.navigationBar.topItem?.title = "MinjaeBook"
          navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
      }
      
    

   
}
extension friendRequestViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: friendRequestViewController.cellId, for: indexPath) as? friendRequest else { return UITableViewCell() }
        
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}


extension friendRequestViewController: UITableViewDelegate {
    
}
