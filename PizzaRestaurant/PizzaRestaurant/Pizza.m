//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-04-30.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
-(instancetype)initPizzaWithSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    self = [super init];
    if (self) {
        self.size = size;
        self.toppings = toppings;
    }
    return self;
}
+(Pizza *)largePepperoni{
    NSArray *pepperoni = @[@"pepperooni"];
    Pizza *pizza = [[Pizza alloc] initPizzaWithSize:large andToppings:pepperoni];
    NSLog(@"Size: large, Topings: %@", pepperoni);
    return pizza;
}

+(Pizza *)meatLoverWithSize:(PizzaSize)size{
    
    NSArray *meatLoverToppings = @[@"meat", @"cheese", @"mushrooms", @"pinneaples"];
    
    Pizza *pizza  = [[Pizza alloc] initPizzaWithSize:size andToppings:meatLoverToppings];
    NSLog(@"Topings: %@",  meatLoverToppings);
    return pizza;
}

+(PizzaSize)pizzaSize:(NSString *)size{

    PizzaSize pizzaSize;
    
    if ([size isEqualToString:@"small"]) {
        pizzaSize = small;
    } else if ([size isEqualToString:@"medium"]){
        pizzaSize = medium;
    }else {
        pizzaSize = large;
    }
    
    return pizzaSize;
}

-(NSString *)allPizzaDetails:(PizzaSize)size toppings:(NSArray *)toppings{
    NSString *sizeOfPizza;
    if (size == small) {
        sizeOfPizza = @"small";
    }else if(size == medium){
        sizeOfPizza = @"medium";
    }else if (size == large){
        sizeOfPizza = @"large";
    }
    
    NSString *myToppings;
    NSString *result;
    
    myToppings = [toppings componentsJoinedByString:@"  ,"];
    
    result = [NSString stringWithFormat:@"size: %@, topping: %@", sizeOfPizza, myToppings];
    return result;
}


@end
