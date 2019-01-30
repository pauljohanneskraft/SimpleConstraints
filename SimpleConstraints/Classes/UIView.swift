//
//  UIView.swift
//  SimpleConstraints
//
//  Created by Paul Kraft on 30.01.19.
//

extension UIView {

    @available(iOS 10.0, *)
    public func constraints<O>(at anchor: NSLayoutAnchor<O>) -> [NSLayoutConstraint] {
        return constraints.filter { constraint in
            return constraint.firstAnchor == anchor
                || constraint.secondAnchor == anchor
        }
    }

    @available(iOS 10.0, *)
    public func constraintsAffectingLayout<O>(at anchor: NSLayoutAnchor<O>) -> [NSLayoutConstraint] {
        return constraints.filter { constraint in
            guard constraint.isActive else { return false }
            return constraint.firstAnchor == anchor
                || constraint.secondAnchor == anchor
        }
    }
}

extension UIView {

    public func constrainToEdges(of otherView: UIView, insets: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor == otherView.topAnchor + insets.top,
            bottomAnchor == otherView.bottomAnchor - insets.bottom,
            leftAnchor == otherView.leftAnchor + insets.left,
            rightAnchor == otherView.rightAnchor - insets.right
        ])
    }

    public func constrainToCenter(of otherView: UIView, offset: CGPoint = .zero) {
        NSLayoutConstraint.activate([
            centerXAnchor == otherView.centerXAnchor + offset.x,
            centerYAnchor == otherView.centerYAnchor + offset.y
        ])
    }

    public func constrainToSize(of otherView: UIView,
                                multiplier: CGPoint = CGPoint(x: 1, y: 1),
                                constant: CGPoint = .zero) {
        NSLayoutConstraint.activate([
            widthAnchor - constant.x == otherView.widthAnchor * multiplier.x,
            heightAnchor - constant.y == otherView.heightAnchor * multiplier.y
        ])
    }
}
