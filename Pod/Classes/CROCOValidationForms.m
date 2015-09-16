//
//  NSString+ValidationForms.h
//  CROCODE
//
//  Created by Pablo Ojeda and Roberto Marco on 09/09/15.
//  Copyright (c) 2015 crocode. All rights reserved.
//

#import "CROCOValidationForms.h"

@implementation NSString (ValidationForms)

- (BOOL) validateEmail
{
    if ([self length] == 0) {
        return FALSE;
    }
    
    // Method 1
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    if ([emailTest evaluateWithObject:self]) {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
    
    /* --------------
     // Method 2
     // --------------
     NSString *regExPattern = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
     
     NSRegularExpression *regEx = [[NSRegularExpression alloc] initWithPattern:regExPattern options:NSRegularExpressionCaseInsensitive error:nil];
     NSUInteger regExMatches = [regEx numberOfMatchesInString:candidate options:0 range:NSMakeRange(0, [candidate length])];
     
     NSLog(@"%i", regExMatches);
     if (regExMatches == 0) {
     return NO;
     } else {
     return YES;
     }
     */
}

+ (BOOL) validationBlankForStrings:(NSArray *)strings
{
    for (id string in strings) {
        if ([string length] == 0) {
            return FALSE;
        }
    }
    return true;
    
}

- (BOOL) validationBlank
{
    if ([self length] == 0) {
        return false;
    }
    return true;
    
}

- (BOOL) validatePassWithMinLength:(NSInteger)minLength
{
    if ([self length] < minLength)
    {
        return FALSE;
    }
    else return TRUE;
}

- (BOOL) validatePassWithMinLength:(NSInteger)minLength withAtLeastOneCharacter:(BOOL)character andAtLeastOneDigit:(BOOL)digit
{
    
    if (character) {
        NSCharacterSet *characters = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz"];
        characters = [characters invertedSet];
        BOOL validChar = [[self stringByTrimmingCharactersInSet:characters] isEqualToString:@""];
        
        if (validChar) // validChar = YES - Not Found
        {
            return FALSE;
        }
    }
    
    if (digit) {
        NSCharacterSet *digits = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
        digits = [digits invertedSet];
        BOOL validDigit = [[self stringByTrimmingCharactersInSet:digits] isEqualToString:@""];
        if (validDigit) // validDigit = YES - Not Found
        {
            return FALSE;
        }
    }
    
    if ([self length] < minLength)
    {
        return FALSE;
    }
    else return TRUE;
}

@end
