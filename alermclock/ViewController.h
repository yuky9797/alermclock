//
//  ViewController.h
//  alermclock
//
//  Created by 小田部晃之 on 2014/06/10.
//  Copyright (c) 2014年 Akiyuki OTABE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int hour;
    int minut;
    int second;

    IBOutlet UILabel *hlabel;
    IBOutlet UILabel *mlabel;
    IBOutlet UILabel *slabel;
    
    IBOutlet UITextField *htext;
    IBOutlet UITextField *mtext;
    NSTimer *timer;
}

-(IBAction)setting;
-(IBAction)start;
-(IBAction)lifting;
-(void)up;

@end