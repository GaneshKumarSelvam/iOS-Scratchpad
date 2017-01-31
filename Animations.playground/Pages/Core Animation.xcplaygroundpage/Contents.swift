//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import QuartzCore

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 800.0, height: 540.0))
containerView.backgroundColor = UIColor.white
PlaygroundPage.current.liveView = containerView

let animationViewLinear = UIView(frame: CGRect(x: 10.0, y: 0.0, width: 100, height: 100))
animationViewLinear.backgroundColor = UIColor.red
let labelLinear = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
labelLinear.text = "Linear"
labelLinear.textAlignment = .center
animationViewLinear.addSubview(labelLinear)
containerView.addSubview(animationViewLinear)

let animationViewEaseIn = UIView(frame: CGRect(x: 10.0, y: 110.0, width: 100, height: 100))
animationViewEaseIn.backgroundColor = UIColor.red
let labelEaseIn = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
labelEaseIn.text = "EaseIn"
labelEaseIn.textAlignment = .center
animationViewEaseIn.addSubview(labelEaseIn)
containerView.addSubview(animationViewEaseIn)

let animationViewEaseOut = UIView(frame: CGRect(x: 10.0, y: 220.0, width: 100, height: 100))
animationViewEaseOut.backgroundColor = UIColor.red
let labelEaseOut = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
labelEaseOut.text = "EaseOut"
labelEaseOut.textAlignment = .center
animationViewEaseOut.addSubview(labelEaseOut)
containerView.addSubview(animationViewEaseOut)

let animationViewEaseInEaseOut = UIView(frame: CGRect(x: 10.0, y: 330.0, width: 100, height: 100))
animationViewEaseInEaseOut.backgroundColor = UIColor.red
let labelEaseInEaseOut = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
labelEaseInEaseOut.numberOfLines = 2
labelEaseInEaseOut.text = "EaseIn\nEaseOut"
labelEaseInEaseOut.textAlignment = .center
animationViewEaseInEaseOut.addSubview(labelEaseInEaseOut)
containerView.addSubview(animationViewEaseInEaseOut)

let animationViewDefault = UIView(frame: CGRect(x: 10.0, y: 440.0, width: 100, height: 100))
animationViewDefault.backgroundColor = UIColor.red
let labelDefault = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
labelDefault.text = "Default"
labelDefault.textAlignment = .center
animationViewDefault.addSubview(labelDefault)
containerView.addSubview(animationViewDefault)

let animation = CABasicAnimation(keyPath: "basic")
animation.keyPath = "position.x"
animation.fromValue = 0.0
animation.toValue = 700.0
animation.duration = 5.0
animation.isRemovedOnCompletion = true
animation.repeatCount = 10

animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
animationViewLinear.layer.add(animation, forKey: "basic")

animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
animationViewEaseIn.layer.add(animation, forKey: "basic")

animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
animationViewEaseOut.layer.add(animation, forKey: "basic")

animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
animationViewEaseInEaseOut.layer.add(animation, forKey: "basic")

animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
animationViewDefault.layer.add(animation, forKey: "basic")

//: [Next](@next)
