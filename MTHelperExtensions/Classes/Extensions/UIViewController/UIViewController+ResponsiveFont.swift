//
//  UIViewController+ResponsiveFont.swift
//  MTHelperExtensions
//
//  Created by Meeran Tariq on 08/10/2019.
//

import UIKit

extension UIViewController {
    
    /* IMPORTANT */
    /* maxFontSize means the font size suitable for iPhone XSMAX */
    
    func adjustFontSizeAccordingToScreen(for view: UIView, maxFontSize: CGFloat){
        
        var desiredFontSize: CGFloat = 0
        
        switch UIDevice.current.screenType {
            
        case .iPhone4:
            desiredFontSize = maxFontSize - 4
        case .iPhones_5_5s_5c_SE:
            desiredFontSize = maxFontSize - 3
        case .iPhones_6_6s_7_8:
            desiredFontSize = maxFontSize - 2
        case .iPhones_6Plus_6sPlus_7Plus_8Plus:
            desiredFontSize = maxFontSize - 1
        case .iPhone_XR:
            desiredFontSize = maxFontSize - 1
        case .iPhones_X_XS:
            desiredFontSize = maxFontSize - 1
        case .iPhone_XSMax:
            desiredFontSize = maxFontSize
        default:
            desiredFontSize = maxFontSize
            
        }
        
        if (view is UIButton) {
            (view as! UIButton).titleLabel?.font = (view as! UIButton).titleLabel?.font.withSize(desiredFontSize)
        } else if (view is UILabel) {
            (view as! UILabel).font = (view as! UILabel).font.withSize(desiredFontSize)
        } else if (view is UITextView) {
            (view as! UITextView).font = (view as! UITextView).font?.withSize(desiredFontSize)
        } else if (view is UITextField) {
            (view as! UITextField).font = (view as! UITextField).font?.withSize(desiredFontSize)
        }
    }
}

