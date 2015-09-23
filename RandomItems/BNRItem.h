//
//  BNRItem.h
//  RandomItems
//
//  Created by Tyler Frith on 9/4/15.
//  Copyright (c) 2015 tfrth. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRItem.m"

@interface BNRItem : NSObject
{ //these are the instance variables that are created whenever a new instance of BNRItem object is created
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype)randomItem; //class method that will be implemented to create a random item (note the + instead of -)

//Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;  //this initializer needs all three arguments to be initialized

- (instancetype)initWithItemName:(NSString *)name; //if you only know the name, then this initializer method can be used

- (instancetype)initWithItemNameAndSerialNumber: (NSString *)name serialNumber:(NSString *)sNumber; //initializer method with both name and serial number 

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;  //don't need the * because this is stright integer, not pointer like the others.
- (int)valueInDollars;

- (NSDate *)dateCreated; //read only

@end


