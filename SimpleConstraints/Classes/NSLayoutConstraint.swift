//
//  NSLayoutConstraint.swift
//  SimpleConstraints
//
//  Created by Paul Kraft on 29.01.19.
//

infix operator <*

extension NSLayoutConstraint {
    public func priority(_ priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }

    public static func <* (lhs: NSLayoutConstraint, rhs: UILayoutPriority) -> NSLayoutConstraint {
        lhs.priority = rhs
        return lhs
    }

    public func activate() {
        isActive = true
    }

    public func deactivate() {
        isActive = false
    }
}
