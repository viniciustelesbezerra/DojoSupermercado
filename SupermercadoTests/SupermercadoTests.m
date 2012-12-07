//
//  SupermercadoTests.m
//  SupermercadoTests
//
//  Created by Andre Cytryn on 12/7/12.
//  Copyright (c) 2012 HELabs. All rights reserved.
//

#import "SupermercadoTests.h"

@implementation SupermercadoTests

- (void)setUp
{
    [super setUp];
    myViewController = [[ViewController alloc] init];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testColocarZero
{
    int qtdSacolas = [myViewController calculaSacola:nil comlimite:0];
    STAssertEquals(qtdSacolas, 0, @"Deu ruim!");
}

-(void)testColocarUm{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:1];
    STAssertEquals(qtdSacolas, 1, @"Esperamos uma sacola");
}

-(void)testColocarDois{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Arroz"];
    
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:1];
    STAssertEquals(qtdSacolas, 2, @"Esperamos duas sacolas");
}

-(void)testColocarDoisDiferentes{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Feijão"];
    
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:1];
    STAssertEquals(qtdSacolas, 2, @"Esperamos duas sacolas");
}

-(void)testColocarDoisComLimite2{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Arroz"];
    
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:2];
    STAssertEquals(qtdSacolas, 1, @"Esperamos uma sacola");
}

-(void)testColocarLimiteMaiorQueProduto{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Arroz"];
    
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:3];
    STAssertEquals(qtdSacolas, 1, @"Esperamos uma sacola");
}

-(void)testColocarTresProdutosDiferentesComLimiteDois{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Feijão"];
    [produtos addObject:@"Batata"];
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:2];
    STAssertEquals(qtdSacolas, 3, @"Deu ruim!");
}

-(void)testCustom1{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Feijão"];
    [produtos addObject:@"Batata"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Batata"];
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:2];
    STAssertEquals(qtdSacolas, 3, @"Deu ruim!");
}

-(void)testCustom2{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Feijão"];
    [produtos addObject:@"Batata"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Batata"];
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:2];
    STAssertEquals(qtdSacolas, 4, @"Deu ruim!");
}

-(void)testCustom3{
    NSMutableArray *produtos = [NSMutableArray array];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Feijão"];
    [produtos addObject:@"Batata"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Arroz"];
    [produtos addObject:@"Batata"];
    int qtdSacolas = [myViewController calculaSacola:produtos comlimite:3];
    STAssertEquals(qtdSacolas, 3, @"Deu ruim!");
}
@end
