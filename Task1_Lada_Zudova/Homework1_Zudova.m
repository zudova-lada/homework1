//
//  Homework1_Zudova.m
//  Task1_Lada_Zudova
//
//  Created by Лада on 26/09/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

#import "Homework1_Zudova.h"

@implementation Homework1_Zudova
- (void) doSomthingWithArray
{
    NSMutableArray *myArray = @[@(3), @(6), @(32), @(24), @(81)].mutableCopy;
    NSLog(@"Base array: %@", myArray);
    myArray = [myArray sortedArrayUsingSelector:@selector(compare:)].mutableCopy; //сортировка массива по возрастанию
    NSLog(@"Sort base array: %@", myArray);
    NSMutableArray *moreThan20 = [NSMutableArray new];
    NSMutableArray *multiplesOf3 = [NSMutableArray new];
    for(NSObject *object in myArray)
    {
        NSString *myStr = (NSString*) object; //Не нашла способа сразу вытащить число, но могу вытащить строку, которую можно преобразовать в число. Есть ли способ попроще?
        NSInteger myInt = myStr.intValue; //Собственно, преобразуем строку в число
        if(myInt > 20)
        {
            [moreThan20 addObject:object];
            
        }
        if((myInt % 3) == 0)
        {
            [multiplesOf3 addObject:object];
        }
    }
    NSLog(@"Массив с числами, больше 20: %@", moreThan20);
    NSLog(@"Массив с числами, кратными 3: %@", multiplesOf3);

    myArray = [myArray arrayByAddingObjectsFromArray:multiplesOf3]; //добавление массива в исходный
    NSLog(@"Изначальный массив, объединенный с массивом чисел, кратных 3 %@", myArray);
    NSSortDescriptor* sortOrder = [NSSortDescriptor sortDescriptorWithKey: @"self" ascending: NO];
    NSArray *temp = [myArray sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortOrder]];
    NSLog(@"Он же, отсортированный в обратном порядке %@", temp);

    
}

-(void) doSomthingWithArrayOfString
{
    NSArray *basicArray = @[@"cataclism", @"catepillar", @"cat", @"teapot", @"truncate"];
   // NSLog(@"Базовый массив: %@", basicArray);
    NSString *myFind = @"cat";
    
//    for(NSObject *object in basicArray) //Вариант без использования предиката
//    {
//        NSString *localString = (NSString *) object;
//        if ([localString hasPrefix:myFind])
//        {
//            NSLog(@"%@", object);
//        }
//    }

    NSPredicate* myPredicate = [NSPredicate predicateWithFormat:@"SELF beginswith[c] %@", myFind]; //как рабочий вариант

    NSArray *result = [basicArray filteredArrayUsingPredicate:myPredicate];
    NSLog(@"Result %@", result);

    NSMutableDictionary *myDictionary = [NSMutableDictionary new];
    for(NSObject *object in result)
    {
        NSUInteger localCount = [(NSString *) object length];
        [myDictionary setObject:@(localCount) forKey:object];
    }
    NSLog(@"Dictionary: %@", myDictionary);
}

@end
