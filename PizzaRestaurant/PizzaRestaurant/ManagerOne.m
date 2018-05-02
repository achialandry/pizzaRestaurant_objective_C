//
//  ManagerOne.m
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-05-02.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import "ManagerOne.h"


@implementation ManagerOne


- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        NSLog(@"Sorry we can't make any pizza");
        return NO;
    }else{
        //[kitchen makePizzaWithSize:size toppings:toppings];
        return YES;	
    }
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end
