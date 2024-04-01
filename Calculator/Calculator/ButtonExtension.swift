//
//  ButtonExtension.swift
//  Calculator
//
//  Created by Nazrin on 01.04.24.
//

import Foundation
import UIKit

extension UIButton {
    func configureButton(figureButton: UIButton) {
        figureButton.layer.cornerRadius = frame.height/2
        figureButton.clipsToBounds = true
    }
}
