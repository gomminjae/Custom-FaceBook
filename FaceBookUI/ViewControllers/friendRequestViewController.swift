//
//  friendRequestViewController.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class friendRequestViewController: UITableViewController {
    
    let cellId = "cellId"
    
    private var requests = [Friend]()
    private var recommends = [Recommend]()
    
    private let sections: [String] = ["Friend Requests", "People You May Know"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationSetup()
        tableViewSetup()
        
        let mark = Friend()
        mark.name = "mark"
        mark.profileImage = "mark"
        
        let mark2 = Recommend(name: "mark", profileImage: "mark")
        let jimin = Recommend(name: "jimin", profileImage: "jimin")
        let steve = Recommend(name: "Steve Jobs", profileImage: "steve")
        let moon = Recommend(name: "moonchaewon", profileImage: "moon")
        
        
        
        requests.append(mark)
        recommends.append(mark2)
        recommends.append(steve)
        recommends.append(jimin)
        recommends.append(moon)
        
        // Do any additional setup after loading the view.
    }
    
    func navigationSetup() {
          navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1)
          navigationController?.navigationBar.topItem?.title = "MinjaeBook"
          navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
      }
    
    func tableViewSetup() {
        tableView.backgroundColor = UIColor(white: 0.95, alpha: 1)
        tableView.register(friendRequest.self, forCellReuseIdentifier: cellId)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return recommends.count
        }else { return requests.count }
       
        
        //return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? friendRequest else { return UITableViewCell() }
        
        if indexPath.section == 1 {
            cell.recommend = recommends[indexPath.item]
        }else { cell.friend = requests[indexPath.item] }
        
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
   
}
