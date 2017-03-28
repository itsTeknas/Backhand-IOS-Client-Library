#import "SWGFeaturedPlayer.h"

@implementation SWGFeaturedPlayer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"playerId": @"player_id", @"playerName": @"player_name", @"playerWikipediaUrl": @"player_wikipedia_url", @"playerSport": @"player_sport", @"playerProfilePicUrl": @"player_profile_pic_url", @"playerHomeCountry": @"player_home_country", @"playerHandedness": @"player_handedness", @"playerTitlesWon": @"player_titles_won", @"playerPlayingSince": @"player_playing_since", @"playerTotalMatches": @"player_total_matches", @"playerWinRate": @"player_win_rate", @"playerBrief": @"player_brief" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"playerId", @"playerName", @"playerWikipediaUrl", @"playerSport", @"playerProfilePicUrl", @"playerHomeCountry", @"playerHandedness", @"playerTitlesWon", @"playerPlayingSince", @"playerTotalMatches", @"playerWinRate", @"playerBrief"];
  return [optionalProperties containsObject:propertyName];
}

@end
