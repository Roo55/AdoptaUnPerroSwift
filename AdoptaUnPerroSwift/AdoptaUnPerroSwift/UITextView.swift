//
//  UITextView.swift
//  AdoptaUnPerroSwift
//
//  Created by Administrador on 7/6/24.
//

import Foundation


import UIKit

extension UITextView {
    open override func awakeFromNib() {
        super.awakeFromNib()
        isEditable = false
    }
}
