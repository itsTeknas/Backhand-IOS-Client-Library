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




@protocol SWGUser
@end

@interface SWGUser : SWGObject


@property(nonatomic) NSNumber* userId;

@property(nonatomic) NSString* userFirstName;

@property(nonatomic) NSString* userLastName;

@property(nonatomic) NSString* email;

@property(nonatomic) NSString* userMobileNo;

@property(nonatomic) NSString* userProfilePicUrl;

@property(nonatomic) NSString* userSocialId;

@property(nonatomic) NSString* userHandedness;

@property(nonatomic) NSString* userGender;

@property(nonatomic) NSString* userCity;

@property(nonatomic) NSNumber* userPlaysBadminton;

@property(nonatomic) NSNumber* userPlaysSquash;

@property(nonatomic) NSNumber* userPlaysTennis;

@property(nonatomic) NSNumber* userIsReal;

@property(nonatomic) NSNumber* userLevel;

@property(nonatomic) NSNumber* userPlayingSince;
/* DD/MM//YYYY [optional]
 */
@property(nonatomic) NSString* userBirthdate;
/* Total matches played [optional]
 */
@property(nonatomic) NSNumber* userMatches;
/* Win rate of the user in percentage [optional]
 */
@property(nonatomic) NSNumber* userWinRate;
/* No of Stars [optional]
 */
@property(nonatomic) NSNumber* userProfileRating;

@end
