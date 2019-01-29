//
//  PartialYAnchorLayoutConstraint^2.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension PartialYAnchorLayoutConstraint {
    public static func == (lhs: PartialYAnchorLayoutConstraint, rhs: PartialYAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.anchor
            .constraint(equalTo: rhs.anchor, constant: rhs.constant - lhs.constant)
    }

    public static func <= (lhs: PartialYAnchorLayoutConstraint, rhs: PartialYAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.anchor
            .constraint(lessThanOrEqualTo: rhs.anchor, constant: rhs.constant - lhs.constant)
    }

    public static func >= (lhs: PartialYAnchorLayoutConstraint, rhs: PartialYAnchorLayoutConstraint) -> NSLayoutConstraint {
        return lhs.anchor
            .constraint(greaterThanOrEqualTo: rhs.anchor, constant: rhs.constant - lhs.constant)
    }
}
