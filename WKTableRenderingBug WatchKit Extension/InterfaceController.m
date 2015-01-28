//
//  InterfaceController.m
//  WKTableRenderingBug WatchKit Extension
//
//  Created by Stephane Bisson on 1/28/15.
//  Copyright (c) 2015 Stephane Bisson. All rights reserved.
//

#import "InterfaceController.h"
#import "MyRowController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)renderData:(NSArray*)data {
    [self.table setNumberOfRows:data.count withRowType:@"row"];
    int i = 0;
    for (NSString *datum in data) {
        MyRowController *rowcontroller = [self.table rowControllerAtIndex:i];
        [rowcontroller.label setText:datum];
        i++;
    }
}

- (IBAction)pressMonthsButton {
    NSArray *data = @[@"Jan", @"Feb"];
    [self renderData:data];
}
- (IBAction)pressDaysButton {
    NSArray *data = @[@"Sunday"];
    [self renderData:data];
}

@end



