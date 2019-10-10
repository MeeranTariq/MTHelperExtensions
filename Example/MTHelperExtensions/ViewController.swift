//
//  ViewController.swift
//  MTHelperExtensions
//
//  Created by MeeranTariq on 10/08/2019.
//  Copyright (c) 2019 MeeranTariq. All rights reserved.
//

import UIKit
import MTHelperExtensions

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var hashTagLabel: UILabel!
    
    @IBOutlet weak var alertButton: UIButton!
    
    @IBOutlet weak var testTextfield: UITextField!
    @IBOutlet weak var testTextView: UITextView!
    
    // MARK: - Properties
    private var uiChangesApplied: Bool = false
    
    // MARK: - UIViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testTextfield.delegate = self
        
        testLabel.setMultiColor(originalText: testLabel.text!, toChangeText: "validating", "functionality", color: .black)
        hashTagLabel.setHashTags(on: hashTagLabel.text!, hashTagColor: .black)
        
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if (!uiChangesApplied) {
            
            adjustFontSizeAccordingToScreen(for: testLabel, maxFontSize: 18)
            adjustFontSizeAccordingToScreen(for: hashTagLabel, maxFontSize: 18)
            
            adjustFontSizeAccordingToScreen(for: alertButton, maxFontSize: 20)
            
            adjustFontSizeAccordingToScreen(for: testTextfield, maxFontSize: 17)
            adjustFontSizeAccordingToScreen(for: testTextView, maxFontSize: 17)
            
            testTextView.applyUITextfieldAppearance()
            
            uiChangesApplied = true
        }
    }
    
    // MARK: - IBActions
    @IBAction func showAlertDialog(_ sender: UIButton) {
        showAlertControllerWith(title: "Test Alert", message: "Hello! This a test alert dialog", actions: nil)
    }
}
