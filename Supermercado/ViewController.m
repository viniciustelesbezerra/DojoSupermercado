//
//  ViewController.m
//  Supermercado
//
//  Created by Andre Cytryn on 12/7/12.
//  Copyright (c) 2012 HELabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(NSMutableDictionary *) criaDicionarioDeProdutos:(NSArray *)produtos;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    labelQuantidade.textColor = [UIColor greenColor];
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)calculaButtonTapped {
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Feijão"];
    [produtos addObject:@"Batata"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Batata"];
    int qtdSacolas = [self calculaSacola:produtos comlimite:2];
    
    labelQuantidade.text = [NSString stringWithFormat:@"%i", qtdSacolas];
}

- (int)calculaSacola:(NSArray *)produtos comlimite:(int)limite {
    int qtdSacolas = 0;
    if (!limite) return 0;
    
    NSMutableDictionary *sacolasDict = [self criaDicionarioDeProdutos:produtos];
    
    for(NSString *produto in sacolasDict) {
        qtdSacolas += ceil((float)[sacolasDict[produto] intValue] / limite);
    }
    
    return qtdSacolas;
}

- (NSMutableDictionary *)criaDicionarioDeProdutos:(NSArray *)produtos {
    NSMutableDictionary *sacolasDict = [NSMutableDictionary dictionary];
    for(NSString *produto in produtos){
        int qtd = [sacolasDict[produto] intValue];
        NSNumber *numeroIncrementado = [NSNumber numberWithInt:++qtd];
        [sacolasDict setObject:numeroIncrementado forKey:produto];
    }
    return sacolasDict;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
