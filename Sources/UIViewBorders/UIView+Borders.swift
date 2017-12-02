import UIKit

public struct Positions: OptionSet {
    public var rawValue: Int
    public init(rawValue: Int) { self.rawValue = rawValue }
    public static let top = Positions(rawValue: 1 << 0)
    public static let left = Positions(rawValue: 1 << 1)
    public static let bottom = Positions(rawValue: 1 << 2)
    public static let right = Positions(rawValue: 1 << 3)
}

extension UIView {
    public func addBorderViews(positions: Positions, color: UIColor = .black, width: CGFloat = 1.0) {
        if positions.contains(.top) {
            let borderView = UIView()
            borderView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(borderView)
            borderView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            borderView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
            borderView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
            borderView.heightAnchor.constraint(equalToConstant: width).isActive = true
            borderView.backgroundColor = color
        }
        if positions.contains(.left) {
            let borderView = UIView()
            borderView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(borderView)
            borderView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
            borderView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            borderView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            borderView.widthAnchor.constraint(equalToConstant: width).isActive = true
            borderView.backgroundColor = color
        }
        if positions.contains(.bottom) {
            let borderView = UIView()
            borderView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(borderView)
            borderView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            borderView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
            borderView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
            borderView.heightAnchor.constraint(equalToConstant: width).isActive = true
            borderView.backgroundColor = color
        }
        if positions.contains(.right) {
            let borderView = UIView()
            borderView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(borderView)
            borderView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
            borderView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            borderView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            borderView.widthAnchor.constraint(equalToConstant: width).isActive = true
            borderView.backgroundColor = color
        }
    }
}
