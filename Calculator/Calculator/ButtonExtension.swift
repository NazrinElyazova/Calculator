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
        figureButton.layer.cornerRadius = 44
        figureButton.clipsToBounds = true
    }
}
