//
//  SecondViewController.h
//  alermclock
//
//  Created by 小田部晃之 on 2014/09/18.
//  Copyright (c) 2014年 Akiyuki OTABE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UILabel*timelabel;
    IBOutlet UILabel*savelabel;
    IBOutlet UILabel*startlabel;
    IBOutlet UILabel*deletelabel;
    int op;
    int time;
    int savenumber;
    NSTimer *timer;
}

-(IBAction)startandstop;
-(IBAction)deleteandsave;
-(void)cont;

@end
