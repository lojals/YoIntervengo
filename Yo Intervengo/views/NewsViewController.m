//
//  NewsViewController.m
//  Yo Intervengo
//
//  Created by Jorge Raul Ovalle Zuleta on 6/7/14.
//  Copyright (c) 2014 jomobile.co. All rights reserved.
//

#import "NewsViewController.h"

@interface NewsViewController ()

@end

@implementation NewsViewController
@synthesize twitterUrl, resp;
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
    
    
    twitterUrl = @"http://localhost:3000/obras/0";
    resp  = [self makeRestAPICall: twitterUrl];
    NSDictionary *json = [self makeRestAPICall2:twitterUrl];
    
    NSLog(@"%@",[json objectForKey:(@"id")]);
    NSLog(@"%@",[json objectForKey:(@"name")]);
    self.presupuesto.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"presupuesto")] ] ;
    self.estado.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"estado")] ] ;
    self.adjudicado.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"name")] ] ;
    self.localizacion.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"lugar")] ] ;
    self.name.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"name")] ] ;
    self.adjudicado.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"adjudicado")] ] ;
    
    self.dat1.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"fecha_inicial")] ] ;
    self.dat2.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"fecha_final")] ] ;
    
    self.progress.text = [NSString stringWithFormat:@"%@", [json objectForKey:(@"porcentaje")] ] ;
    
    NSString *str = [NSString stringWithFormat:@"%@", [json objectForKey:(@"porcentaje")] ] ;
    
    self.progressView.progress = (str.floatValue)/100;
    
   // NSDictionary *test = [json objectForKey:(@"lugar")];
    
    /*for(id object in test){
     NSLog(test[object);
     }*/
    
    /*for(NSString *key in [test allKeys]) {
        NSLog(@"%@ -> %@",[test objectForKey:key],key);
    }*/
    
    /*NSInteger count = [test count];
     id objects[count];
     id keys[count];
     [test getObjects:objects andKeys:keys];
     
     for (int i = 0; i < count; i++) {
     id obj = objects[i];
     id key = keys[i];
     NSLog(@"%@ -> %@", obj, key);
     }*/
    
    //Populate new note object with the details from the parsed JSON
    // Note* note = [[Note alloc] init];
    //[note setNote_content:[object objectForKey:(@"note_content")]];
    //[note setNote_creator:[object objectForKey:(@"note_creator")]];
    //[note setNote_date_updated:[object objectForKey:(@"note_date_updated")]];
    //[note setNote_id:[object objectForKey:(@"note_id")]];
    //[note setNote_title:[object objectForKey:(@"note_title")]];
    //[note setNotepad_id_key:[object objectForKey:(@"notepad_id_key")]];
    
    //Add the note to the array
    // [notes addObject:note];
    // counter++;
    // }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(NSString*) makeRestAPICall : (NSString*) reqURLStr
{
    NSURLRequest *Request = [NSURLRequest requestWithURL:[NSURL URLWithString: reqURLStr]];
    NSURLResponse *resp = nil;
    NSError *error = nil;
    NSData *response = [NSURLConnection sendSynchronousRequest: Request returningResponse: &resp error: &error];
    NSString *responseString = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    //NSLog(@"%@",responseString);
    return responseString;
}


-(NSDictionary*) makeRestAPICall2 : (NSString*) reqURLStr
{
    NSURLRequest *Request = [NSURLRequest requestWithURL:[NSURL URLWithString: reqURLStr]];
    NSURLResponse *resp = nil;
    NSError *error = nil;
    NSData *response = [NSURLConnection sendSynchronousRequest: Request returningResponse: &resp error: &error];
    // NSString *responseString = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    
    NSDictionary* json = [NSJSONSerialization JSONObjectWithData:response options:kNilOptions error:&error];
    
    //NSLog(@"%@",json);
    return json;
}



@end
