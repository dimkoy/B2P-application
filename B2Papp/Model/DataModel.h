//
//  DataModel.h
//  B2Papp
//
//  Created by Dmitriy on 14/01/2018.
//  Copyright © 2018 Dmitriy. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

typedef NS_ENUM(NSInteger, DataModelType)
{
    DataModelTypeDefault,
    DataModelTypeGetStarted,
    DataModelTypeLastAlbum,
};

@interface DataModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) DataModelType type;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSString *descriptionTitle;
@property (nonatomic, strong) NSString *descriptionText;
@property (nonatomic, strong) NSURL *url;

#warning data for testing, remove before release
+ (NSArray *)defaultData;

@end
