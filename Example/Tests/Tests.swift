import XCTest
import SimpleConstraints

class Tests: XCTestCase {

    // MARK: - Stored properties

    private let superView = UIView()
    private let view0 = UIView()
    private let view1 = UIView()

    // MARK: - Overrides

    override func setUp() {
        super.setUp()

        superView.addSubview(view0)
        superView.addSubview(view1)
    }

    // MARK: - Tests

    func testXAxisAnchors() {
        testEquality(simple: view0.leftAnchor + 5 == view1.rightAnchor - 8,
                     normal: view0.leftAnchor.constraint(equalTo: view1.rightAnchor, constant: -13))

        testEquality(simple: 5 + view0.leftAnchor == view1.rightAnchor - 8,
                     normal: view0.leftAnchor.constraint(equalTo: view1.rightAnchor, constant: -13))

        testEquality(simple: view0.leftAnchor + 5 >= view1.rightAnchor - 8,
                     normal: view0.leftAnchor.constraint(greaterThanOrEqualTo: view1.rightAnchor, constant: -13))

        testEquality(simple: view0.leftAnchor + 5 <= view1.rightAnchor - 8,
                     normal: view0.leftAnchor.constraint(lessThanOrEqualTo: view1.rightAnchor, constant: -13))

        testEquality(simple: view0.leftAnchor == view1.leftAnchor,
                     normal: view0.leftAnchor.constraint(equalTo: view1.leftAnchor))

        testEquality(simple: view0.rightAnchor >= view1.rightAnchor,
                     normal: view0.rightAnchor.constraint(greaterThanOrEqualTo: view1.rightAnchor))

        testEquality(simple: view0.rightAnchor <= view1.rightAnchor,
                     normal: view0.rightAnchor.constraint(lessThanOrEqualTo: view1.rightAnchor))

        testEquality(simple: view0.rightAnchor + 5 <= view1.rightAnchor,
                     normal: view1.rightAnchor.constraint(greaterThanOrEqualTo: view0.rightAnchor, constant: 5))

        testEquality(simple: view0.rightAnchor + 5 >= view1.rightAnchor,
                     normal: view1.rightAnchor.constraint(lessThanOrEqualTo: view0.rightAnchor, constant: 5))

        testEquality(simple: view0.rightAnchor + 5 == view1.rightAnchor,
                     normal: view1.rightAnchor.constraint(equalTo: view0.rightAnchor, constant: 5))

        testEquality(simple: (view0.rightAnchor + 5) - 5 == view1.rightAnchor,
                     normal: view1.rightAnchor.constraint(equalTo: view0.rightAnchor, constant: 0))

        testEquality(simple: (view0.rightAnchor - 5) + 5 == view1.rightAnchor,
                     normal: view1.rightAnchor.constraint(equalTo: view0.rightAnchor, constant: 0))

        testEquality(simple: 5 + (view0.rightAnchor - 5) == view1.rightAnchor,
                     normal: view1.rightAnchor.constraint(equalTo: view0.rightAnchor, constant: 0))
    }

    func testYAxisAnchors() {
        testEquality(simple: view0.topAnchor + 5 == view1.bottomAnchor - 8,
                     normal: view0.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: -13))

