//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-05-02.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService
-(void)deliverPizza:(Pizza *)pizza{
    [[self delegate]deliverPizza:pizza];
    
    //adding object to pizza array
    [self.pizzas addObject:pizza];
    
}
-(void)pizzaDescriptionDelivered{
    for (int i = 0; i < [self.pizzas count]; i++) {
        NSLog(@"%@",self.pizzas[i]);
        
    }
}
@end
