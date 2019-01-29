//
//  PartialXAnchorLayoutConstraint+CGFloat.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension PartialXAnchorLayoutConstraint {
    public static func + (lhs: PartialXAnchorLayoutConstraint, rhs: CGFloat) -> PartialXAnchorLayoutConstraint {
        return PartialXAnchorLayoutConstraint(anchor: lhs.anchor, constant: lhs.constant + rhs)
    }

    public static func + (lhs: CGFloat, rhs: PartialXAnchorLayoutConstraint) -> PartialXAnchorLayoutConstraint {
        return rhs + lhs
    }

    public static func - (lhs: PartialXAnchorLayoutConstraint, rhs: CGFloat) -> PartialXAnchorLayoutConstraint {
        return PartialXAnchorLayoutConstraint(anchor: lhs.anchor, constant: lhs.constant - rhs)
    }
}
