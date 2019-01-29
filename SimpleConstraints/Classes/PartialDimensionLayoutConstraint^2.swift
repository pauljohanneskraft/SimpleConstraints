//
//  PartialDimensionLayoutConstraint^2.swift
//  SimpleConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension PartialDimensionLayoutConstraint {
    public static func == (lhs: PartialDimensionLayoutConstraint,
                           rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        let multiplier = rhs.multiplier / lhs.multiplier
        let constant = (rhs.constant - lhs.constant) / lhs.multiplier
        return lhs.dimension
            .constraint(equalTo: rhs.dimension, multiplier: multiplier, constant: constant)
    }

    public static func >= (lhs: PartialDimensionLayoutConstraint,
                           rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        let multiplier = rhs.multiplier / lhs.multiplier
        let constant = (rhs.constant - lhs.constant) / lhs.multiplier
        return lhs.dimension
            .constraint(greaterThanOrEqualTo: rhs.dimension, multiplier: multiplier, constant: constant)
    }

    public static func <= (lhs: PartialDimensionLayoutConstraint,
                           rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        let multiplier = rhs.multiplier / lhs.multiplier
        let constant = (rhs.constant - lhs.constant) / lhs.multiplier
        return lhs.dimension
            .constraint(lessThanOrEqualTo: rhs.dimension, multiplier: multiplier, constant: constant)
    }
}
