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
        view.addSubview(topView)
        topView.addSubview(collectionView)
        view.addSubview(tableView)
        collectionView.dataSource = self
        collectionView.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        layoutSetup()
        tableView.register(messengerCell.self, forCellReuseIdentifier: "tablecell")
        collectionView.register(storyCell.self, forCellWithReuseIdentifier: "collectionCell")

        
    }
    
    func navigationSetup() {
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.topItem?.title = "Messenger"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
    }
    
    private func layoutSetup() {
        
        topView.snp.makeConstraints {
            $0.top.equalTo(0)
            $0.leading.trailing.equalTo(0)
            $0.bottom.equalTo(tableView.snp.top)
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(topView.snp.top)
            $0.leading.trailing.equalTo(0)
            $0.bottom.equalTo(topView.snp.bottom)
        }
        
        tableView.snp.makeConstraints { (make) in
            make.leading.trailing.equalTo(0)
            make.top.equalTo(view.snp.top).inset(200)
            make.bottom.equalTo(0)
        }
              
    }
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var tableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .orange
        return view
    }()
    lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.backgroundColor = .brown
        return view
    }()

}

extension messengerViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as? messengerCell else { return UITableViewCell() }
        cell.nameLabel.text = "minjae"
        
        return cell
    }
}
extension messengerViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? storyCell else { return UICollectionViewCell() }
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = 50
        let width = 50
        return CGSize(width: width, height: height)
    }
    
    
}
