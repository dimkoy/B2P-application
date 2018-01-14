//
//  MainMenuTableViewCell.m
//  B2Papp
//
//  Created by Dmitriy on 14/01/2018.
//  Copyright © 2018 Dmitriy. All rights reserved.
//

#import "MainMenuTableViewCell.h"

@interface MainMenuTableViewCell ()

@property (weak, nonatomic) IBOutlet UIView *cellBodyView;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIVisualEffectView *blurEffect;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end

@implementation MainMenuTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Initialization code
    
    self.cellBodyView.layer.shadowOffset = CGSizeMake(0, 12);
    self.cellBodyView.layer.shadowRadius = 14;
    self.cellBodyView.layer.shadowColor = UIColor.blackColor.CGColor;
    self.cellBodyView.layer.shadowOpacity = 0.3;
}

#pragma mark - Interface

-(void)fillCellWithData:(DataModel *)data
{
    self.backgroundImageView.image = data.image;
    self.messageLabel.text = data.title;
    
    switch (data.type)
    {
        case DataModelTypeDefault:
            self.titleLabel.text = NSLocalizedString(@"SINGLE", nil);
            break;
            
        case DataModelTypeGetStarted:
            self.titleLabel.text = NSLocalizedString(@"GET_STARTED", nil);
            break;
            
        case DataModelTypeLastAlbum:
            self.titleLabel.text = NSLocalizedString(@"LAST_ALBUM", nil);
            break;
            
        default:
            break;
    }
}

#pragma mark - Internal

//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}

@end
