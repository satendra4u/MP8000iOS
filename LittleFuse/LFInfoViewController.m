//
//  LFInfoViewController.m
//  Littlefuse
//
//  Created by Kranthi on 25/02/16.
//  Copyright © 2016 XcubeLabs. All rights reserved.
//

#import "LFInfoViewController.h"

@interface LFInfoViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation LFInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *image = [UIImage imageNamed:@"header-logo"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    self.navigationController.navigationBar.topItem.titleView = imageView;

    [self.activityIndicator startAnimating];
//    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.littelfuse.com/products/protection-relays-and-controls/protection-relays/motor-protection"]]]; //@"http://www.littelfuse.com/products/protection-relays-and-controls/protection-relays/motor-protection"
    if(_ivIsBasic){
        switch(_ivSelectedTag){
            case 0:
            case 1:
            case 2:
                [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_voltage_settings.pdf"]]]; //@"hhttp://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_voltage_settings.pdf"
                break;
            case 3:
            case 4:
            case 5:
            case 6:
                [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_current_settings.pdf"]]]; //@"hhttp://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_current_settings.pdf"
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_timer_settings.pdf"]]]; //@"hhttp://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_timer_settings.pdf"
                break;
            case 11:
            case 12:
                [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_restart_settings.pdf"]]]; //@"hhttp://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_restart_settings.pdf"
                break;
            default:
                break;
        }
    }
    else{

            [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_advanced_settings.pdf"]]]; //@"hhttp://www.littelfuse.com/~/media/protection-relays/product-manuals/motor-protection/mp8000/mobile/littelfuse_protectionrelays_mp8000_manual_advanced_settings.pdf"
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
    
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error
{
    [self.activityIndicator stopAnimating];
}

@end
