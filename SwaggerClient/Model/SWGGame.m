#import "SWGGame.h"

@implementation SWGGame

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"gameId": @"game_id", @"gameSport": @"game_sport", @"gameClub": @"game_club", @"gameClubId": @"game_club_id", @"gameType": @"game_type", @"gameChallengerScore": @"game_challenger_score", @"gameOppositionScore": @"game_opposition_score", @"gameChallengerPlayer1": @"game_challenger_player1", @"gameChallengerPlayer2": @"game_challenger_player2", @"gameOppositionPlayer1": @"game_opposition_player1", @"gameOppositionPlayer2": @"game_opposition_player2", @"gameStatus": @"game_status", @"gameCreatedTs": @"game_created_ts", @"gameVerifiedTs": @"game_verified_ts", @"gameChallengerPlayer1Profile": @"game_challenger_player1_profile", @"gameChallengerPlayer2Profile": @"game_challenger_player2_profile", @"gameOppositionPlayer1Profile": @"game_opposition_player1_profile", @"gameOppositionPlayer2Profile": @"game_opposition_player2_profile" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"gameClub", @"gameClubId", @"gameChallengerPlayer2", @"gameOppositionPlayer2", @"gameCreatedTs", @"gameVerifiedTs", @"gameChallengerPlayer2Profile", @"gameOppositionPlayer2Profile"];
  return [optionalProperties containsObject:propertyName];
}

@end
