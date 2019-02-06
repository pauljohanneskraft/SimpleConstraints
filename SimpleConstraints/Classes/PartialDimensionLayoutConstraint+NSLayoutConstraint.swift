//
//  PartialDimensionLayoutConstraint+NSLayoutConstraint.swift
//  SimpleConstraints
//
//  Created by Paul Kraft on 06.02.19.
//

import Foundation

extension PartialDimensionLayoutConstraint {
    public static func == (lhs: PartialDimensionLayoutConstraint, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return lhs.dimension.constraint(equalTo: rhs, multiplier: 1 / lhs.multiplier, constant: -(lhs.constant / lhs.multiplier))
    }

    public static func == (lhs: NSLayoutDimension, rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        return rhs == lhs
    }

    public static func <= (lhs: PartialDimensionLayoutConstraint, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return lhs.dimension.constraint(lessThanOrEqualTo: rhs, multiplier: 1 / lhs.multiplier, constant: -(lhs.constant / lhs.multiplier))
    }

    public static func <= (lhs: NSLayoutDimension, rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        return rhs >= lhs
    }

    public static func >= (lhs: PartialDimensionLayoutConstraint, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return lhs.dimension.constraint(greaterThanOrEqualTo: rhs, multiplier: 1 / lhs.multiplier, constant: -(lhs.constant / lhs.multiplier))
    }

    public static func >= (lhs: NSLayoutDimension, rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        return rhs <= lhs
    }
}
