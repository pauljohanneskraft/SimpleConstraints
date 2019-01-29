//
//  PartialXAnchorLayoutConstraint.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

import Foundation

public struct PartialXAnchorLayoutConstraint {
    public let anchor: NSLayoutXAxisAnchor
    public let constant: CGFloat

    internal init(anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) {
        self.anchor = anchor
        self.constant = constant
    }
}
