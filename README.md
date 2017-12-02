# UIViewBorders

![Swift version](https://img.shields.io/badge/swift-4.0-orange.svg)
![CocoaPods compatible](https://cocoapod-badges.herokuapp.com/v/UIViewBorders/badge.png)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


UIView extension for drawing borders

## Usage
[Example](https://github.com/morishin/UIViewBorders/tree/master/Demo.playground)
```swift
let view = UIView(frame: CGRect(x: 200, y: 225, width: 100, height: 50))
view.addBorderViews(positions: [.top, .left], color: .red, width: 3)
```

<img width="400" alt="2017-12-03 1 13 44" src="https://user-images.githubusercontent.com/1413408/33517411-4163cb66-d7c7-11e7-949c-df8f26290288.png">

## Installation
### Carthage
Cartfile

```
github "morishin/UIViewBorders"
```

### CocoaPods
Podfile

```ruby
pod 'UIViewBorders'
```

## LICENSE
MIT
