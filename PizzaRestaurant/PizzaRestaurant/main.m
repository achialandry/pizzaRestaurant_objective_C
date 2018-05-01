//
//  main.m
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-04-29.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSMutableArray *commandMutableArray = [commandWords mutableCopy];
            NSString *pizzaSize = commandWords[0];
            [commandMutableArray removeObjectAtIndex:0];
            PizzaSize size = [Pizza pizzaSize:pizzaSize];
            
            
            if ([pizzaSize isEqualToString:@"pepperonni"]) {
                [restaurantKitchen makelargePepperoni];
            }else if ([pizzaSize isEqualToString:@"meat"]){
                [restaurantKitchen meatLoverWithSize:size];
            }else{
                [restaurantKitchen makePizzaWithSize:size toppings:commandMutableArray];
            }
            
        }
        
    
    }
    return 0;
}
