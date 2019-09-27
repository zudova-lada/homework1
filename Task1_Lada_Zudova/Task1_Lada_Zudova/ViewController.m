//
//  ViewController.m
//  Task1_Lada_Zudova
//
//  Created by Лада on 26/09/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

#import "ViewController.h"
#import "Homework1_Zudova.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Homework1_Zudova *myWork = [Homework1_Zudova new]; //Создаем экземпляр класса
    [myWork doSomthingWithArray];
    [myWork doSomthingWithArrayOfString];
}


@end
