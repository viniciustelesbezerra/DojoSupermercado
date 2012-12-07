//
//  ViewController.h
//  Supermercado
//
//  Created by Andre Cytryn on 12/7/12.
//  Copyright (c) 2012 HELabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UILabel *labelQuantidade;
}

- (int)calculaSacola:(NSArray *)produtos comlimite:(int)limite;
- (IBAction)calculaButtonTapped;


@end
