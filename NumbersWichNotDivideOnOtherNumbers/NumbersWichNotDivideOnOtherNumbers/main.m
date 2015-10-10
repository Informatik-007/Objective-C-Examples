//
//  main.m
//  NumbersWichNotDivideOnOtherNumbers
//
//  Copyright (c) 2015 Informatik-007. All rights reserved.
//

#import <Foundation/Foundation.h>

bool checkNumber(int i) {
    return i % 2 != 0 && i % 3 != 0 && i % 5 != 0 ? YES : NO;
}

void countOfNumbers(int start, int end) {
    int c = 0;
    for (int i = start; i <= end; i++) {
        if (checkNumber(i)) {
            c++;
        }
    }
    printf("count(%d, %d) = %d\n", start, end, c);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        countOfNumbers(1, 100);
    }
    return 0;
}
