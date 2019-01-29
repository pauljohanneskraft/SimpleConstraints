//
//  PartialDimensionLayoutConstraint^2.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

extension PartialDimensionLayoutConstraint {
    public static func == (lhs: PartialDimensionLayoutConstraint,
                           rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        let multiplier = CGFloat(0)
        let constant = CGFloat(0)
        return lhs.dimension
            .constraint(equalTo: rhs.dimension, multiplier: multiplier, constant: constant)
    }

    public static func >= (lhs: PartialDimensionLayoutConstraint,
                           rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        let multiplier = CGFloat(0)
        let constant = CGFloat(0)
        return lhs.dimension
            .constraint(greaterThanOrEqualTo: rhs.dimension, multiplier: multiplier, constant: constant)
    }

    public static func <= (lhs: PartialDimensionLayoutConstraint,
                           rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        let multiplier = CGFloat(0)
        let constant = CGFloat(0)
        return lhs.dimension
            .constraint(lessThanOrEqualTo: rhs.dimension, multiplier: multiplier, constant: constant)
    }
}
