//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-05-02.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryService.h"

@interface DeliveryCar : NSObject<DeliveryServiceDelegate>
-(void)deliverPizza:(Pizza *)pizza;
@end
