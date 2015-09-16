//
//  NSString+ValidationForms.h
//  CROCODE
//
//  Created by Pablo Ojeda and Roberto Marco on 09/09/15.
//  Copyright (c) 2015 crocode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ValidationForms)

- (BOOL) validateEmail;

- (BOOL) validationBlank;
+ (BOOL) validationBlankForStrings:(NSArray *)strings;

- (BOOL) validatePassWithMinLength:(NSInteger)minLength;
- (BOOL) validatePassWithMinLength:(NSInteger)minLength withAtLeastOneCharacter:(BOOL)character andAtLeastOneDigit:(BOOL)digit;

@end
