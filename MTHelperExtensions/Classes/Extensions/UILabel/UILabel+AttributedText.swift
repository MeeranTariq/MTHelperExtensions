//
//  UILabel+AttributedText.swift
//  MTHelperExtensions
//
//  Created by Meeran Tariq on 08/10/2019.
//

import UIKit

extension UILabel {
    
    func setMultiColor (
        originalText: String,
        toChangeText: String...,
        color: UIColor,
        withCustomFont fontName: String? = nil) {
        
        let nsString: NSString = originalText as NSString
        let attribute = NSMutableAttributedString.init(string: originalText)
        
        var i = 0
        while (i < toChangeText.count) {
            let range = (nsString).range(of: toChangeText[i])
            attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color , range: range)
            
            if (fontName != nil) {
                if let font = UIFont(name: fontName!, size: self.font.pointSize) {
                    attribute.addAttribute(NSAttributedString.Key.font, value: font, range: range)
                }
            }
            
            i = i + 1
        }
        
        self.attributedText = attribute
    }
    
    func setHashTags(on string: String, hashTagColor: UIColor) {
        
        let attrStr = NSMutableAttributedString(string: string)
        let searchPattern = "#\\w+"
        
        var ranges: [NSRange] = [NSRange]()
        
        let regex: NSRegularExpression
        
        do {
            try regex = NSRegularExpression(pattern: searchPattern, options: [])
        } catch {
            print(error.localizedDescription)
            return
        }
        
        ranges = regex.matches(in: attrStr.string, options: [], range: NSMakeRange(0, attrStr.string.count)).map {$0.range}
        
        for range in ranges {
            attrStr.addAttribute(NSAttributedString.Key.foregroundColor, value: hashTagColor, range: NSRange(location: range.location, length: range.length))
        }
        
        self.attributedText = attrStr
    }
}
