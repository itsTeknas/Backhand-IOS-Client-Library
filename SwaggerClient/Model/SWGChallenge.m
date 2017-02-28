#import "SWGChallenge.h"

@implementation SWGChallenge

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"challengeId": @"challenge_id", @"challengeTs": @"challenge_ts", @"challengeUpdatedTs": @"challenge_updated_ts", @"challengeSport": @"challenge_sport", @"challengeType": @"challenge_type", @"challengeChallengerPlayer1": @"challenge_challenger_player1", @"challengeChallengerPlayer2": @"challenge_challenger_player2", @"challengeOppositionPlayer1": @"challenge_opposition_player1", @"challengeOppositionPlayer2": @"challenge_opposition_player2", @"challengeClubId": @"challenge_club_id", @"challengeStatus": @"challenge_status", @"challengeChallengerPlayer1Profile": @"challenge_challenger_player1_profile", @"challengeChallengerPlayer2Profile": @"challenge_challenger_player2_profile", @"challengeOppositionPlayer1Profile": @"challenge_opposition_player1_profile", @"challengeOppositionPlayer2Profile": @"challenge_opposition_player2_profile" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"challengeTs", @"challengeUpdatedTs", @"challengeChallengerPlayer2", @"challengeOppositionPlayer2", @"challengeClubId", @"challengeStatus", @"challengeChallengerPlayer2Profile", @"challengeOppositionPlayer2Profile"];
  return [optionalProperties containsObject:propertyName];
}

@end
