//
//  ViewController.m
//  B2Papp
//
//  Created by Dmitriy on 13/01/2018.
//  Copyright © 2018 Dmitriy. All rights reserved.
//

#import "MainMenuViewController.h"

#import "DataModel.h"

#import "MainMenuTableViewCell.h"

@interface MainMenuViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation MainMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initializeView];
    
    self.dataArray = [DataModel defaultData];

}

- (void)initializeView
{
    self.title = NSLocalizedString(@"BORN_2_PORN", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainMenuTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"MainMenuTableViewCell"];
    
    if (!cell)
    {
        [self.tableView registerNib:[UINib nibWithNibName:@"MainMenuTableViewCell" bundle:nil] forCellReuseIdentifier:@"MainMenuTableViewCell"];
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"MainMenuTableViewCell"];
    }
 
    [cell fillCellWithData:self.dataArray[indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 423;
}


@end
