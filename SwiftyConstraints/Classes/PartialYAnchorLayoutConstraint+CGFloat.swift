//
//  PartialYAnchorLayoutConstraint+CGFloat.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension PartialYAnchorLayoutConstraint {
    public static func + (lhs: PartialYAnchorLayoutConstraint, rhs: CGFloat) -> PartialYAnchorLayoutConstraint {
        return PartialYAnchorLayoutConstraint(anchor: lhs.anchor, constant: lhs.constant + rhs)
    }

    public static func + (lhs: CGFloat, rhs: PartialYAnchorLayoutConstraint) -> PartialYAnchorLayoutConstraint {
        return rhs + lhs
    }

    public static func - (lhs: PartialYAnchorLayoutConstraint, rhs: CGFloat) -> PartialYAnchorLayoutConstraint {
        return lhs + (-rhs)
    }
}
