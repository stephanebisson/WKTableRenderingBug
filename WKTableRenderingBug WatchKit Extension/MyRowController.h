//
//  MyRowController.h
//  WKTableRenderingBug
//
//  Created by Stephane Bisson on 1/28/15.
//  Copyright (c) 2015 Stephane Bisson. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface MyRowController : NSObject
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *label;

@end
