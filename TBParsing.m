//
//  TBParsing.m
//  ParsingLib
//
//  Created by verve on 31/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TBParsing.h"


@implementation TBParsing

-(void)initWithUrlString:(NSString *)URLString
{
    ElementName = [[NSMutableArray alloc]init];
    AttributeName = [[NSMutableArray alloc]init];
    AttributeValue = [[NSMutableArray alloc]init];
    
    tbxml = [[TBXML alloc]initWithURL:[NSURL URLWithString:[NSString stringWithString:URLString]]];
    if (tbxml.rootXMLElement) {
        [self traverseElement:tbxml.rootXMLElement];
    }
}

-(void)traverseElement:(TBXMLElement *)element
{

    do {
        
        
        
        TBXMLAttribute * attribute = element->firstAttribute;
        
        
        
        while (attribute) {
            
/*
            NSLog(@"%@->%@ = %@",
                  
                  [TBXML elementName:element],
                  
                  [TBXML attributeName:attribute],
                  
                  [TBXML attributeValue:attribute]);
            
 */         [self ValueOfElement:[TBXML elementName:element]];
            [self ValueOfAttributeName:[TBXML attributeName:attribute]];
            [self ValueOfAttributeValue:[TBXML attributeValue:attribute]];
            
            attribute = attribute->next;
            
        }
        
        
        
        if (element->firstChild)
            
            [self traverseElement:element->firstChild];
        
        
        
    } while ((element = element->nextSibling)); 

    }

-(void)ValueOfElement:(NSString *)str
{
    [ElementName addObject:str];
    [self displayElementName];
}
-(void)ValueOfAttributeName:(NSString *)str
{
    [AttributeName addObject:str];
}
-(void)ValueOfAttributeValue:(NSString *)str
{
    [AttributeValue addObject:str];
}

-(NSArray *)displayElementName
{
    return ElementName;
}

-(NSArray *)displayAttributeName
{
    return AttributeName;
}
-(NSArray *)displayAttributeValue
{
    return AttributeValue;
}

@end
