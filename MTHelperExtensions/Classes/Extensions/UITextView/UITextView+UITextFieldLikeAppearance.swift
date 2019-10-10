//
//  UITextView+UITextFieldLikeAppearance.swift
//  MTHelperExtensions
//
//  Created by Meeran Tariq on 08/10/2019.
//

import UIKit

extension UITextView {
    
    func makeCornersRounded() {
        self.layer.cornerRadius = 5
    }
    
    func addPaddings() {
        self.layer.sublayerTransform = CATransform3DMakeTranslation(5, 5, 5)
    }
    
    func addBorders() {
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor(white: 0.75, alpha: 1.0).cgColor
    }
}
