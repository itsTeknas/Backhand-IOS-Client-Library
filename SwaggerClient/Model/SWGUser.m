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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"user_id", @"userFirstName": @"user_first_name", @"userLastName": @"user_last_name", @"email": @"email", @"userMobileNo": @"user_mobile_no", @"userProfilePicUrl": @"user_profile_pic_url", @"userSocialId": @"user_social_id", @"userHandedness": @"user_handedness", @"userGender": @"user_gender", @"userCity": @"user_city", @"userLocality": @"user_locality", @"userIsReal": @"user_is_real", @"userBirthdate": @"user_birthdate", @"userAge": @"user_age", @"userStatusMessage": @"user_status_message", @"userPlaysBadminton": @"user_plays_badminton", @"userSkillLevelBadminton": @"user_skill_level_badminton", @"userWinRateBadminton": @"user_win_rate_badminton", @"userPlayingBadmintonSince": @"user_playing_badminton_since", @"userBadmintonFavouritePlayer": @"user_badminton_favourite_player", @"userTotalMatchesBadminton": @"user_total_matches_badminton", @"userPlaysTennis": @"user_plays_tennis", @"userSkillLevelTennis": @"user_skill_level_tennis", @"userPlayingTennisSince": @"user_playing_tennis_since", @"userTennisFavouritePlayer": @"user_tennis_favourite_player", @"userTotalMatchesTennis": @"user_total_matches_tennis", @"userWinRateTennis": @"user_win_rate_tennis", @"userPlaysSquash": @"user_plays_squash", @"userSkillLevelSquash": @"user_skill_level_squash", @"userPlayingSquashSince": @"user_playing_squash_since", @"userSquashFavouritePlayer": @"user_squash_favourite_player", @"userTotalMatchesSquash": @"user_total_matches_squash", @"userWinRateSquash": @"user_win_rate_squash", @"userClubs": @"user_clubs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"userFirstName", @"userLastName", @"email", @"userMobileNo", @"userProfilePicUrl", @"userSocialId", @"userHandedness", @"userGender", @"userCity", @"userLocality", @"userIsReal", @"userBirthdate", @"userAge", @"userStatusMessage", @"userPlaysBadminton", @"userSkillLevelBadminton", @"userWinRateBadminton", @"userPlayingBadmintonSince", @"userBadmintonFavouritePlayer", @"userTotalMatchesBadminton", @"userPlaysTennis", @"userSkillLevelTennis", @"userPlayingTennisSince", @"userTennisFavouritePlayer", @"userTotalMatchesTennis", @"userWinRateTennis", @"userPlaysSquash", @"userSkillLevelSquash", @"userPlayingSquashSince", @"userSquashFavouritePlayer", @"userTotalMatchesSquash", @"userWinRateSquash", @"userClubs"];
  return [optionalProperties containsObject:propertyName];
}

@end
