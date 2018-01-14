//
//  MainMenuTableViewCell.h
//  B2Papp
//
//  Created by Dmitriy on 14/01/2018.
//  Copyright © 2018 Dmitriy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"


@interface MainMenuTableViewCell : UITableViewCell

- (void)fillCellWithData:(DataModel *)data;

@end
