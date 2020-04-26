//
//  messengerCell.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/17.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import SnapKit

class messengerCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init error")
    }
    
    func setupView() {
        addSubview(nameLabel)
        
        nameLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(5)
        }
    }
    
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.numberOfLines = 2
        
        let nameAttribute = [NSAttributedString.Key.foregroundColor: UIColor.black,
                             NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]
        let mayYouknowAttribute = [NSAttributedString.Key.foregroundColor:UIColor.lightGray,
                                   NSMutableAttributedString.Key.font: UIFont.systemFont(ofSize: 12)]
        let name = NSMutableAttributedString(string: "minjae", attributes: nameAttribute)
        
        let subTitle = NSMutableAttributedString(string: "89People you know", attributes: mayYouknowAttribute)
        let nameText = NSMutableAttributedString()
        nameText.append(name)
        nameText.append(subTitle)
        
        
        label.attributedText = nameText
        return label
    }()
    
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        
        return image
    }()
    

}
