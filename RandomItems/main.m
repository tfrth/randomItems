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
        
        
        for (int i = 0; i < 10; i++) {  //loops through 10 times
            BNRItem *item = [BNRItem randomItem]; //creates randomItem object
            [items addObject:item]; // pushes the random object to
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        //destroy the mutable array object
        items = nil;
    }
    return 0;
}



