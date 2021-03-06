/*
 * Copyright 2010-2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */


#import <UIKit/UIKit.h>
#import "S3RequestDelegate.h"

@interface S3AsyncViewController:UIViewController {
    IBOutlet UILabel  *bytesIn;
    IBOutlet UILabel  *bytesOut;
    S3RequestDelegate *s3Delegate;
}

@property (nonatomic, retain) UILabel *bytesIn;
@property (nonatomic, retain) UILabel *bytesOut;

-(IBAction)start:(id)sender;
-(IBAction)exit:(id)sender;

-(void)putObject;
-(void)getObject;

@end
