//
//  NewsViewController.h
//  Yo Intervengo
//
//  Created by Jorge Raul Ovalle Zuleta on 6/7/14.
//  Copyright (c) 2014 jomobile.co. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsViewController : UIViewController<NSURLConnectionDelegate>
{
    NSMutableData *_responseData;
}

@property (strong, nonatomic) IBOutlet UITextView *txtRest;
@property (nonatomic,strong) NSString *twitterUrl;
@property (nonatomic,strong) NSString *resp;


@property (strong,nonatomic) IBOutlet UILabel *localizacion;
@property (strong,nonatomic) IBOutlet UILabel *presupuesto;
@property (strong,nonatomic) IBOutlet UILabel *estado;
@property (strong,nonatomic) IBOutlet UILabel *adjudicado;
@property (strong,nonatomic) IBOutlet UILabel *name;

@property (strong,nonatomic) IBOutlet UILabel *dat1;
@property (strong,nonatomic) IBOutlet UILabel *dat2;
@property (strong,nonatomic) IBOutlet UILabel *progress;
@property (strong,nonatomic) IBOutlet UIProgressView *progressView;



@end
