//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-05-03.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
@class Manager;

/*Defining Manager protocol*/
@protocol ManagerDelegate <NSObject>
-(void)deliverPizza:(Pizza*)pizza;
@end

@interface Manager : NSObject <KitchenDelegate>
@property (nonatomic, weak) id <ManagerDelegate> delegate;

@end
