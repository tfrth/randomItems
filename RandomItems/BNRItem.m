//
//  BNRItem.m
//  RandomItems
//
//  Created by Tyler Frith on 9/4/15.
//  Copyright (c) 2015 tfrth. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    
    //call the superclass' designated initializer
    self = [super init];
    
    //did the superclass' designated initializer succeed?
    if (self) {
        //give the instance variables intitial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        //set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc]init];
    }
    return self;
}

- (instancetype)initWithItemName:(NSString *)name {
    return [self initWithItemName:name
                    valueInDollars:0
                     serialNumber:@""];
}

- (instancetype)init {
    return [self initWithItemName:@"Item"];
}

+ (instancetype)randomItem {
    
    //create immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"fluffly", @"rusty", @"shiny"];
    
    //create an immutable array of three nouns
    NSArray *randomNounList = @[@"bear", @"spork", @"mac"];
  
    //get the index of a random adjective/noun from the lists. % = modulo (remainder). So adjectiveOndex is a random number between 0 and 2 inclusive.
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    //note that NSInteger is not an object, but a type definition for "long"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                              [randomAdjectiveList objectAtIndex:adjectiveIndex],
                              [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                        '0' + arc4random() % 10,
                                        'A' + arc4random() % 26,
                                        '0' + arc4random() % 10,
                                        'A' + arc4random() % 26,
                                        '0' + arc4random() % 10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    return newItem;
    
};

- (NSString *)description{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                self.itemName,
                self.serialNumber,
                self.valueInDollars,
                self.dateCreated];
    
    return descriptionString;
}

- (void)setItemName:(NSString *)str{
    _itemName = str;
}
- (NSString *)itemName{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str{
    _serialNumber = str;
}
- (NSString *)serialNumber{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v{
    _valueInDollars = v;
}
- (int)valueInDollars{
    return _valueInDollars;
}

- (NSDate *)dateCreated{
    return _dateCreated;    //again, this is read only, so the return is only thing necessary. No method to change value
}

@end

