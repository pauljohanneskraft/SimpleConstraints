//
//  NSLayoutXAxisAnchor+PartialXAnchorLayoutConstraint.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension NSLayoutXAxisAnchor {
    public static func == (lhs: NSLayoutXAxisAnchor, rhs: PartialXAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.constraint(equalTo: rhs.anchor, constant: rhs.constant)
    }

    public static func == (lhs: PartialXAnchorLayoutConstraint, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        return rhs == lhs
    }

    public static func <= (lhs: NSLayoutXAxisAnchor, rhs: PartialXAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.constraint(lessThanOrEqualTo: rhs.anchor, constant: -rhs.constant)
    }

    public static func <= (lhs: PartialXAnchorLayoutConstraint, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        return lhs.anchor.constraint(lessThanOrEqualTo: rhs, constant: lhs.constant)
    }

    public static func >= (lhs: PartialXAnchorLayoutConstraint, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        return lhs.anchor.constraint(greaterThanOrEqualTo: rhs, constant: lhs.constant)
    }

    public static func >= (lhs: NSLayoutXAxisAnchor, rhs: PartialXAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.constraint(greaterThanOrEqualTo: rhs.anchor, constant: rhs.constant)
    }
}
