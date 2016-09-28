//
//  ViewController.m
//  DatePicker
//
//  Created by Nagam Pawan on 9/21/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *tf;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)dismissDate:(UIGestureRecognizer *)gestureRecognizer{
    _datePicker.hidden = YES;
}

- (IBAction)myDate:(id)sender {
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc]init];
    [outputFormatter setDateFormat:@"dd:MM:YYYY HH:mm"]
    ;
    NSString *dateString = [outputFormatter stringFromDate:self.datePicker.date];
    _tf.text = dateString;
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    _datePicker.hidden = false;
    return false;
}
@end
