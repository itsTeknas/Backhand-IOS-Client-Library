#import "SWGAuthSuccess.h"

@implementation SWGAuthSuccess

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"tokenType": @"token_type", @"expiresIn": @"expires_in", @"accessToken": @"access_token", @"refreshToken": @"refresh_token" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"tokenType", @"expiresIn", @"accessToken", @"refreshToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
