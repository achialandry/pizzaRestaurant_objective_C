//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-05-02.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Manager.h"
@class DeliveryService;

@protocol DeliveryServiceDelegate <NSObject>
-(void)deliverPizza:(Pizza *)pizza;
@end

@interface DeliveryService : NSObject <ManagerDelegate>

@property (nonatomic, weak) id <DeliveryServiceDelegate> delegate;
@property NSMutableArray* pizzas;

-(void)pizzaDescriptionDelivered;

@end
