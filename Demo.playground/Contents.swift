import PlaygroundSupport
import UIKit

import UIViewBorders

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
containerView.backgroundColor = .lightGray
let view = UIView(frame: CGRect(x: 200, y: 225, width: 100, height: 50))
view.backgroundColor = .white
containerView.addSubview(view)
view.addBorderViews(positions: [.top, .left], color: .red, width: 3)
PlaygroundPage.current.liveView = containerView
