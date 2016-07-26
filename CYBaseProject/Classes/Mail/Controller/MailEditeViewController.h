//
//  MailEditeViewController.h
//  GXMoblieOA
//
//  Created by YYang on 16/3/11.
//  Copyright © 2016年 YYang. All rights reserved.
//

#import "ZTEBaseMailViewController.h"

@class ZTEMailModel;
@interface MailEditeViewController : ZTEBaseMailViewController

@property (nonatomic, strong) ZTEMailModel *mailModel;
@property (nonatomic, copy) NSString *subject;
@property (nonatomic, copy) NSString *to;
@property (nonatomic, copy) NSString *cc;

@end