//
//  ContentView.swift
//  testswiftui
//
//  Created by darshan on 10/29/19.
//  Copyright © 2019 darshan. All rights reserved.
//

import SwiftUI
import MapKit
struct ContentView: View {
	var challengerPrice : Int = 0
	var controlPrice : Int = 0
	@State var phoneOnlyViewBorderColor = Color.black
	@State var allPlatformsViewBorderColor = Color.black
	
	init(challengerPrice : Int, controlPrice : Int) {
		self.challengerPrice = challengerPrice
		self.controlPrice = controlPrice
	}
	
    var body: some View {
		GeometryReader { metrics in
				VStack {
					Image("purchasePhone")
					.resizable()
					.aspectRatio(contentMode: .fit)
					VStack {
						Text("Upgrade Premiere Rush")
						Text("Share videos with Unlimited Exports")
						Text("Access Spark and more")
					}
					HStack(alignment: .center, spacing: 5) {
						phoneOnlyView(self.challengerPrice)
					.background(Rectangle())
					.foregroundColor(Color.clear)
							.padding(.init(top: 0, leading: 10, bottom: 0, trailing: 0))
					.overlay(
						Rectangle()
							.strokeBorder(
								style: StrokeStyle(
									lineWidth: 2
								)
							)
							.foregroundColor(.gray)
					)
					.contentShape(Rectangle())
					.onTapGesture {
						print("Show details for Enterprise")
						let vc = swiftvc()
						vc.challengerIsCalled()
					}
					allPlatformsView(self.controlPrice)
						.padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
					.contentShape(Rectangle())
					.onTapGesture {
						print("Show details for all platforms")
						let vc = swiftvc()
						vc.controlIsCalled()
					}
					.background(Rectangle())
					.foregroundColor(Color.clear)
					.overlay(
						Rectangle()
							.strokeBorder(
								style: StrokeStyle(
									lineWidth: 2
								)
							)
							.foregroundColor(.gray)
					)
				}
			} .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.clear)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(challengerPrice: 0, controlPrice: 0)
    }
}

struct phoneOnlyView: View {
	var price : Int = 0
	init(_ price : Int) {
		self.price = price
	}
	var body: some View {
		VStack(alignment: .center, spacing: 0) {
			Text("Phone Only")
				.font(.title)
				.foregroundColor(Color.black)
			Text(String(self.price)+String("/mo"))
				.font(.subheadline)
				.foregroundColor(Color.gray)
			Text("Edit on the go")
				.fontWeight(.bold)
				.foregroundColor(Color.black)
			Text("Use Rush on iPhone and Android phones")
				.font(.subheadline)
				.foregroundColor(Color.black)
				.multilineTextAlignment(.center)
		}
		.padding(0)
		.frame(width: .none, height: 180, alignment: .top)
	}
}

struct allPlatformsView: View {
	var price : Int = 0
	init(_ price : Int) {
		self.price = price
	}
	var body: some View {
		VStack {
			Text("All platforms")
				.font(.title)
				.foregroundColor(Color.black)
			Text(String(self.price)+String("/mo"))
				.font(.subheadline)
				.foregroundColor(Color.gray)
			Text("Edit on any device")
				.fontWeight(.bold)
				.foregroundColor(Color.black)
			Text("Sync across phone, tablet, and desktop with 100 GB of storage")
				.font(.subheadline)
				.foregroundColor(Color.black)
				.multilineTextAlignment(.center)
		}
		.padding(0)
		.frame(width: .none, height: 180, alignment: .top)
	}
}

struct testView: View {
    var body: some View {
        GeometryReader { metrics in
            VStack(spacing: 0) {
                Color.red.frame(height: metrics.size.height * 0.43)
                Color.green.frame(height: metrics.size.height * 0.37)
                Color.yellow
            }
        }
    }
}
