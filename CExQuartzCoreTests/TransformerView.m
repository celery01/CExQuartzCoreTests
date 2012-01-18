//
//  TransformerView.m
//  DrawTransformer
//
//  Created by ziyi on 12/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "TransformerView.h"
#import <QuartzCore/QuartzCore.h>

#define P(x,y) CGPointMake(x,y)

@implementation TransformerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) 
    {
        [self setAlpha:1.0];
    }
    return self;
}




//- (void)drawRect:(CGRect)rect
//{
//    //// 左上方
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
////    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
////    CGFloat colors[] =
////    {
////        204.0 / 255.0, 224.0 / 255.0, 244.0 / 255.0, 1.00,
////        29.0 / 255.0, 156.0 / 255.0, 215.0 / 255.0, 1.00,
////        0.0 / 255.0,50.0 / 255.0, 126.0 / 255.0, 1.00,
////    };
////    CGGradientRef gradient = CGGradientCreateWithColorComponents(rgb, colors, NULL, sizeof(colors)/(sizeof(colors[0])*4));
////    CGColorSpaceRelease(rgb);
////    CGContextDrawLinearGradient(context, gradient,CGPointMake(0.0,0.0) ,CGPointMake(0.0,self.frame.size.height), kCGGradientDrawsBeforeStartLocation);
//    
//    
//    CGContextSetLineWidth(context, 1.0);
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGContextBeginPath(context);
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathMoveToPoint(path, NULL, 18, 117);
//    CGPathAddLineToPoint(path, NULL,59,117);
//    CGPathAddLineToPoint(path, NULL,62,135);
//    CGPathAddLineToPoint(path, NULL,125,176);
//    CGPathAddLineToPoint(path, NULL,136,230);
//    CGPathAddLineToPoint(path, NULL,79,230);
//    CGPathAddLineToPoint(path, NULL,34,199);
//    CGContextAddPath(context, path);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(path);
//    CGPathRelease(path);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    
//    [[UIColor whiteColor] setFill];
//    [[UIColor blueColor] setStroke];
//    
//    CGMutablePathRef centerPath = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(centerPath, NULL,49,147);
//    CGPathAddLineToPoint(centerPath, NULL,110,176);
//    CGPathAddLineToPoint(centerPath, NULL,113,193);
//    CGPathAddLineToPoint(centerPath, NULL,51,147+17);
//    CGContextAddPath(context, centerPath);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(centerPath);
//    CGPathRelease(centerPath);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    [[UIColor whiteColor] setFill];
//    [[UIColor blueColor] setStroke];
//    
//    CGMutablePathRef Path1 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(Path1, NULL,55,178);
//    CGPathAddLineToPoint(Path1, NULL,115,205);
//    CGPathAddLineToPoint(Path1, NULL,118,220);
//    CGPathAddLineToPoint(Path1, NULL,51+8,178+16);
//    CGContextAddPath(context, Path1);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(Path1);
//    CGPathRelease(Path1);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    
//    //// 右上方
//    
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    
//    CGMutablePathRef pathrightTop = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathrightTop, NULL, 265,117);
//    CGPathAddLineToPoint(pathrightTop, NULL, 306,117);
//    CGPathAddLineToPoint(pathrightTop, NULL, 288,197);
//    CGPathAddLineToPoint(pathrightTop, NULL, 242,230);
//    CGPathAddLineToPoint(pathrightTop, NULL, 242-55,230);
//    CGPathAddLineToPoint(pathrightTop, NULL, 242-55+15,176);
//    CGPathAddLineToPoint(pathrightTop, NULL, 242-55+75,135);
//    CGContextAddPath(context,pathrightTop);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathrightTop);
//    CGPathRelease(pathrightTop);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    [[UIColor whiteColor] setFill];
//    [[UIColor blueColor] setStroke];
//    CGMutablePathRef pathrightTop1 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathrightTop1, NULL,217,175);
//    CGPathAddLineToPoint(pathrightTop1, NULL,275,147);
//    CGPathAddLineToPoint(pathrightTop1, NULL,273,162);
//    CGPathAddLineToPoint(pathrightTop1, NULL,213,190);
//    CGContextAddPath(context,pathrightTop1);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathrightTop1);
//    CGPathRelease(pathrightTop1);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    [[UIColor whiteColor] setFill];
//    [[UIColor blueColor] setStroke];
//    CGMutablePathRef pathrightTop2 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathrightTop2, NULL,213,200+3);
//    CGPathAddLineToPoint(pathrightTop2, NULL,270,172+3);
//    CGPathAddLineToPoint(pathrightTop2, NULL,268,187+3);
//    CGPathAddLineToPoint(pathrightTop2, NULL,208,215+3);
//    CGContextAddPath(context,pathrightTop2);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathrightTop2);
//    CGPathRelease(pathrightTop2);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    //// 中间部分
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGMutablePathRef pathcenter = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathcenter, NULL, 77, 117);
//    CGPathAddLineToPoint(pathcenter, NULL, 79, 131);  
//    CGPathAddLineToPoint(pathcenter, NULL, 162, 185); 
//    CGPathAddLineToPoint(pathcenter, NULL, 162+83,131); 
//    CGPathAddLineToPoint(pathcenter, NULL,79+83*2+2,117);
//    CGPathAddCurveToPoint(pathcenter, NULL, 79+83*2+2,117, 176.5, 75, 77, 117);
//    CGContextAddPath(context,pathcenter);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathcenter);
//    CGPathRelease(pathcenter);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGMutablePathRef pathcenter2 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathcenter2, NULL, 122, 128);
//    CGPathAddLineToPoint(pathcenter2, NULL, 162, 155);  
//    CGPathAddLineToPoint(pathcenter2, NULL, 202, 127); 
//    CGPathAddCurveToPoint(pathcenter2, NULL, 202, 127, 176.5, 120, 122, 128);
//    CGContextAddPath(context,pathcenter2);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathcenter2);
//    CGPathRelease(pathcenter2);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGMutablePathRef pathcenter3 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathcenter3, NULL, 142, 189);
//    CGPathAddLineToPoint(pathcenter3, NULL, 148, 242);  
//    CGPathAddLineToPoint(pathcenter3, NULL, 148, 300); 
//    CGPathAddLineToPoint(pathcenter3, NULL, 178, 300); 
//    CGPathAddLineToPoint(pathcenter3, NULL, 178, 242);
//    CGPathAddLineToPoint(pathcenter3, NULL, 178+7, 188);    
//    CGPathAddLineToPoint(pathcenter3, NULL, 141+43/2, 200);
//    CGContextAddPath(context,pathcenter3);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathcenter3);
//    CGPathRelease(pathcenter3);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGMutablePathRef pathcenter4 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathcenter4, NULL, 44, 220);
//    CGPathAddLineToPoint(pathcenter4, NULL, 70, 237);
//    CGPathAddLineToPoint(pathcenter4, NULL, 70, 249);
//    CGPathAddLineToPoint(pathcenter4, NULL, 92, 263);
//    CGPathAddLineToPoint(pathcenter4, NULL, 90, 344);
//    CGPathAddLineToPoint(pathcenter4, NULL, 49, 307);
//    CGContextAddPath(context,pathcenter4);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathcenter4);
//    CGPathRelease(pathcenter4);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGMutablePathRef pathcenter5 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathcenter5, NULL, 280, 216);
//    CGPathAddLineToPoint(pathcenter5, NULL, 254, 234);  
//    CGPathAddLineToPoint(pathcenter5, NULL, 254, 243);
//    CGPathAddLineToPoint(pathcenter5, NULL, 233, 255);
//    CGPathAddLineToPoint(pathcenter5, NULL, 233, 344);
//    CGPathAddLineToPoint(pathcenter5, NULL, 275, 307);
//    CGContextAddPath(context,pathcenter5);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathcenter5);
//    CGPathRelease(pathcenter5);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGMutablePathRef pathcenter6 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathcenter6, NULL, 104, 265);
//    CGPathAddLineToPoint(pathcenter6, NULL, 133, 252); 
//    CGPathAddLineToPoint(pathcenter6, NULL, 133, 314); 
//    CGPathAddLineToPoint(pathcenter6, NULL, 193, 314); 
//    CGPathAddLineToPoint(pathcenter6, NULL, 194, 248);
//    CGPathAddLineToPoint(pathcenter6, NULL, 193 + 27, 262);
//    CGPathAddLineToPoint(pathcenter6, NULL, 193 + 27, 358);
//    CGPathAddLineToPoint(pathcenter6, NULL, 193 + 15, 366);
//    CGPathAddLineToPoint(pathcenter6, NULL, 191, 327);
//    CGPathAddLineToPoint(pathcenter6, NULL, 135, 327);
//    CGPathAddLineToPoint(pathcenter6, NULL, 135 - 18,369);
//    CGPathAddLineToPoint(pathcenter6, NULL, 135 - 18 - 14,358);
//    CGContextAddPath(context,pathcenter6);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathcenter6);
//    CGPathRelease(pathcenter6);
//    CGContextDrawPath(context, kCGPathEOFill);
//    
//    [[UIColor redColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGMutablePathRef pathcenter7 = CGPathCreateMutable();
//    CGContextBeginPath(context);
//    CGPathMoveToPoint(pathcenter7, NULL, 146, 338);
//    CGPathAddLineToPoint(pathcenter7, NULL, 182, 338); 
//    CGPathAddLineToPoint(pathcenter7, NULL, 200, 386); 
//    CGPathAddLineToPoint(pathcenter7, NULL, 146 - 18, 386); 
//    CGContextAddPath(context,pathcenter7);
//    CGContextClosePath(context);
//    CGPathCloseSubpath(pathcenter7);
//    CGPathRelease(pathcenter7);
//    CGContextDrawPath(context, kCGPathEOFill);
//   
//}

@end
