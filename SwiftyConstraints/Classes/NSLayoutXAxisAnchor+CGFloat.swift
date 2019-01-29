//
//  NSLayoutXAxisAnchor+CGFloat.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension NSLayoutXAxisAnchor {
    public static func + (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> PartialXAnchorLayoutConstraint {
        return PartialXAnchorLayoutConstraint(anchor: lhs, constant: rhs)
    }

    public static func + (lhs: CGFloat, rhs: NSLayoutXAxisAnchor) -> PartialXAnchorLayoutConstraint {
        return rhs + lhs
    }

    public static func - (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> PartialXAnchorLayoutConstraint {
        return lhs + (-rhs)
    }
}
