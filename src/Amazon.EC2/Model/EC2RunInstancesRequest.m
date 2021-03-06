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

#import "EC2RunInstancesRequest.h"


@implementation EC2RunInstancesRequest

@synthesize imageId;
@synthesize minCount;
@synthesize maxCount;
@synthesize keyName;
@synthesize securityGroups;
@synthesize securityGroupIds;
@synthesize userData;
@synthesize instanceType;
@synthesize placement;
@synthesize kernelId;
@synthesize ramdiskId;
@synthesize blockDeviceMappings;
@synthesize monitoring;
@synthesize monitoringIsSet;
@synthesize subnetId;
@synthesize disableApiTermination;
@synthesize disableApiTerminationIsSet;
@synthesize instanceInitiatedShutdownBehavior;
@synthesize license;
@synthesize privateIpAddress;
@synthesize clientToken;
@synthesize additionalInfo;


-(id)init
{
    if (self = [super init]) {
        imageId                           = nil;
        minCount                          = nil;
        maxCount                          = nil;
        keyName                           = nil;
        securityGroups                    = [[NSMutableArray alloc] initWithCapacity:1];
        securityGroupIds                  = [[NSMutableArray alloc] initWithCapacity:1];
        userData                          = nil;
        instanceType                      = nil;
        placement                         = nil;
        kernelId                          = nil;
        ramdiskId                         = nil;
        blockDeviceMappings               = [[NSMutableArray alloc] initWithCapacity:1];
        monitoring                        = NO;
        monitoringIsSet                   = NO;
        subnetId                          = nil;
        disableApiTermination             = NO;
        disableApiTerminationIsSet        = NO;
        instanceInitiatedShutdownBehavior = nil;
        license                           = nil;
        privateIpAddress                  = nil;
        clientToken                       = nil;
        additionalInfo                    = nil;
    }

    return self;
}

-(id)initWithImageId:(NSString *)theImageId andMinCount:(NSNumber *)theMinCount andMaxCount:(NSNumber *)theMaxCount
{
    if (self = [self init]) {
        self.imageId  = theImageId;
        self.minCount = theMinCount;
        self.maxCount = theMaxCount;
    }

    return self;
}


-(void)addBlockDeviceMapping:(EC2BlockDeviceMapping *)blockDeviceMapping
{
    if (blockDeviceMappings == nil) {
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [blockDeviceMappings addObject:blockDeviceMapping];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ImageId: %@,", imageId] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"MinCount: %@,", minCount] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"MaxCount: %@,", maxCount] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"KeyName: %@,", keyName] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"SecurityGroups: %@,", securityGroups] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"SecurityGroupIds: %@,", securityGroupIds] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"UserData: %@,", userData] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"Placement: %@,", placement] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"KernelId: %@,", kernelId] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"RamdiskId: %@,", ramdiskId] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"Monitoring: %d,", monitoring] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"SubnetId: %@,", subnetId] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"DisableApiTermination: %d,", disableApiTermination] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"InstanceInitiatedShutdownBehavior: %@,", instanceInitiatedShutdownBehavior] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"License: %@,", license] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"PrivateIpAddress: %@,", privateIpAddress] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ClientToken: %@,", clientToken] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"AdditionalInfo: %@,", additionalInfo] autorelease]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return [buffer autorelease];
}


-(void)setMonitoring:(bool)theValue
{
    monitoring      = theValue;
    monitoringIsSet = YES;
}

-(void)setDisableApiTermination:(bool)theValue
{
    disableApiTermination      = theValue;
    disableApiTerminationIsSet = YES;
}


-(void)dealloc
{
    [imageId release];
    [minCount release];
    [maxCount release];
    [keyName release];
    [securityGroups release];
    [securityGroupIds release];
    [userData release];
    [instanceType release];
    [placement release];
    [kernelId release];
    [ramdiskId release];
    [blockDeviceMappings release];
    [subnetId release];
    [instanceInitiatedShutdownBehavior release];
    [license release];
    [privateIpAddress release];
    [clientToken release];
    [additionalInfo release];

    [super dealloc];
}


@end
