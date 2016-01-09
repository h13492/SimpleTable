//
//  SubClassOfTable.m
//  SimpleTable
//
//  Created by Himanshu on 25/11/15.
//  Copyright © 2015 jq software. All rights reserved.
//

#import "SubClassOfTable.h"

@implementation SubClassOfTable
@synthesize imagenew = _imagenew;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
