//
//  main.m
//  PizzaRestaurant
//
//  Created by Landry Achia Ndong on 2018-04-29.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "ManagerOne.h"
#import "ManagerTwo.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        //Instantiating manager one
        ManagerOne *managerOne = [ManagerOne new];
        
        //Instantiating manager two
        ManagerTwo *managerTwo = [ManagerTwo new];
        NSLog(@"\nPlease\n Type: 1 for ManagerOne\n Type: 2  for ManagerTwo \nOr\n->HIT ENTER to proceed without choosing a manager");
        
        char choice[100];
        fgets (choice, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:choice];
        NSString *userDesiredManager = [inputString
                                         stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        NSInteger userChoice = [userDesiredManager integerValue];
        
        switch (userChoice) {
            case 1:
                [restaurantKitchen setDelegate:managerOne];
                break;
            case 2:
                [restaurantKitchen setDelegate:managerTwo];
                break;
            default:
                break;
        }
              
        
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
            NSString *meat = @"meat";
            [commandMutableArray removeObjectAtIndex:0];
            PizzaSize size = [Pizza pizzaSize:pizzaSize];
            
           
            
            if ([pizzaSize isEqualToString:@"pepperonni"]) {
                [restaurantKitchen makelargePepperoni];
            }else if ([commandMutableArray containsObject:meat]){
                NSLog(@"Size: %@", pizzaSize);
                [restaurantKitchen meatLoverWithSize:size];
            }else{
                NSLog(@"Size: %@", pizzaSize);
                [restaurantKitchen makePizzaWithSize:size toppings:commandMutableArray];
            }
            
        }
        
    
    }
    return 0;
}
