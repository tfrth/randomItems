//
//  main.m
//  RandomItems
//
//  Created by Tyler Frith on 9/3/15.
//  Copyright (c) 2015 tfrth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //create a mutable array object, store its addresses in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        //send the message addObject: to the NSMutableArray pointed to by the variable items, passing a string each time
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        [items addObject:@"four"];
        
        //send another message, insertObject:atIndex, to the same array object
        [items insertObject:@"zero" atIndex:0];
        
        //for every item in the items array ...
        for (NSString *item in items) {
            //log description of item
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc]init];
        
        //this creates NSString, "red sofa" and gives it to the BNRItem
//        [item setItemName:@"red sofa"];
        item.itemName=@"red sofa";
        
        //this creates NSString, "a12bc" and gives it to the BNRItem
//        [item setSerialNumber:@"a12bc"];
        item.serialNumber=@"a12bc";
        
        //this sends value of 100 to be used as the valueInDollars of this BNRItem
//        [item setValueInDollars:100];
        item.valueInDollars=100;
        
        //the %@ token is replaced with athe result of sending the description message to the corresponding argument
        NSLog(@"%@", item);
        
        //destroy the mutable array object
        items = nil;
    }
    return 0;
}

