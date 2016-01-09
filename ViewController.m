//
//  ViewController.m
//  SimpleTable
//
//  Created by Himanshu on 25/11/15.
//  Copyright © 2015 jq software. All rights reserved.
//

#import "ViewController.h"
#import "SubClassOfTable.h"



@interface ViewController ()

{
   //     NSArray *tableData;
    NSArray *myimage;
}


@end

@implementation ViewController
@synthesize tableview;

- (void)viewDidLoad {
    tableview.transform = CGAffineTransformMakeRotation(-M_PI_2);
    tableview.frame = CGRectMake(0,0, tableview.frame.size.width, tableview.frame.size.height);
    [super viewDidLoad];
    self.tableview.pagingEnabled = YES;
       // tableData = [NSArray arrayWithObjects:@"Himanshu", @"Nithin", @"Ashif", @"Ankita",@"Swaroop",@"Hari",@"Garima", nil];
    myimage = [NSArray arrayWithObjects:@"p01.jpg",@"p02.jpg",@"p03.jpg",nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   }
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myimage count];
   
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    SubClassOfTable *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[SubClassOfTable alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    NSString * image = [myimage objectAtIndex:indexPath.row];
    cell.imageView.image =  [UIImage imageNamed:image];
    return cell;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGAffineTransform transform = CGAffineTransformMakeRotation(1.5707963);
    cell.transform = transform;
   
}


@end
