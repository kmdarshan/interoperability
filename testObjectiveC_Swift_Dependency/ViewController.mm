//
//  ViewController.m
//  testObjectiveC_Swift_Dependency
//
//  Created by katruman on 12/11/19.
//  Copyright © 2019 redflower. All rights reserved.
//

#import "ViewController.h"
#import "testObjectiveC_Swift_Dependency-Swift.h"
#include "HelloWorld.h"
#include "Hello.hpp"
using namespace HelloNS;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
//	swiftvc1* vc1 = [[swiftvc1 alloc] init];
//	[self addChildViewController:controller];
//	[self.view addSubview:controller.view];
//	[controller didMoveToParentViewController:self];
	
}

-(void)viewDidAppear:(BOOL)animated {
	
	Hello* hello = new Hello();
	int price = hello->sayHello();
	
	swiftvc* vc = [swiftvc new];
	[vc printHelloWithControlPrice:price challengerPrice:499];

	UIViewController* controller = [vc loadSwiftUI];
	[self presentViewController:controller animated:YES completion:^{
		NSLog(@"presented");
	}];
}

-(void) buyChallenger {
	NSLog(@"buychallenger");
}

-(void) buyControl {
	NSLog(@"buyControl");
}

@end
