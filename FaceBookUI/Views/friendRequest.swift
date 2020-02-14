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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("error tableView")
    }
    
    func setupView() {
        backgroundColor = .white
        addSubview(titleLabel)
    }
    
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "testing Good"
        return label
    }()
    
    
    
    

}
