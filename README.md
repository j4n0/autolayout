![Swift](https://github.com/j4n0/autolayout/workflows/Swift/badge.svg?branch=master)

Autolayout library.
 
 ### Installation
 
 ```
 .package(url: "https://github.com/j4n0/autolayout.git", from: "1.0.0"),
 ```
 
 ### Usage
 
 ```swift
 view.al.pin()
 view.al.pinToLayoutMargins()
 view.al.pinToSafeArea()
 view.al.pinToReadableContent()
 
 view.al.pin(sides: [.leading, .trailing])
 view.al.pinToLayoutMargins(sides: [.top, .bottom])
 view.al.pinToSafeArea(sides: [.leading, .top, .trailing])
 view.al.pinToReadableContent(sides: [.top])
 
 view.al.set(width: 0)
 view.al.set(height: 0, priority: .defaultHigh)
 view.al.set(size: CGSize.zero)
 
 view.al.center()
 view.al.centerX()
 view.al.centerY()
 
 view.al.center(to: view2)
 view.al.centerX(to: view2)
 view.al.centerY(to: view2)
 
 // Enumerate all non nil views and apply the following Visual Format Language
 view.al.applyVFL([
     "H:[handle(36)]",
     "V:[handle(5)]"
 ])
 ```

All elements are contained in the 'al' namespace to avoid polluting the view class.

If you are looking for layout libraries [Align](https://github.com/kean/Align/blob/master/Sources/Align.swift) is more expressive BUT, if Apple breaks it tomorrow I don’t want to depend on a third party fixing it or waste time myself.
 Better to make it simple and repetitive, than adding convoluted indirections and lose control.
