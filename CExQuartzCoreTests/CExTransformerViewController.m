//
//  CExTransformerViewController.m
//  CExQuartzCoreTests
//
//  Created by Daniel Lin on 1/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CExTransformerViewController.h"
#import "CExQuartzCoreOrganizerController.h"
#import <QuartzCore/QuartzCore.h>

@implementation CExTransformerViewController

+ (void) load
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    [CExQuartzCoreOrganizerController AddCategory:NSStringFromClass([self class])];
    
    [pool release];pool=nil;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    [NSTimer scheduledTimerWithTimeInterval:3
                                     target:self
                                   selector:@selector(backgroundAnim:)
                                   userInfo:nil
                                    repeats:NO];
        
}


- (void)backgroundAnim:(NSTimer *) theTimer 
{
    self.view.layer.backgroundColor = [UIColor colorWithWhite:1 alpha:0.5].CGColor;
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    
    animation.delegate = self;
    [animation setDuration:10.0];
    
    CGColorRef red = [UIColor colorWithRed:1 green:0 blue:1 alpha:1].CGColor;
    CGColorRef green = [UIColor colorWithRed:0 green:1 blue:0 alpha:1].CGColor;
    
    [animation setFromValue:(id)red];
    [animation setToValue:(id)green];
    animation.autoreverses = YES;
    animation.fillMode = kCAFillModeForwards;
    
    
    [self.view.layer addAnimation:animation forKey:@"backgroundAnima"];
}

- (void)animationDidStart:(CAAnimation *)theAnimation
{
    NSArray *keys =[self.view.layer animationKeys];
    NSLog(@"%s",__func__);
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    if(flag) {
        NSLog(@"%@",[UIColor colorWithCGColor:self.view.layer.backgroundColor]);
    }
}


@end
