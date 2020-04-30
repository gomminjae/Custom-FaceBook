//
//  Requests.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/15.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class Friend {
    var profileImage: String?
    var name: String?
}

class Recommend {
    var profileImage: String?
    var name: String?
    
    init(name: String, profileImage: String) {
        self.name = name
        self.profileImage = profileImage
    }
    
    
}

