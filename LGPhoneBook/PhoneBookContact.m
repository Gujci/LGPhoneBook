//
//  PhoneBookContact.m
//  Find The Words
//
//  Created by David Sahakyan on 1/12/13.
//  Copyright (c) 2013 Davit Sahakyan. All rights reserved.
//

#import "PhoneBookContact.h"

@implementation PhoneBookContact

+ (PhoneBookContact *)contactWithName:(NSString *)name
                               mobile:(NSString *)mobile;
{
    PhoneBookContact *obj = [[PhoneBookContact alloc] init];
    //initing
    if (!name) {
        name = @"<Unknown Contact>";
    }
    obj.name = [NSString stringWithString:name];

    NSString *originalString = mobile;
    NSMutableString *strippedString = [NSMutableString
                                       stringWithCapacity:originalString.length];
    
    NSScanner *scanner = [NSScanner scannerWithString:originalString];
    NSCharacterSet *numbers = [NSCharacterSet
                               characterSetWithCharactersInString:@"0123456789"];
    
    while ([scanner isAtEnd] == NO) {
        NSString *buffer;
        if ([scanner scanCharactersFromSet:numbers intoString:&buffer]) {
            [strippedString appendString:buffer];
            
        } else {
            [scanner setScanLocation:([scanner scanLocation] + 1)];
        }
    }
//    if (obj.name.length > 6) {
//        obj.name = [obj.name substringToIndex:6];
//    }
    obj.mobile = strippedString;
    return obj;
}

@end
