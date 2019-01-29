//
//  NSLayoutYAxisAnchor+CGFloat.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension NSLayoutYAxisAnchor {
    public static func + (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> PartialYAnchorLayoutConstraint {
        return PartialYAnchorLayoutConstraint(anchor: lhs, constant: rhs)
    }

    public static func + (lhs: CGFloat, rhs: NSLayoutYAxisAnchor) -> PartialYAnchorLayoutConstraint {
        return rhs + lhs
    }

    public static func - (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> PartialYAnchorLayoutConstraint {
        return lhs + (-rhs)
    }
}
