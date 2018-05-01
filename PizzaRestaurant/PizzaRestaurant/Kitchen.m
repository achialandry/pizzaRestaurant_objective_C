//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"


@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *p = [[Pizza alloc] initPizzaWithSize:size andToppings:toppings];
    NSLog(@" topping: %@", toppings);
    return p;
}

- (Pizza *)makelargePepperoni{
    Pizza *pepperoni = [Pizza new];
    pepperoni = [Pizza largePepperoni];
    return pepperoni;
}

- (Pizza *)meatLoverWithSize:(PizzaSize)size{
    Pizza *meatPizza = [Pizza new];
    meatPizza = [Pizza meatLoverWithSize:size];
    return meatPizza;
}

@end
