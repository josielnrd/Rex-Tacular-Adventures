//
// BirdAnimationView.swift
// Generated by Core Animator version 1.3 on 8/4/16.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class BirdAnimationView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.setupHierarchy()
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.setupHierarchy()
	}

	// - MARK: Scaling

	override func layoutSubviews() {
		super.layoutSubviews()

		if let scalingView = self.viewsByName["__scaling__"] {
			var xScale = self.bounds.size.width / scalingView.bounds.size.width
			var yScale = self.bounds.size.height / scalingView.bounds.size.height
			switch contentMode {
			case .ScaleToFill:
				break
			case .ScaleAspectFill:
				let scale = max(xScale, yScale)
				xScale = scale
				yScale = scale
			default:
				let scale = min(xScale, yScale)
				xScale = scale
				yScale = scale
			}
			scalingView.transform = CGAffineTransformMakeScale(xScale, yScale)
			scalingView.center = CGPoint(x:CGRectGetMidX(self.bounds), y:CGRectGetMidY(self.bounds))
		}
	}

	// - MARK: Setup

	func setupHierarchy() {
		var viewsByName: [String : UIView] = [:]
		let bundle = NSBundle(forClass:self.dynamicType)
		let __scaling__ = UIView()
		__scaling__.bounds = CGRect(x:0, y:0, width:400, height:400)
		__scaling__.center = CGPoint(x:200.0, y:200.0)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let birdFoot = UIImageView()
		birdFoot.bounds = CGRect(x:0, y:0, width:10.0, height:26.0)
		var imgBirdFoot: UIImage!
		if let imagePath = bundle.pathForResource("BirdFoot.png", ofType:nil) {
			imgBirdFoot = UIImage(contentsOfFile:imagePath)
		}else {
			print("** Warning: Could not create image from 'BirdFoot.png'. Please make sure that it is added to the project directly (not in a folder reference).")
		}
		birdFoot.image = imgBirdFoot
		birdFoot.contentMode = .Center
		birdFoot.layer.position = CGPoint(x:184.197, y:332.819)
		birdFoot.transform = CGAffineTransformMakeScale(1.11, 1.11)
		__scaling__.addSubview(birdFoot)
		viewsByName["BirdFoot"] = birdFoot

		let birdFoot3 = UIImageView()
		birdFoot3.bounds = CGRect(x:0, y:0, width:10.0, height:26.0)
		birdFoot3.image = imgBirdFoot
		birdFoot3.contentMode = .Center
		birdFoot3.layer.position = CGPoint(x:205.585, y:332.515)
		birdFoot3.transform = CGAffineTransformMakeScale(1.11, 1.11)
		__scaling__.addSubview(birdFoot3)
		viewsByName["BirdFoot 3"] = birdFoot3

		let birdWing = UIImageView()
		birdWing.bounds = CGRect(x:0, y:0, width:126.0, height:168.0)
		var imgBirdWing: UIImage!
		if let imagePath = bundle.pathForResource("BirdWing.png", ofType:nil) {
			imgBirdWing = UIImage(contentsOfFile:imagePath)
		}else {
			print("** Warning: Could not create image from 'BirdWing.png'. Please make sure that it is added to the project directly (not in a folder reference).")
		}
		birdWing.image = imgBirdWing
		birdWing.contentMode = .Center
		birdWing.layer.position = CGPoint(x:170.253, y:212.300)
		__scaling__.addSubview(birdWing)
		viewsByName["BirdWing"] = birdWing

		let birdWingR = UIImageView()
		birdWingR.bounds = CGRect(x:0, y:0, width:126.0, height:168.0)
		birdWingR.image = imgBirdWing
		birdWingR.contentMode = .Center
		birdWingR.layer.position = CGPoint(x:224.272, y:214.300)
		__scaling__.addSubview(birdWingR)
		viewsByName["BirdWing R"] = birdWingR

		let birdBody = UIImageView()
		birdBody.bounds = CGRect(x:0, y:0, width:178.0, height:214.0)
		var imgBirdBody: UIImage!
		if let imagePath = bundle.pathForResource("BirdBody.png", ofType:nil) {
			imgBirdBody = UIImage(contentsOfFile:imagePath)
		}else {
			print("** Warning: Could not create image from 'BirdBody.png'. Please make sure that it is added to the project directly (not in a folder reference).")
		}
		birdBody.image = imgBirdBody
		birdBody.contentMode = .Center
		birdBody.layer.position = CGPoint(x:194.999, y:216.292)
		__scaling__.addSubview(birdBody)
		viewsByName["BirdBody"] = birdBody

		let head = UIView()
		head.bounds = CGRect(x:0, y:0, width:94.0, height:108.0)
		head.layer.position = CGPoint(x:195.102, y:81.422)
		__scaling__.addSubview(head)
		viewsByName["Head"] = head

		let birdHead = UIImageView()
		birdHead.bounds = CGRect(x:0, y:0, width:94.0, height:108.0)
		var imgBirdHead: UIImage!
		if let imagePath = bundle.pathForResource("BirdHead.png", ofType:nil) {
			imgBirdHead = UIImage(contentsOfFile:imagePath)
		}else {
			print("** Warning: Could not create image from 'BirdHead.png'. Please make sure that it is added to the project directly (not in a folder reference).")
		}
		birdHead.image = imgBirdHead
		birdHead.contentMode = .Center
		birdHead.layer.position = CGPoint(x:47.000, y:54.000)
		head.addSubview(birdHead)
		viewsByName["BirdHead"] = birdHead

		let eye = UIImageView()
		eye.bounds = CGRect(x:0, y:0, width:12.0, height:12.0)
		var imgEye: UIImage!
		if let imagePath = bundle.pathForResource("Eye.png", ofType:nil) {
			imgEye = UIImage(contentsOfFile:imagePath)
		}else {
			print("** Warning: Could not create image from 'Eye.png'. Please make sure that it is added to the project directly (not in a folder reference).")
		}
		eye.image = imgEye
		eye.contentMode = .Center
		eye.layer.position = CGPoint(x:57.128, y:44.373)
		eye.transform = CGAffineTransformMakeScale(0.78, 0.78)
		head.addSubview(eye)
		viewsByName["Eye"] = eye

		let eye2 = UIImageView()
		eye2.bounds = CGRect(x:0, y:0, width:12.0, height:12.0)
		eye2.image = imgEye
		eye2.contentMode = .Center
		eye2.layer.position = CGPoint(x:37.128, y:44.373)
		eye2.transform = CGAffineTransformMakeScale(0.78, 0.78)
		head.addSubview(eye2)
		viewsByName["Eye 2"] = eye2

		self.viewsByName = viewsByName
	}

	// - MARK: Bob

	func addBobAnimation() {
		addBobAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addBobAnimation(completion: ((Bool) -> Void)?) {
		addBobAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addBobAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addBobAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addBobAnimation(removedOnCompletion removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addBobAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addBobAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let overshootTiming = CAMediaTimingFunction(controlPoints: 0.00, 0.00, 0.58, 1.30)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 4.550
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Bob")
			self.animationCompletions[layer.animationForKey("Bob")!] = complete
		}

		let birdWingTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		birdWingTranslationXAnimation.duration = 4.550
		birdWingTranslationXAnimation.values = [0.000 as Float, 4.252 as Float, 9.000 as Float, 1.439 as Float, 0.000 as Float]
		birdWingTranslationXAnimation.keyTimes = [0.000 as Float, 0.358 as Float, 0.440 as Float, 0.537 as Float, 1.000 as Float]
		birdWingTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		birdWingTranslationXAnimation.repeatCount = HUGE
		birdWingTranslationXAnimation.beginTime = beginTime
		birdWingTranslationXAnimation.fillMode = fillMode
		birdWingTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BirdWing"]?.layer.addAnimation(birdWingTranslationXAnimation, forKey:"Bob_TranslationX")

		let birdWingTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		birdWingTranslationYAnimation.duration = 3.000
		birdWingTranslationYAnimation.values = [0.000 as Float, -3.000 as Float, 2.000 as Float, 0.000 as Float]
		birdWingTranslationYAnimation.keyTimes = [0.000 as Float, 0.464 as Float, 0.867 as Float, 1.000 as Float]
		birdWingTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		birdWingTranslationYAnimation.repeatCount = HUGE
		birdWingTranslationYAnimation.beginTime = beginTime
		birdWingTranslationYAnimation.fillMode = fillMode
		birdWingTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BirdWing"]?.layer.addAnimation(birdWingTranslationYAnimation, forKey:"Bob_TranslationY")

		let headRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		headRotationAnimation.duration = 4.550
		headRotationAnimation.values = [0.000 as Float, -0.026 as Float, -0.061 as Float, 0.023 as Float, -0.010 as Float, -0.070 as Float, -0.006 as Float, -0.007 as Float]
		headRotationAnimation.keyTimes = [0.000 as Float, 0.132 as Float, 0.154 as Float, 0.176 as Float, 0.630 as Float, 0.648 as Float, 0.714 as Float, 1.000 as Float]
		headRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		headRotationAnimation.repeatCount = HUGE
		headRotationAnimation.beginTime = beginTime
		headRotationAnimation.fillMode = fillMode
		headRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Head"]?.layer.addAnimation(headRotationAnimation, forKey:"Bob_Rotation")

		let headTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		headTranslationXAnimation.duration = 4.550
		headTranslationXAnimation.values = [0.000 as Float, 0.101 as Float, -1.000 as Float, -1.000 as Float]
		headTranslationXAnimation.keyTimes = [0.000 as Float, 0.415 as Float, 0.461 as Float, 1.000 as Float]
		headTranslationXAnimation.timingFunctions = [linearTiming, overshootTiming, linearTiming]
		headTranslationXAnimation.beginTime = beginTime
		headTranslationXAnimation.fillMode = fillMode
		headTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Head"]?.layer.addAnimation(headTranslationXAnimation, forKey:"Bob_TranslationX")

		let headTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		headTranslationYAnimation.duration = 2.900
		headTranslationYAnimation.values = [0.736 as Float, -2.836 as Float, 5.678 as Float, 0.736 as Float]
		headTranslationYAnimation.keyTimes = [0.000 as Float, 0.328 as Float, 0.862 as Float, 1.000 as Float]
		headTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		headTranslationYAnimation.repeatCount = HUGE
		headTranslationYAnimation.beginTime = beginTime
		headTranslationYAnimation.fillMode = fillMode
		headTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Head"]?.layer.addAnimation(headTranslationYAnimation, forKey:"Bob_TranslationY")

		let birdWingRTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		birdWingRTranslationXAnimation.duration = 4.550
		birdWingRTranslationXAnimation.values = [0.000 as Float, 4.000 as Float, 4.847 as Float, 5.937 as Float, 0.878 as Float, 0.000 as Float]
		birdWingRTranslationXAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.429 as Float, 0.461 as Float, 0.571 as Float, 1.000 as Float]
		birdWingRTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		birdWingRTranslationXAnimation.repeatCount = HUGE
		birdWingRTranslationXAnimation.beginTime = beginTime
		birdWingRTranslationXAnimation.fillMode = fillMode
		birdWingRTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BirdWing R"]?.layer.addAnimation(birdWingRTranslationXAnimation, forKey:"Bob_TranslationX")

		let birdWingRTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		birdWingRTranslationYAnimation.duration = 3.000
		birdWingRTranslationYAnimation.values = [0.000 as Float, -3.000 as Float, -0.272 as Float, 2.000 as Float, 0.000 as Float]
		birdWingRTranslationYAnimation.keyTimes = [0.000 as Float, 0.667 as Float, 0.716 as Float, 0.867 as Float, 1.000 as Float]
		birdWingRTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		birdWingRTranslationYAnimation.repeatCount = HUGE
		birdWingRTranslationYAnimation.beginTime = beginTime
		birdWingRTranslationYAnimation.fillMode = fillMode
		birdWingRTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BirdWing R"]?.layer.addAnimation(birdWingRTranslationYAnimation, forKey:"Bob_TranslationY")

		let birdBodyTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		birdBodyTranslationXAnimation.duration = 4.550
		birdBodyTranslationXAnimation.values = [0.000 as Float, 1.411 as Float, 2.067 as Float, -0.334 as Float, 1.000 as Float]
		birdBodyTranslationXAnimation.keyTimes = [0.000 as Float, 0.411 as Float, 0.473 as Float, 0.578 as Float, 1.000 as Float]
		birdBodyTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		birdBodyTranslationXAnimation.repeatCount = HUGE
		birdBodyTranslationXAnimation.beginTime = beginTime
		birdBodyTranslationXAnimation.fillMode = fillMode
		birdBodyTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BirdBody"]?.layer.addAnimation(birdBodyTranslationXAnimation, forKey:"Bob_TranslationX")

		let birdBodyTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		birdBodyTranslationYAnimation.duration = 3.000
		birdBodyTranslationYAnimation.values = [0.000 as Float, -3.000 as Float, 1.308 as Float, 0.000 as Float]
		birdBodyTranslationYAnimation.keyTimes = [0.000 as Float, 0.433 as Float, 0.810 as Float, 1.000 as Float]
		birdBodyTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		birdBodyTranslationYAnimation.repeatCount = HUGE
		birdBodyTranslationYAnimation.beginTime = beginTime
		birdBodyTranslationYAnimation.fillMode = fillMode
		birdBodyTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BirdBody"]?.layer.addAnimation(birdBodyTranslationYAnimation, forKey:"Bob_TranslationY")
	}

	func removeBobAnimation() {
		self.layer.removeAnimationForKey("Bob")
		self.viewsByName["BirdWing"]?.layer.removeAnimationForKey("Bob_TranslationX")
		self.viewsByName["BirdWing"]?.layer.removeAnimationForKey("Bob_TranslationY")
		self.viewsByName["Head"]?.layer.removeAnimationForKey("Bob_Rotation")
		self.viewsByName["Head"]?.layer.removeAnimationForKey("Bob_TranslationX")
		self.viewsByName["Head"]?.layer.removeAnimationForKey("Bob_TranslationY")
		self.viewsByName["BirdWing R"]?.layer.removeAnimationForKey("Bob_TranslationX")
		self.viewsByName["BirdWing R"]?.layer.removeAnimationForKey("Bob_TranslationY")
		self.viewsByName["BirdBody"]?.layer.removeAnimationForKey("Bob_TranslationX")
		self.viewsByName["BirdBody"]?.layer.removeAnimationForKey("Bob_TranslationY")
	}

	// - MARK: HeadBob

	func addHeadBobAnimation() {
		addHeadBobAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addHeadBobAnimation(completion: ((Bool) -> Void)?) {
		addHeadBobAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addHeadBobAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addHeadBobAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addHeadBobAnimation(removedOnCompletion removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addHeadBobAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addHeadBobAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		let easeOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
		let overshootTiming = CAMediaTimingFunction(controlPoints: 0.00, 0.00, 0.58, 1.30)
		let easeInTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 3.600
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "HeadBob")
			self.animationCompletions[layer.animationForKey("HeadBob")!] = complete
		}

		let headRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		headRotationAnimation.duration = 3.600
		headRotationAnimation.values = [0.000 as Float, -0.009 as Float, -0.103 as Float, -0.022 as Float, -0.022 as Float]
		headRotationAnimation.keyTimes = [0.000 as Float, 0.153 as Float, 0.486 as Float, 0.903 as Float, 1.000 as Float]
		headRotationAnimation.timingFunctions = [easeInOutTiming, easeOutTiming, easeInOutTiming, linearTiming]
		headRotationAnimation.beginTime = beginTime
		headRotationAnimation.fillMode = fillMode
		headRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Head"]?.layer.addAnimation(headRotationAnimation, forKey:"HeadBob_Rotation")

		let headTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		headTranslationXAnimation.duration = 3.600
		headTranslationXAnimation.values = [0.000 as Float, -1.000 as Float, 1.000 as Float, -1.000 as Float]
		headTranslationXAnimation.keyTimes = [0.000 as Float, 0.278 as Float, 0.528 as Float, 1.000 as Float]
		headTranslationXAnimation.timingFunctions = [overshootTiming, easeOutTiming, overshootTiming]
		headTranslationXAnimation.beginTime = beginTime
		headTranslationXAnimation.fillMode = fillMode
		headTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Head"]?.layer.addAnimation(headTranslationXAnimation, forKey:"HeadBob_TranslationX")

		let headTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		headTranslationYAnimation.duration = 3.600
		headTranslationYAnimation.values = [0.000 as Float, 3.000 as Float, 2.000 as Float, 0.000 as Float, 0.000 as Float]
		headTranslationYAnimation.keyTimes = [0.000 as Float, 0.278 as Float, 0.528 as Float, 0.861 as Float, 1.000 as Float]
		headTranslationYAnimation.timingFunctions = [easeInTiming, easeInTiming, overshootTiming, linearTiming]
		headTranslationYAnimation.beginTime = beginTime
		headTranslationYAnimation.fillMode = fillMode
		headTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Head"]?.layer.addAnimation(headTranslationYAnimation, forKey:"HeadBob_TranslationY")
	}

	func removeHeadBobAnimation() {
		self.layer.removeAnimationForKey("HeadBob")
		self.viewsByName["Head"]?.layer.removeAnimationForKey("HeadBob_Rotation")
		self.viewsByName["Head"]?.layer.removeAnimationForKey("HeadBob_TranslationX")
		self.viewsByName["Head"]?.layer.removeAnimationForKey("HeadBob_TranslationY")
	}

	override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValueForKey(anim)
			completion(flag)
		}
	}

	func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
		self.layer.removeAnimationForKey("Bob")
		self.layer.removeAnimationForKey("HeadBob")
	}
}