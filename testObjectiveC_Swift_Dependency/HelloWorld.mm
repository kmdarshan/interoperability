//
//  HelloWorld.m
//  testObjectiveC_Swift_Dependency
//
//  Created by katruman on 12/11/19.
//  Copyright © 2019 redflower. All rights reserved.
//

#include <iostream>
#include "HelloWorld.h"
#include "Hello.hpp"
using namespace std;
using namespace HelloNS;
int Hello::sayHello() {
	printf("say hello");
	HelloNS::printHelloNS();
	return 1;
}
