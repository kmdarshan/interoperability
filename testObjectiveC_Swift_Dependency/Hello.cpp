//
//  Hello.cpp
//  testObjectiveC_Swift_Dependency
//
//  Created by katruman on 12/12/19.
//  Copyright © 2019 redflower. All rights reserved.
//

#include "Hello.hpp"
static void printHello();
namespace HelloNS {
	void printHelloNS()
	{
		printf("hello from NS");
	}
}
