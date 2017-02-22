//
//  ViewController.h
//  SendData
//
//  Created by chaitanya on 17/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSDictionary* array;
    NSArray *booksSectionTitles;
}


@end

