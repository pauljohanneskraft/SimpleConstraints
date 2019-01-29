//
//  PartialXAnchorLayoutConstraint^2.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension PartialXAnchorLayoutConstraint {
    public static func == (lhs: PartialXAnchorLayoutConstraint, rhs: PartialXAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.anchor
            .constraint(equalTo: rhs.anchor, constant: lhs.constant - rhs.constant)
    }

    public static func <= (lhs: PartialXAnchorLayoutConstraint, rhs: PartialXAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.anchor
            .constraint(lessThanOrEqualTo: rhs.anchor, constant: lhs.constant - rhs.constant)
    }

    public static func >= (lhs: PartialXAnchorLayoutConstraint, rhs: PartialXAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.anchor
            .constraint(greaterThanOrEqualTo: rhs.anchor, constant: lhs.constant - rhs.constant)
    }
}
