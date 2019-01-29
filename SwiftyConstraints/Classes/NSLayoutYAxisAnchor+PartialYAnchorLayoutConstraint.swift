//
//  NSLayoutYAxisAnchor+PartialYAnchorLayoutConstraint.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension NSLayoutYAxisAnchor {
    public static func == (lhs: NSLayoutYAxisAnchor, rhs: PartialYAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.constraint(equalTo: rhs.anchor, constant: rhs.constant)
    }

    public static func == (lhs: PartialYAnchorLayoutConstraint, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        return rhs == lhs
    }

    public static func <= (lhs: NSLayoutYAxisAnchor, rhs: PartialYAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.constraint(lessThanOrEqualTo: rhs.anchor, constant: rhs.constant)
    }

    public static func <= (lhs: PartialYAnchorLayoutConstraint, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        return rhs >= lhs
    }

    public static func >= (lhs: NSLayoutYAxisAnchor, rhs: PartialYAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.constraint(greaterThanOrEqualTo: rhs.anchor, constant: rhs.constant)
    }

    public static func >= (lhs: PartialYAnchorLayoutConstraint, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        return rhs <= lhs
    }
}
