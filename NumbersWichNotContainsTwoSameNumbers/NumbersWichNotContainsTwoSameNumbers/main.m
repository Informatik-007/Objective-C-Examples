//
//  main.m
//  NumbersWichNotContainsTwoSameNumbers
//
//  Copyright (c) 2015 Informatik-007. All rights reserved.
//

#import <Foundation/Foundation.h>

bool checkString(NSString *s) {
    for (int i = 1; i < s.length; i++) {
        if ([s characterAtIndex:i-1] == [s characterAtIndex:i]) {
            return NO;
        }
    }
    return YES;
}

void countOfNumbers(int start, int end) {
    int c = 0;
    for (int i = start; i <= end; i++) {
        NSNumber *n = [NSNumber numberWithInt:i];
        NSString *s = [n stringValue];
        if (checkString(s)) {
            c++;
        }
    }
    printf("count(%d, %d) = %d\n", start, end, c);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        countOfNumbers(0, 999999);
    }
    return 0;
}
