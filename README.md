# CROCOValidationForms

# Introduction

Simple Objective C category to validate strings formats. You can use it to validate forms.

# Installation

## CocoaPods

Install CocoaPods if need it

```bash
$ gem install cocoapods
```

Add CROCOValidationForms in your `Podfile`

```bash
pod 'CROCOValidationForms'
```

Then, run the following command

```bash
$ pod install
```

## Manual

Copy CROCOValidationForms.h and CROCOValidationForms.m to your project. That's it.

# Usage

It's is very easy. Just use it like a new feature of a NSString. They return true or false.

## Methods

```objective-c

- (BOOL) validateEmail;

- (BOOL) validationBlank;
+ (BOOL) validationBlankForStrings:(NSArray *)strings;

- (BOOL) validatePassWithMinLength:(NSInteger)minLength;
- (BOOL) validatePassWithMinLength:(NSInteger)minLength withAtLeastOneCharacter:(BOOL)character andAtLeastOneDigit:(BOOL)digit;

```

## Example Code

```objective-c
- (IBAction)actionCheck:(id)sender {
    NSString *email = self.textFieldEmail.text;
    NSString *pass  = self.textFieldPass.text;
    
    if (![email validationBlank] || ![pass validationBlank]) {
        [self showAlertWithDescription:@"Can't be blank"];
    }
    else if (![email validateEmail]) {
        [self showAlertWithDescription:@"Wrong email format"];
    }
    else if (![pass validatePassWithMinLength:4 withAtLeastOneCharacter:true andAtLeastOneDigit:true]) {
        [self showAlertWithDescription:@"Pass should have at least 4 characters, at least 1 char and at least 1 digit"];
    }
    else {
        [self showAlertWithDescription:@"Everything is ok"];
    }
}
```
