//
//  CExQuartzCoreOrganizerController.h
//  DrawTransformer
//
//  Created by Daniel Lin on 1/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CExQuartzCoreOrganizerController : UITableViewController

+ (void) AddCategory:(NSString *) theCategory;

@end


@interface CExQuartzCoreOrganizerController(RegisteryCategory)

+ (NSMutableArray *) sharedCategories;

+ (void) AddCategory:(NSString *) theCategory;

@end