        testEquality(simple: 5 + view0.topAnchor == view1.bottomAnchor - 8,
                     normal: view0.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: -13))

        testEquality(simple: view0.topAnchor + 5 >= view1.bottomAnchor - 8,
                     normal: view0.topAnchor.constraint(greaterThanOrEqualTo: view1.bottomAnchor, constant: -13))

        testEquality(simple: view0.topAnchor + 5 <= view1.bottomAnchor - 8,
                     normal: view0.topAnchor.constraint(lessThanOrEqualTo: view1.bottomAnchor, constant: -13))

        testEquality(simple: view0.topAnchor == view1.topAnchor,
                     normal: view0.topAnchor.constraint(equalTo: view1.topAnchor))

        testEquality(simple: view0.bottomAnchor >= view1.bottomAnchor,
                     normal: view0.bottomAnchor.constraint(greaterThanOrEqualTo: view1.bottomAnchor))

        testEquality(simple: view0.bottomAnchor <= view1.bottomAnchor,
                     normal: view0.bottomAnchor.constraint(lessThanOrEqualTo: view1.bottomAnchor))

        testEquality(simple: view0.bottomAnchor + 5 <= view1.bottomAnchor,
                     normal: view1.bottomAnchor.constraint(greaterThanOrEqualTo: view0.bottomAnchor, constant: 5))

        testEquality(simple: view0.bottomAnchor + 5 >= view1.bottomAnchor,
                     normal: view1.bottomAnchor.constraint(lessThanOrEqualTo: view0.bottomAnchor, constant: 5))

        testEquality(simple: view0.bottomAnchor + 5 == view1.bottomAnchor,
                     normal: view1.bottomAnchor.constraint(equalTo: view0.bottomAnchor, constant: 5))

        testEquality(simple: (view0.bottomAnchor + 5) - 5 == view1.bottomAnchor,
                     normal: view1.bottomAnchor.constraint(equalTo: view0.bottomAnchor, constant: 0))

        testEquality(simple: (view0.bottomAnchor - 5) + 5 == view1.bottomAnchor,
                     normal: view1.bottomAnchor.constraint(equalTo: view0.bottomAnchor, constant: 0))

        testEquality(simple: 5 + (view0.bottomAnchor - 5) == view1.bottomAnchor,
                     normal: view1.bottomAnchor.constraint(equalTo: view0.bottomAnchor, constant: 0))
    }

    func testDimensions() {
        testEquality(simple: view0.heightAnchor == 5,
                     normal: view0.heightAnchor.constraint(equalToConstant: 5))

        testEquality(simple: view0.heightAnchor + 5 == 5,
                     normal: view0.heightAnchor.constraint(equalToConstant: 0))

        testEquality(simple: view0.heightAnchor - (-5) == view1.widthAnchor + 5,
                     normal: view0.heightAnchor.constraint(equalTo: view1.widthAnchor))

        testEquality(simple: -(view0.heightAnchor - (-5)) >= -(view1.widthAnchor + 5),
                     normal: view0.heightAnchor.constraint(greaterThanOrEqualTo: view1.widthAnchor))

        testEquality(simple: view0.heightAnchor - (-5) <= 5 + view1.widthAnchor,
                     normal: view0.heightAnchor.constraint(lessThanOrEqualTo: view1.widthAnchor))

        testEquality(simple: 4 == view0.widthAnchor,
                     normal: view0.widthAnchor.constraint(equalToConstant: 4))

        testEquality(simple: -3 >= view0.widthAnchor,
                     normal: view0.widthAnchor.constraint(lessThanOrEqualToConstant: -3))

        testEquality(simple: 8 <= view0.widthAnchor,
                     normal: view0.widthAnchor.constraint(greaterThanOrEqualToConstant: 8))

        testEquality(simple: 8 == (view0.widthAnchor / 3) + 2,
                     normal: view0.widthAnchor.constraint(equalToConstant: (8 - 2) * 3))

        testEquality(simple: 16 <= 2 * ((view0.widthAnchor / 3) + 2),
                     normal: view0.widthAnchor.constraint(greaterThanOrEqualToConstant: (8 - 2) * 3))

        testEquality(simple: 8 <= (((view0.widthAnchor / 3) + 2) / 0.5) - 8,
                     normal: view0.widthAnchor.constraint(greaterThanOrEqualToConstant: (8 - 2) * 3))

        testEquality(simple: 8 >= 2 + (view0.widthAnchor / 3),
                     normal: view0.widthAnchor.constraint(lessThanOrEqualToConstant: (8 - 2) * 3))

        testEquality(simple: view0.widthAnchor <= view1.widthAnchor,
                     normal: view0.widthAnchor.constraint(lessThanOrEqualTo: view1.widthAnchor))

        testEquality(simple: view0.widthAnchor >= view1.widthAnchor,
                     normal: view0.widthAnchor.constraint(greaterThanOrEqualTo: view1.widthAnchor))

        testEquality(simple: view0.widthAnchor == view1.widthAnchor,
                     normal: view0.widthAnchor.constraint(equalTo: view1.widthAnchor))

        testEquality(simple: 0 - view0.widthAnchor == -view1.widthAnchor,
                     normal: view0.widthAnchor.constraint(equalTo: view1.widthAnchor))

        testEquality(simple: 2 - (view0.widthAnchor + 2) == -view1.widthAnchor,
                     normal: view0.widthAnchor.constraint(equalTo: view1.widthAnchor))

        testEquality(simple: view0.widthAnchor == 0.5 * view1.widthAnchor,
                     normal: view1.widthAnchor.constraint(equalTo: view0.widthAnchor, multiplier: 2))

        testEquality(simple: view0.widthAnchor == (view1.widthAnchor * 0.5) - 5,
                     normal: view1.widthAnchor.constraint(equalTo: view0.widthAnchor, multiplier: 2, constant: 10))

        testEquality(simple: view0.widthAnchor >= (view1.widthAnchor * 0.5) - 5,
                     normal: view1.widthAnchor.constraint(lessThanOrEqualTo: view0.widthAnchor, multiplier: 2, constant: 10))

        testEquality(simple: view0.widthAnchor <= (view1.widthAnchor * 0.5) - 5,
                     normal: view1.widthAnchor.constraint(greaterThanOrEqualTo: view0.widthAnchor, multiplier: 2, constant: 10))
    }

    // MARK: - Helpers

    private func description(of constraint: NSLayoutConstraint) -> String {
        let subString = constraint
            .description
            .split(separator: " ")
            .dropFirst()
            .joined(separator: " ")
            .dropLast()

        return String(subString)
    }

    private func testEquality(simple: NSLayoutConstraint, normal: NSLayoutConstraint) {
        let simpleDescription = description(of: simple)
        let normalDescription = description(of: normal)

        print(simpleDescription)
        guard simpleDescription == normalDescription else {
            XCTAssertEqual(simpleDescription, normalDescription)
            return
        }

        simple.activate()
        XCTAssert(simple.isActive)
        simple.deactivate()
        XCTAssert(!simple.isActive)

        let enumeratedPriorities = [UILayoutPriority(999), .defaultLow, .defaultHigh, .defaultHigh]
            .shuffled()
            .enumerated()

        for (index, priority) in enumeratedPriorities {
            normal.priority = priority
            let simplePrioDescription = (index % 2 == 0)
                ? description(of: simple <* priority)
                : description(of: simple.priority(priority))
            let normalPrioDescription = description(of: normal)
            XCTAssertEqual(simplePrioDescription, normalPrioDescription)
        }
    }
}
