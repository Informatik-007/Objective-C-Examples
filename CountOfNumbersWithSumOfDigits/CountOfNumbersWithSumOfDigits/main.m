//
//  main.m
//  https://stepic.org/lesson/K-сочетания-из-n-элементов-9481/step/15?course=Ликбез-по-дискретной-математике&unit=1759
//
//  Copyright (c) 2015 Informatik-007. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int cnt = 0;
        for (int i = 100000; i < 999999; i++) {
            NSNumber *n = [NSNumber numberWithInt:i];
            NSString *ns = [n stringValue];
            int sum = 0;
            for (int j = 0; j < ns.length; j++) {
                unichar d = [ns characterAtIndex:j];
                NSString *ds = [NSString stringWithCharacters:&d length:1];
                sum += [ds integerValue];
            }
            if (sum <= 47) {
                cnt++;
            }
        }
        printf("%d", cnt); // Сколько существует шестизначных чисел, сумма цифр которых не превосходит 47?
    }
    return 0;
}
