//
//  NSLayoutDimension+CGFloat.swift
//  SwiftyConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

// MARK: - Calculations

extension NSLayoutDimension {
    public static func + (lhs: NSLayoutDimension, rhs: CGFloat) -> PartialDimensionLayoutConstraint {
        return PartialDimensionLayoutConstraint(dimension: lhs, multiplier: 1, constant: rhs)
    }

    public static func + (lhs: CGFloat, rhs: NSLayoutDimension) -> PartialDimensionLayoutConstraint {
        return rhs + lhs
    }

    public static func - (lhs: NSLayoutDimension, rhs: CGFloat) -> PartialDimensionLayoutConstraint {
        return lhs + (-rhs)
    }

    public static prefix func - (rhs: NSLayoutDimension) -> PartialDimensionLayoutConstraint {
        return PartialDimensionLayoutConstraint(dimension: rhs, multiplier: -1, constant: 0)
    }

    public static func - (lhs: CGFloat, rhs: NSLayoutDimension) -> PartialDimensionLayoutConstraint {
        return PartialDimensionLayoutConstraint(dimension: rhs, multiplier: -1, constant: lhs)
    }

    public static func * (lhs: NSLayoutDimension, rhs: CGFloat) -> PartialDimensionLayoutConstraint {
        return PartialDimensionLayoutConstraint(dimension: lhs, multiplier: rhs, constant: 0)
    }

    public static func * (lhs: CGFloat, rhs: NSLayoutDimension) -> PartialDimensionLayoutConstraint {
        return rhs * lhs
    }

    public static func / (lhs: NSLayoutDimension, rhs: CGFloat) -> PartialDimensionLayoutConstraint {
        return lhs * (1 / rhs)
    }
}

// MARK: - Equality

extension NSLayoutDimension {
    public static func == (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.constraint(equalToConstant: rhs)
    }

    public static func == (lhs: CGFloat, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return rhs == lhs
    }

    public static func >= (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.constraint(greaterThanOrEqualToConstant: rhs)
    }

    public static func >= (lhs: CGFloat, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return rhs <= lhs
    }

    public static func <= (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.constraint(lessThanOrEqualToConstant: rhs)
    }

    public static func <= (lhs: CGFloat, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return rhs >= lhs
    }
}


