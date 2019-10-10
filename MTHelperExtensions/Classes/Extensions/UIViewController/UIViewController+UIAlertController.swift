//
//  UIViewController+UIAlertController.swift
//  MTHelperExtensions
//
//  Created by Meeran Tariq on 08/10/2019.
//

import UIKit

extension UIViewController {
    
    public func showAlertControllerWith(title: String,
                                 message: String,
                                 actions: [UIAlertAction]?,
                                 completion: (() -> Void)? = nil){
        let alertController = UIAlertController(title: title,
                                                message:message,
                                                preferredStyle: .alert)
        
        if (actions == nil) {
            alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default))
        } else {
            for action in actions! {
                alertController.addAction(action)
            }
        }
        
        if let nav = navigationController {
            nav.present(alertController, animated: true, completion: completion)
        } else {
            self.present(alertController, animated: true, completion: completion)
        }
    }
    
    public func showAlertControllerWithError(title: String,
                                      error: Error?,
                                      message: String,
                                      actions: [UIAlertAction],
                                      completion: (() -> Void)? = nil) {
        
        showAlertControllerWith(title: title,
                                message: error?.localizedDescription ?? message,
                                actions: actions,
                                completion: completion)
    }
}
