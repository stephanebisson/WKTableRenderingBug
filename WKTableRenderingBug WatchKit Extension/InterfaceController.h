//
//  InterfaceController.h
//  WKTableRenderingBug WatchKit Extension
//
//  Created by Stephane Bisson on 1/28/15.
//  Copyright (c) 2015 Stephane Bisson. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceTable *table;

- (void)renderData:(NSArray*)data;

@end
