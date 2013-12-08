//
//  SocialSharingViewController.m
//  MHotelMirabel2
//
//  Created by Alain Malenfant on 12/8/2013.
//  Copyright (c) 2013 Alain Malenfant. All rights reserved.
//

#import <Social/Social.h>

#import "SocialSharingViewController.h"

@interface SocialSharingViewController ()

@end

@implementation SocialSharingViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postToTwitter:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController
                                               composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"Venez visiter l'Hôtel M de Mirabel"];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
}


- (IBAction)postToFacebook:(id)sender {
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller setInitialText:@"Venez visiter l'Hôtel M de Mirabel"];
        [self presentViewController:controller animated:YES completion:Nil];
    }
}

@end
