/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceShared
 *
 */
@implementation MSGraphServiceShared


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"owner", @"owner", @"scope", @"scope", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.shared";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_owner = (![dic objectForKey: @"owner"] || [ [dic objectForKey: @"owner"] isKindOfClass:[NSNull class]] )?_owner:[[MSGraphServiceIdentitySet alloc] initWithDictionary: [dic objectForKey: @"owner"]];
		_scope = (![dic objectForKey: @"scope"] || [ [dic objectForKey: @"scope"] isKindOfClass:[NSNull class]] )?_scope:[[dic objectForKey: @"scope"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.owner toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"owner"];}
	{id curVal = [self.scope copy];if (curVal!=nil) [dic setValue: curVal forKey: @"scope"];}
    [dic setValue: @"#microsoft.graph.shared" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.owner;
    if([self.updatedValues containsObject:@"owner"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"owner"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"owner"];
            }
        
            }}
	{id curVal = self.scope;
    if([self.updatedValues containsObject:@"scope"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"scope"];
            }
    }
    return dic;
}


/** Setter implementation for property owner
 *
 */
- (void) setOwner: (MSGraphServiceIdentitySet *) value {
    _owner = value;
    [self valueChangedFor:@"owner"];
}
       
/** Setter implementation for property scope
 *
 */
- (void) setScope: (NSString *) value {
    _scope = value;
    [self valueChangedFor:@"scope"];
}
       

@end
