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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"user_id", @"userFirstName": @"user_first_name", @"userLastName": @"user_last_name", @"email": @"email", @"userMobileNo": @"user_mobile_no", @"userProfilePicUrl": @"user_profile_pic_url", @"userSocialId": @"user_social_id", @"userHandedness": @"user_handedness", @"userGender": @"user_gender", @"userCity": @"user_city", @"userPlaysBadminton": @"user_plays_badminton", @"userPlaysSquash": @"user_plays_squash", @"userPlaysTennis": @"user_plays_tennis", @"userIsReal": @"user_is_real", @"userLevel": @"user_level", @"userPlayingSince": @"user_playing_since", @"userBirthdate": @"user_birthdate", @"userMatches": @"user_matches", @"userWinRate": @"user_win_rate", @"userProfileRating": @"user_profile_rating" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"userFirstName", @"userLastName", @"email", @"userMobileNo", @"userProfilePicUrl", @"userSocialId", @"userHandedness", @"userGender", @"userCity", @"userPlaysBadminton", @"userPlaysSquash", @"userPlaysTennis", @"userIsReal", @"userLevel", @"userPlayingSince", @"userBirthdate", @"userMatches", @"userWinRate", @"userProfileRating"];
  return [optionalProperties containsObject:propertyName];
}

@end
