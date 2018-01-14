//
//  DataModel.m
//  B2Papp
//
//  Created by Dmitriy on 14/01/2018.
//  Copyright © 2018 Dmitriy. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

+ (NSArray *)defaultData
{
    NSMutableArray *array = [NSMutableArray array];
    
    for (NSInteger index = 0; index < 10; ++index)
    {
        DataModel *data = [[DataModel alloc] init];
        
        data.title = @"New single <<Zavod>> New single <<Zavod>> New single <<Zavod>>";
        data.type = DataModelTypeGetStarted;
        data.image = [UIImage imageNamed:@"default_background_image"];
        data.date = [NSDate date];
        data.descriptionTitle = @"Title title title";
        data.descriptionText = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
        
        [array addObject:data];
    }
 
    return [NSArray arrayWithArray:array];
}

@end
