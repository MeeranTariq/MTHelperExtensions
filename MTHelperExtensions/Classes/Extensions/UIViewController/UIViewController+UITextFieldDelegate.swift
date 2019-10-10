//
//  UIViewController+UITextFieldDelegate.swift
//  MTHelperExtensions
//
//  Created by Meeran Tariq on 08/10/2019.
//

import UIKit

extension UIViewController: UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text {
            return text.count + (string.count - range.length) <= 30
        }
        return false
    }
}
