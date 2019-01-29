//
//  PartialYAnchorLayoutConstraint.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

public struct PartialYAnchorLayoutConstraint {
    public let anchor: NSLayoutYAxisAnchor
    public let constant: CGFloat

    internal init(anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) {
        self.anchor = anchor
        self.constant = constant
    }
}
