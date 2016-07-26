//
//  MailListCell.m
//  GXMoblieOA
//
//  Created by YYang on 16/3/10.
//  Copyright © 2016年 YYang. All rights reserved.
//

#import "MailListCell.h"
#import "ZTEMailModel.h"

@implementation MailListCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setMailModel:(ZTEMailModel *)mailModel{
    
    _mailModel = mailModel;
    
    NSString *subject = mailModel.subject;
    if (!subject||subject.length==0) {
        subject = @"(无题)";
    }
    self.contentLabel.text = subject;
    
    NSString *from = mailModel.fromName;
    if ([NSString isBlankString:from]) {
        from = mailModel.fromAddress;
    }
    self.departmentLabel.text = from;
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd hh:mm:ss";
    self.timeLabel.text = [formatter stringFromDate:mailModel.receivedDate];
    self.attachIconImageView.hidden = ([mailModel.attachmentCount integerValue]<=0);
    self.unReadImage.image = [mailModel.read boolValue] ? [UIImage imageNamed:@"mRead"] : [UIImage imageNamed:@"mUnread"];
    
}

@end