//
//  LabelAttribute.swift
//  FaceBookUI
//
//  Created by Apple on 2020/04/26.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    public func addLabelAttributeString(text: String) {
        let setAttribute = [NSAttributedString.Key.foregroundColor:
            UIColor.black, NSAttributedString.Key.font:
            UIFont.systemFont(ofSize: 14)]
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 2
        
        let textAtt = NSMutableAttributedString(string: text, attributes: setAttribute)
        
        let setText = NSMutableAttributedString()
        setText.append(textAtt)
        self.attributedText = setText
    }
    
}

extension UIImageView {
    public func makeToCircle() {
        self.layer.borderWidth = 1
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderColor = UIColor.clear.cgColor
        self.clipsToBounds = true
    }
}
extension UIButton {
    func alignTextUnderImage(spacing: CGFloat = 6.0) {
      guard let image = imageView?.image, let label = titleLabel,
        let string = label.text else { return }

        titleEdgeInsets = UIEdgeInsets(top: spacing, left: -image.size.width, bottom: -image.size.height, right: 0.0)
        let titleSize = string.size(withAttributes: [NSAttributedString.Key.font: label.font])
        imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height + spacing), left: 0.0, bottom: 0.0, right: -titleSize.width)
    }
}
