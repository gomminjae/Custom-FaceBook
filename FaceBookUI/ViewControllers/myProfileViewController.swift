//
//  myProfileViewController.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/15.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class myProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationSetup()

        // Do any additional setup after loading the view.
    }
    func navigationSetup() {
                navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1)
                navigationController?.navigationBar.topItem?.title = "MinjaeBook"
                navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
       }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
