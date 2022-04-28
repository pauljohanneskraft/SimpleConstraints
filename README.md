![SimpleConstraints](https://user-images.githubusercontent.com/15239005/165653044-f921aed7-6a59-46fc-95dd-c9cab3a1bf73.png)

# SimpleConstraints

[![Version](https://img.shields.io/cocoapods/v/SimpleConstraints.svg?style=flat)](https://cocoapods.org/pods/SimpleConstraints)
[![Platform](https://img.shields.io/cocoapods/p/SimpleConstraints.svg?style=flat)](https://cocoapods.org/pods/SimpleConstraints)
[![License](https://img.shields.io/cocoapods/l/SimpleConstraints.svg?style=flat)](https://github.com/pauljohanneskraft/SimpleConstraints/blob/master/LICENSE)

Constraints have been hard to create in code for a long time. The default UIKit way would be the following:

```swift
let viewA = UIView()
let viewB = UIView()

# Before iOS 9

let constraint = NSLayoutConstraint(item: viewA, attribute: .top, relatedBy: .equal, toItem: viewB, attribute: .bottom, multiplier: 1, constant: 0)

# After iOS 9

let constraint = viewA.topAnchor.constraint(equalTo: viewB.bottomAnchor)
```

While layout anchors made the creation a lot easier, it is still not as intuitive as it could be. Introducing: SimpleConstraints.

With SimpleConstraints, you can create NSLayoutConstraints like mathematical equations as in the following:

```swift
let viewA = UIView()
let viewB = UIView()

let constraint = viewA.heightAnchor * 5 - 3 <= viewB.widthAnchor + 25
```

With many operator overloads, some UIView-extensions for most commonly used constraints and also NSLayoutConstraint-extensions, 
SimpleConstraints is designed to simplify the handling of UI without the need of storyboards or .xib-files. 

## Installation

SimpleConstraints is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SimpleConstraints'
```

## Author

[pauljohanneskraft](https://github.com/pauljohanneskraft)

## License

SimpleConstraints is available under the MIT license. See the LICENSE file for more info.
