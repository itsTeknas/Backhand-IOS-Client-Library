#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Backhand Api
* Apis to access Backhand backend services
*
* OpenAPI spec version: 0.0.1
* Contact: sanket@blackcurrantapps.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "SWGUserShortProfile.h"


@protocol SWGGame
@end

@interface SWGGame : SWGObject


@property(nonatomic) NSNumber* gameId;

@property(nonatomic) NSString* gameSport;

@property(nonatomic) NSString* gameType;

@property(nonatomic) NSNumber* gameChallengerScore;

@property(nonatomic) NSNumber* gameOppositionScore;

@property(nonatomic) NSNumber* gameChallengerPlayer1;

@property(nonatomic) NSNumber* gameChallengerPlayer2;

@property(nonatomic) NSNumber* gameOppositionPlayer1;

@property(nonatomic) NSNumber* gameOppositionPlayer2;

@property(nonatomic) NSNumber* gameIsVerified;

@property(nonatomic) NSString* gameCreatedTs;

@property(nonatomic) NSString* gameVerifiedTs;

@property(nonatomic) SWGUserShortProfile* gameChallengerPlayer1Profile;

@property(nonatomic) SWGUserShortProfile* gameChallengerPlayer2Profile;

@property(nonatomic) SWGUserShortProfile* gameOppositionPlayer1Profile;

@property(nonatomic) SWGUserShortProfile* gameOppositionPlayer2Profile;

@end
