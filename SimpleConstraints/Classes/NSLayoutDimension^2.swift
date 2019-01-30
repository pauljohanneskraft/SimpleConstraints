//
//  NSLayoutDimension^2.swift
//  SimpleConstraints
//
//  Created by Paul Kraft on 30.01.19.
//

extension NSLayoutDimension {
    public static func == (lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return lhs.constraint(equalTo: rhs)
    }

    public static func >= (lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return lhs.constraint(greaterThanOrEqualTo: rhs)
    }

    public static func <= (lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        return lhs.constraint(lessThanOrEqualTo: rhs)
    }
}
