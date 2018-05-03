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
#import "Manager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        
        //initializing Manager
        Manager *manager;
        
        //initializing the Delivery Service
        DeliveryService *deliveryService;
        
        //initializing the delivery car
        DeliveryCar *deliveryCar;
        
        //Instantiating manager one
        ManagerOne *managerOne;
        
        //Instantiating manager two
        ManagerTwo *managerTwo;
        
        
        NSLog(@"\nPlease\n Type: 1 for ManagerOne\n Type: 2  for ManagerTwo \nOr\n->Type 3 for MANAGER");
        
        char choice[100];
        fgets (choice, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:choice];
        NSString *userDesiredManager = [inputString
                                         stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        NSInteger userChoice = [userDesiredManager integerValue];
        
        switch (userChoice) {
            case 1:
                if (managerOne == nil) {
                    managerOne = [ManagerOne new];
                }
                [restaurantKitchen setDelegate:managerOne];
                break;
            case 2:
                if (managerTwo == nil) {
                    managerTwo = [ManagerTwo new];
                }
                [restaurantKitchen setDelegate:managerTwo];
                break;
            case 3:
                if (manager == nil) {
                    manager = [Manager new];
                }
            
                [restaurantKitchen setDelegate:manager];
                break;
            default:
                break;
        }
        
        deliveryService = [DeliveryService new];
        deliveryCar = [DeliveryCar new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            [manager setDelegate:deliveryService];
            
            
            
            [deliveryService setDelegate:deliveryCar];
            
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
            
            
            
            
            
            
            [deliveryService pizzaDescriptionDelivered];
            
            
            
        }
        
    
    }
    return 0;
}
