//
//  ViewController.m
//  SendData
//
//  Created by chaitanya on 17/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    @[@[@"Bear", @"Black Swan", @"Buffalo"],
//      @[@"image1.jpg", @"image2.jpg"]]
////    
    array = @{@"Java" : @[@{
                              @"title" : @"Datatypes",
                              @"Image" : @"image1.jpg",
                              @"Details" : @"Dta Types in Java"
                              
                              },
                          @{
                              @"title" : @"Variables",
                              @"Image" : @"image2.jpg",
                              @"Details" : @"Java Varaiables,\nScope of Variables in Same Block"}],
              @"iOS" : @[@{
                             @"title" : @"Objective C",
                             @"Image" : @"image1.jpg",
                             @"Details" : @"NSArray,\nNSString"
                                            
                             },
                         @{
                             @"title" : @"NSString",
                             @"Image" : @"image2.jpg",
                             @"Details" :  @"Creating Strings,\nEnumerating Strings"
                                              }],
              @"C Language" : @[@{
                                    @"title" : @"C Basics",
                                    @"Image" : @"image1.jpg",
                                    @"Details" : @"Variables,\nConstants"
                                    },
                                @{
                                    @"title" : @"Control Statements",
                                    @"Image" : @"image2.jpg",
                                    @"Details" : @"Switch Statements,\nWhile loops"
                                                     }] };
    booksSectionTitles = @[@"Java", @"iOS", @"C Language"];
    
    
//
//
//
//
    
}



- (void)didReceiveMemoryWarning {
[super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [booksSectionTitles count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *sectionTitle = [booksSectionTitles objectAtIndex:section];
    NSArray *sectionBooks = [array objectForKey:sectionTitle];
    return [sectionBooks count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [booksSectionTitles objectAtIndex:section];
}

//- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
//{
//    return [booksSectionTitles indexOfObject:title];
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = @"TableViewCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    NSString *sectionTitle = [booksSectionTitles objectAtIndex:indexPath.section];
    NSArray *sectionBooks = [array objectForKey:sectionTitle];
    NSDictionary *dict = [sectionBooks objectAtIndex:indexPath.row];
    cell.nameLb.text = [dict objectForKeyedSubscript:@"title"];
    cell.images.image = [UIImage imageNamed:[dict objectForKeyedSubscript:@"Image"]];
    
    return cell;
}
@end


