//
//  ManagerTwo.m
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-05-02.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import "ManagerTwo.h"

@implementation ManagerTwo

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    NSLog(@"HERE SIR/MA'AM YOUR PIZZA IS READY, FOR HERE OR TO GO? ");
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

@end
