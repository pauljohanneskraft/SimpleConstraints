//
//  PartialDimensionLayoutConstraint+CGFloat.swift
//  SimpleConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

// MARK: - Calculations

extension CGFloat {
    public static func + (lhs: PartialDimensionLayoutConstraint, rhs: CGFloat) -> PartialDimensionLayoutConstraint {
        return PartialDimensionLayoutConstraint(dimension: lhs.dimension, multiplier: lhs.multiplier, constant: lhs.constant + rhs)
    }

    public static func + (lhs: CGFloat, rhs: PartialDimensionLayoutConstraint) -> PartialDimensionLayoutConstraint {
        return rhs + lhs
    }

    public static func - (lhs: PartialDimensionLayoutConstraint, rhs: CGFloat) -> PartialDimensionLayoutConstraint {
        return lhs + (-rhs)
    }

    public static func - (lhs: CGFloat, rhs: PartialDimensionLayoutConstraint) -> PartialDimensionLayoutConstraint {
        return lhs + (-rhs)
    }

    public static func * (lhs: PartialDimensionLayoutConstraint, rhs: CGFloat) -> PartialDimensionLayoutConstraint {
        return PartialDimensionLayoutConstraint(dimension: lhs.dimension, multiplier: lhs.multiplier * rhs, constant: lhs.constant * rhs)
    }

    public static func * (lhs: CGFloat, rhs: PartialDimensionLayoutConstraint) -> PartialDimensionLayoutConstraint {
        return rhs * lhs
    }

    public static func / (lhs: PartialDimensionLayoutConstraint, rhs: CGFloat) -> PartialDimensionLayoutConstraint {
        return lhs * (1 / rhs)
    }
}

extension PartialDimensionLayoutConstraint {
    public static prefix func - (rhs: PartialDimensionLayoutConstraint) -> PartialDimensionLayoutConstraint {
        return PartialDimensionLayoutConstraint(dimension: rhs.dimension,
                                                multiplier: -rhs.multiplier, constant: -rhs.constant)
    }
}

// MARK: - Equality

extension CGFloat {
    public static func == (lhs: PartialDimensionLayoutConstraint, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.dimension.constraint(equalToConstant: rhs / lhs.multiplier)
    }

    public static func == (lhs: CGFloat, rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        return rhs == lhs
    }

    public static func <= (lhs: PartialDimensionLayoutConstraint, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.dimension.constraint(lessThanOrEqualToConstant: rhs / lhs.multiplier)
    }

    public static func <= (lhs: CGFloat, rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        return rhs >= lhs
    }

    public static func >= (lhs: PartialDimensionLayoutConstraint, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.dimension.constraint(greaterThanOrEqualToConstant: rhs / lhs.multiplier)
    }

    public static func >= (lhs: CGFloat, rhs: PartialDimensionLayoutConstraint) -> NSLayoutConstraint {
        return rhs <= lhs
    }
}
