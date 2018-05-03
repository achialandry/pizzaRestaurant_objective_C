//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-04-30.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject
//enum for the pizza sizes
typedef NS_ENUM(NSInteger, PizzaSize) {
    small=0,
    medium,
    large
};

# pragma mark - Public properties
//property to handle the topings on pizza
@property NSArray *toppings;
@property (assign) PizzaSize size;
@property int pizzaTrack;

# pragma mark - Public methods
-(instancetype) initPizzaWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;
+(Pizza *)largePepperoni;
+(Pizza *)meatLoverWithSize:(PizzaSize)size;
+(PizzaSize)pizzaSize:(NSString *)size;
-(NSArray *)allPizzaDetails:(PizzaSize)size toppings:(NSArray *)toppings;


@end
