#import "SWGUserShortProfile.h"

@implementation SWGUserShortProfile

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"user_id", @"userFirstName": @"user_first_name", @"userLastName": @"user_last_name", @"email": @"email", @"userMobileNo": @"user_mobile_no", @"userProfilePicUrl": @"user_profile_pic_url", @"userGender": @"user_gender", @"userIsReal": @"user_is_real" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userLastName", @"email", @"userMobileNo", @"userIsReal"];
  return [optionalProperties containsObject:propertyName];
}

@end
