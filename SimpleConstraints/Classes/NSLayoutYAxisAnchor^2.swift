//
//  NSLayoutYAxisAnchor^2.swift
//  SimpleConstraints
//
//  Created by Paul Kraft on 30.01.19.
//

extension NSLayoutYAxisAnchor {
    public static func == (lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        return lhs.constraint(equalTo: rhs)
    }

    public static func >= (lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        return lhs.constraint(greaterThanOrEqualTo: rhs)
    }

    public static func <= (lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        return lhs.constraint(lessThanOrEqualTo: rhs)
    }
}
