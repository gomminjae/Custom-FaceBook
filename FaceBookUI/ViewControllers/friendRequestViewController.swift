//
//  friendRequestViewController.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class Friend {
    var profileImage: String?
    var name: String?
}

class Recommend {
    var profileImage: String?
    var name: String?
}





class friendRequestViewController: UITableViewController {
    
    static let cellId = "cellId"
    static let headerId = "headerId"
    
    private var requests = [Friend]()
    private var recommends = [Recommend]()
    
    private let sections: [String] = ["Friend Requests", "People You May Know"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationSetup()
        tableViewSetup()
        
        let mark = Friend()
        mark.name = "mark"
        mark.profileImage = "mark"
        
        let mark2 = Recommend()
        mark.name = "mark"
        mark.profileImage = "mark"
        
        requests.append(mark)
        recommends.append(mark2)
        
        // Do any additional setup after loading the view.
    }
    
    func navigationSetup() {
          navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1)
          navigationController?.navigationBar.topItem?.title = "MinjaeBook"
          navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
      }
    
    func tableViewSetup() {
        tableView.register(friendRequest.self, forCellReuseIdentifier: friendRequestViewController.cellId)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return requests.count
        }
        else if section == 1 {
            return recommends.count
        }else { return 0 }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: friendRequestViewController.cellId, for: indexPath) as? friendRequest else { return UITableViewCell() }
        if indexPath.section == 0 {
            cell.friend = requests[indexPath.row]
        }
        else if indexPath.section == 1 {
            cell.recommend = recommends[indexPath.row]
        }
        
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
      
    

   
}
