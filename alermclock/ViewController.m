//
//  ViewController.m
//  alermclock
//
//  Created by 小田部晃之 on 2014/06/10.
//  Copyright (c) 2014年 Akiyuki OTABE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    hour =0;
    minut =0;
    second =0;
    htext.delegate = self;
    mtext.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder] ;
    return YES ;
}

-(IBAction)setting{
    hour =[htext.text intValue];
    minut =[mtext.text intValue];
    second=0;
    hlabel.text =htext.text;
    mlabel.text =mtext.text;
    slabel.text =@"0";
    
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"お知らせ"
                                                   message:@"設定が完了しました"
                                                  delegate:nil
                                         cancelButtonTitle:nil
                                         otherButtonTitles:@"終了"
                         , nil];
    [alert show];
}

-(IBAction)start{
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(up)
                                           userInfo:nil
                                            repeats:YES
             ];

}

-(void)up{
    second =second-1;
    if(second < 0){
        second = 59;
        minut= minut -1;
        if(minut<0){
        minut = 59;
        hour = hour-1;
        }
    }
    hlabel.text = [NSString stringWithFormat:@"%d",hour];
    mlabel.text = [NSString stringWithFormat:@"%d",minut];
    slabel.text = [NSString stringWithFormat:@"%d",second];

    if(hour == 0 && minut == 0 && second == 0){
        UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"お知らせ"
                                                       message:@"時間になりました"
                                                      delegate:nil
                                             cancelButtonTitle:nil
                                             otherButtonTitles:@"終了"
                             , nil];
        [alert show];
        [timer invalidate];
    }
}
@end
