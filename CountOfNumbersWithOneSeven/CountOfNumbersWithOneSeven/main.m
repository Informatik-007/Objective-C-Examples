//
//  main.m
//  CountOfNumbersWithOneSeven
//
//  Copyright (c) 2015 Informatik-007. All rights reserved.
//

#import <Foundation/Foundation.h>

bool checkString(NSString *s) {
    int cnt = 0;
    for (int i = 0; i < s.length; i++) {
        unichar c = [s characterAtIndex:i];
        if (c == '7') {
            cnt++;
        }
    }
    return (cnt == 1) ? YES : NO;
}

void countOfNumbersWithOne7(int start, int end) {
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
        countOfNumbersWithOne7(0, 9);
        countOfNumbersWithOne7(10, 99);
        countOfNumbersWithOne7(100, 999);
        countOfNumbersWithOne7(0, 999);
    }
    return 0;
}
