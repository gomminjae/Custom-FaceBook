//
//  friendRequest.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import SnapKit

class friendRequest: UITableViewCell {
    
    var friend: Friend? {
        didSet {
            if let name = friend?.name {
                nameLabel.text = name
            }

            if let profileImg = friend?.profileImage {
                profileImage.image = UIImage(named: profileImg)
            }
        }
    }

    var recommend: Recommend? {
        didSet {
            if let name = recommend?.name {
                nameLabel.text = name
            }
            if let profileImg = recommend?.profileImage {
                profileImage.image = UIImage(named: profileImg)
            }
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }


    required init?(coder: NSCoder) {
        fatalError("error tableView")
    }
    
    private func setupView() {
        addSubview(profileView)
        addSubview(nameLabel)
        addSubview(profileImage)
        addSubview(acceptButton)
        addSubview(cancelButton)
        profileView.snp.makeConstraints { (make) in
            make.leading.equalTo(5)
            make.trailing.equalTo(5)
            make.top.bottom.equalTo(2)
            make.bottom.equalTo(5)
        }
        profileImage.snp.makeConstraints { (make) in
            make.leading.equalTo(profileView.snp.leading).offset(2)
            make.width.height.equalTo(45)
            make.top.equalTo(profileView.snp.top).offset(2)
                   
        }
                nameLabel.snp.makeConstraints { (make) in
                    make.leading.equalTo(65)
                    make.top.equalTo(profileView.snp.top).offset(0)
                    make.bottom.equalTo(profileImage.snp.bottom).offset(-20)
                }
                
                acceptButton.snp.makeConstraints { (make) in
                    make.top.equalTo(nameLabel.snp.bottom).offset(5)
                    make.leading.equalTo(nameLabel.snp.leading)
                    make.width.equalTo(80)
                    make.bottom.equalTo(profileView.snp.bottom).offset(-15)
                }

                cancelButton.snp.makeConstraints { (make) in
                    make.width.equalTo(acceptButton.snp.width)
                    make.height.equalTo(acceptButton.snp.height)
                    make.leading.equalTo(acceptButton.snp.trailing).offset(20)
                    make.bottom.equalTo(profileView.snp.bottom).offset(-15)
                }
        
    }
        
            

    
    lazy var profileView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.95, alpha: 1)
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        //label.backgroundColor = .green
        return label
    }()
    
    lazy var profileImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        return img
    }()
    lazy var acceptButton: UIButton = {
        let button = UIButton()
        button.setTitle("Confirm", for: .normal)
        button.layer.cornerRadius = 8
        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.tintColor = .white
        button.layer.borderWidth = 0.1
         button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()
    
    lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 0.1
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        //button.backgroundColor = .black
        return button
    }()
}
