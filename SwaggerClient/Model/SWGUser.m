#import "SWGUser.h"

@implementation SWGUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"user_id", @"userFirstName": @"user_first_name", @"userLastName": @"user_last_name", @"email": @"email", @"userMobileNo": @"user_mobile_no", @"userProfilePicUrl": @"user_profile_pic_url", @"userSocialId": @"user_social_id", @"userHandedness": @"user_handedness", @"userGender": @"user_gender", @"userCity": @"user_city", @"userLocality": @"user_locality", @"userPlaysBadminton": @"user_plays_badminton", @"userPlaysTennis": @"user_plays_tennis", @"userPlaysSquash": @"user_plays_squash", @"userBadmintonStats": @"user_badminton_stats", @"userTennisStats": @"user_tennis_stats", @"userSquashStats": @"user_squash_stats", @"userIsReal": @"user_is_real", @"userLevel": @"user_level", @"userBirthdate": @"user_birthdate", @"userClubs": @"user_clubs", @"userStatusMessage": @"user_status_message" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"userFirstName", @"userLastName", @"email", @"userMobileNo", @"userProfilePicUrl", @"userSocialId", @"userHandedness", @"userGender", @"userCity", @"userLocality", @"userPlaysBadminton", @"userPlaysTennis", @"userPlaysSquash", @"userBadmintonStats", @"userTennisStats", @"userSquashStats", @"userIsReal", @"userLevel", @"userBirthdate", @"userClubs", @"userStatusMessage"];
  return [optionalProperties containsObject:propertyName];
}

@end
