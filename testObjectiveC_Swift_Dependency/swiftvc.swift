//
//  swiftvc.swift
//  testObjectiveC_Swift_Dependency
//
//  Created by katruman on 12/11/19.
//  Copyright © 2019 redflower. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class swiftvc : NSObject {
	var priceFor499 = 0
	var priceFor999 = 0
	func returnClassInstance() -> Self {
		return self
	}
	@objc func printHello(controlPrice : Int, challengerPrice: Int) -> Void{
		self.priceFor499 = challengerPrice
		self.priceFor999 = controlPrice
		print("swiftvc printHello ", controlPrice, " challenger ", challengerPrice)
	}
	@objc func loadSwiftUI() -> UIViewController {
		let ux = ContentView(challengerPrice: self.priceFor499, controlPrice: self.priceFor999)
		return UIHostingController(rootView: ux)
	}
	
	func challengerIsCalled() {
		print("challenger is called")
		let vc : ViewController = ViewController()
		vc.buyChallenger()
	}
	
	func controlIsCalled() {
		print("control is called")
		let vc : ViewController = ViewController()
		vc.buyControl()
	}
	@objc override init() {
		print("hello init in swiftvc")
	}
}

class swiftvc1 : UIViewController {
	override func viewDidLoad() {
		print("test view controller")
		let label = UILabel(frame: self.view.frame)
		self.view .addSubview(label)
		label.text = "darshan"
	}
}
