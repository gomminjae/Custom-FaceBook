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
    }
    
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        return label
    }()
    

}
