//
//  SecondViewController.m
//  alermclock
//
//  Created by 小田部晃之 on 2014/09/18.
//  Copyright (c) 2014年 Akiyuki OTABE. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    op=0;
    time=0;
    timelabel.text = [NSString stringWithFormat:@"%d",time];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)count{
    time++;
    timelabel.text = [NSString stringWithFormat:@"%d",time];
}

-(IBAction)startandstop{
    if(op==0){
        timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                 target:self
                                               selector:@selector(count)
                                               userInfo:nil
                                                repeats:YES
                 ];
        op = 1;
        startlabel.text = [NSString stringWithFormat:@"停止"];
        deletelabel.text = [NSString stringWithFormat:@"保存"];
    }else if(op==1){
        [timer invalidate];
        op=0;
        startlabel.text = [NSString stringWithFormat:@"再開"];
        deletelabel.text = [NSString stringWithFormat:@"消去"];
    }
}


-(IBAction)deleteandsave{
    if(op==1){
        savenumber = time;
        savelabel.text = [NSString stringWithFormat:@"%d",savenumber];
    }else if(op==0){
        [timer invalidate];
        op=0;
        time=0;
        timelabel.text = [NSString stringWithFormat:@"%d",time];
        startlabel.text = [NSString stringWithFormat:@"開始"];
        deletelabel.text = [NSString stringWithFormat:@"保存"];

    }


}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
