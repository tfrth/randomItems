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

