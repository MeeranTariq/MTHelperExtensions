//
//  UITextView+TextValidation.swift
//  MTHelperExtensions
//
//  Created by Meeran Tariq on 08/10/2019.
//

import UIKit

extension UITextView {
    
    public var textAfterRemovingWhiteSpaces: String? {
        get {
            return self.text?.trimmingCharacters(in: .whitespaces)
        }
    }
    
    public func isTextValid(minCharCheck: Int = 3) -> Bool {
        
        let text = self.textAfterRemovingWhiteSpaces
        
        guard let str = text else {
            return false
        }
        
        if(str != String() && str.count >= minCharCheck){
            return true
        }
        return false
    }
}
