//
//  TBParsing.h
//  ParsingLib
//
//  Created by verve on 31/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBXML.h"

@interface TBParsing : NSObject {
    
    TBXML *tbxml;
    NSMutableArray *ElementName;
    NSMutableArray *AttributeName;
    NSMutableArray *AttributeValue;
}

-(void)initWithUrlString:(NSString *)URLString;
-(void)traverseElement:(TBXMLElement *)element;
-(void)ValueOfElement:(NSString *)str;
-(void)ValueOfAttributeName:(NSString *)str;
-(void)ValueOfAttributeValue:(NSString *)str;
-(NSArray *)displayElementName;
-(NSArray *)displayAttributeName;
-(NSArray *)displayAttributeValue;
@end
