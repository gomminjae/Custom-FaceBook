//
//  storyCell.swift
//  FaceBookUI
//
//  Created by Apple on 2020/04/29.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class storyCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        layoutSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("error")
    }
    
    func setupView() {
        addSubview(profileImage)
    }
    
    func layoutSetup() {
        profileImage.snp.makeConstraints {
            $0.top.equalTo(0)
            $0.leading.trailing.equalTo(0)
            $0.bottom.equalTo(0)
        }
    }
    
    let profileImage: UIImageView = {
        let view = UIImageView()
        
        return view
    }()
    
    
    
    
}
