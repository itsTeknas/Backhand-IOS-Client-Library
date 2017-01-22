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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"user_id", @"userFirstName": @"user_first_name", @"userLastName": @"user_last_name", @"email": @"email", @"userMobileNo": @"user_mobile_no", @"userProfilePicUrl": @"user_profile_pic_url", @"userSocialId": @"user_social_id", @"userHandedness": @"user_handedness", @"userGender": @"user_gender", @"userCity": @"user_city", @"userPlayesBadminton": @"user_playes_badminton", @"userPlayesTennis": @"user_playes_tennis", @"userPlayesSquash": @"user_playes_squash", @"userBadmintonStats": @"user_badminton_stats", @"userTennisStats": @"user_tennis_stats", @"userSquashStats": @"user_squash_stats", @"userIsReal": @"user_is_real", @"userLevel": @"user_level", @"userBirthdate": @"user_birthdate", @"userLocationString": @"user_location_string", @"userClubs": @"user_clubs", @"userStatusMessage": @"user_status_message", @"userCumilativeMatches": @"user_cumilative_matches", @"userCumilativeWinRate": @"user_cumilative_win_rate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"userFirstName", @"userLastName", @"email", @"userMobileNo", @"userProfilePicUrl", @"userSocialId", @"userHandedness", @"userGender", @"userCity", @"userPlayesBadminton", @"userPlayesTennis", @"userPlayesSquash", @"userBadmintonStats", @"userTennisStats", @"userSquashStats", @"userIsReal", @"userLevel", @"userBirthdate", @"userLocationString", @"userClubs", @"userStatusMessage", @"userCumilativeMatches", @"userCumilativeWinRate"];
  return [optionalProperties containsObject:propertyName];
}

@end
