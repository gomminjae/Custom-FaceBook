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
    
    func setupView() {
        backgroundColor = .white
        addSubview(nameLabel)
        addSubview(profileImage)
        
    }
    
    private func makeConstraints() {
        profileImage.snp.makeConstraints { (make) in
            make.leading.equalTo(5)
            make.top.equalTo(3)
            make.trailing.equalTo(nameLabel.snp.leading).offset(2)
        }
        nameLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(profileImage.snp.trailing).offset(2)
            make.top.equalTo(3)
            make.trailing.equalTo(0)
        }
            
    }
    
    
    
    
    
    
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var profileImage: UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .orange
        img.contentMode = .scaleToFill
        return img
    }()
    
    
    
    lazy var acceptButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    lazy var cancelButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    
    
    

}
