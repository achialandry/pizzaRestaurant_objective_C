//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-05-03.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import "Manager.h"

@implementation Manager



- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    [[self delegate]deliverPizza:pizza];
}

@end
