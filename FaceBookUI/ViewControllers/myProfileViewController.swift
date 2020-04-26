//
//  myProfileViewController.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/15.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import SnapKit

class myProfileViewController: UIViewController {
    
    let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.backgroundColor = .orange
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraits()

        // Do any additional setup after loading the view.
    }
    fileprivate func setupViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(myProfileView)
        view.addSubview(nameLabel)
        view.addSubview(collectionView)
        view.addSubview(friendButton)
        view.addSubview(newsFeed)
        view.addSubview(activityLog)
        view.addSubview(moreButton)
        collectionView.register(feedCell.self, forCellWithReuseIdentifier: "cell")
        myProfileView.makeToCircle()
    }
    
    
    
    fileprivate func setupConstraits() {
        backgroundImageView.snp.makeConstraints {
            $0.top.equalTo(0)
            $0.bottom.equalTo(view.frame.height).inset(550)
            //$0.height.equalTo(300)
            $0.leading.trailing.equalTo(0)
        }
        
        myProfileView.snp.makeConstraints {
            $0.top.equalTo(backgroundImageView.snp.bottom).inset(70)
            $0.width.equalTo(140)
            $0.bottom.equalTo(backgroundImageView.snp.bottom).offset(70)
            $0.center.equalTo(self.view)
        }
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(myProfileView.snp.bottom)
            $0.leading.equalTo(myProfileView.snp.leading)
            $0.center.equalTo(self.view)
            
        }
        collectionView.snp.makeConstraints {
            $0.top.equalTo(backgroundImageView.snp.bottom)
            $0.leading.trailing.equalTo(0)
        }
        friendButton.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(10)
            $0.leading.equalTo(0)
        }
        newsFeed.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(10)
            $0.leading.equalTo(friendButton.snp.trailing).offset(10)
        }
        activityLog.snp.makeConstraints {
            $0.top.equalTo(friendButton.snp.top)
            $0.leading.equalTo(newsFeed.snp.trailing).offset(10)
        }
        moreButton.snp.makeConstraints {
            $0.top.equalTo(friendButton.snp.top)
            $0.leading.equalTo(activityLog.snp.trailing).offset(10)
        }

    }
    
    
    let backgroundImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .lightGray
        view.image = UIImage(named: "ocean")
        return view
    }()
    
    let myProfileView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .blue
        view.image = UIImage(named: "steve")
        view.contentMode = .scaleToFill
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Steve Jobs"
        //label.backgroundColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let friendButton: UIButton = {
        let button = UIButton()
        button.setTitle("Friend", for: .normal)
        button.setImage(UIImage(named: "friendRequest"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.alignTextUnderImage(spacing: 6.0)
        return button
    }()
    let newsFeed: UIButton = {
        let button = UIButton()
        button.setTitle("NewsFeed", for: .normal)
        button.setImage(UIImage(named: "newsfeed"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.alignTextUnderImage(spacing: 6.0)
        return button
    }()
    
    let activityLog: UIButton = {
        let button = UIButton()
        button.setTitle("Activity Log", for: .normal)
        button.setImage(UIImage(named: "comment"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.alignTextUnderImage(spacing: 6.0)
        return button
    }()
    let moreButton: UIButton = {
        let button = UIButton()
        button.setTitle("More", for: .normal)
        button.setImage(UIImage(named: "more"), for: .normal)
        button.setTitleColor(.black, for: .normal)
       button.alignTextUnderImage(spacing: 6.0)
        return button
    }()

}

extension myProfileViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? feedCell else { return UICollectionViewCell() }
        
        return cell
    }
    
    
    
}
