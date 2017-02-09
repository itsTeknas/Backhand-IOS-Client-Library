# SwaggerClient

Apis to access Backhand backend services

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.1
- Package version: 
- Build package: io.swagger.codegen.languages.ObjcClientCodegen
For more information, please visit [www.blackcurrantapps.com](www.blackcurrantapps.com)

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'SwaggerClient', :git => 'https://github.com/sanket0007/Backhand-IOS-Client-Library.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/SwaggerClient) and then add the following to the Podfile:

```ruby
pod 'SwaggerClient', :path => 'Vendor/SwaggerClient'
```

### Usage

Import the following:

```objc
#import <SwaggerClient/SWGApiClient.h>
#import <SwaggerClient/SWGConfiguration.h>
// load models
#import <SwaggerClient/SWGAuthSuccess.h>
#import <SwaggerClient/SWGChallenge.h>
#import <SwaggerClient/SWGClub.h>
#import <SwaggerClient/SWGClubParticipants.h>
#import <SwaggerClient/SWGEvent.h>
#import <SwaggerClient/SWGGame.h>
#import <SwaggerClient/SWGScoreboard.h>
#import <SwaggerClient/SWGUser.h>
#import <SwaggerClient/SWGUserShortProfile.h>
#import <SwaggerClient/SWGUserSportDetails.h>
#import <SwaggerClient/SWGUserUserClubs.h>
// load API classes for accessing endpoints
#import <SwaggerClient/SWGAdminApi.h>
#import <SwaggerClient/SWGAuthenticationApi.h>
#import <SwaggerClient/SWGUserApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* *eventName = @"eventName_example"; // Event Name
NSString* *eventDescription = @"eventDescription_example"; // Description
NSString* *eventCity = @"eventCity_example"; // City
NSString* *eventGameSport = @"eventGameSport_example"; // Sport
NSString* *eventStartDate = @"eventStartDate_example"; // Start Date Format DD/MM/YYYY
NSString* *eventEndDate = @"eventEndDate_example"; // End Date Format DD/MM/YYYY
NSString* *eventBackgroundPicture = @"eventBackgroundPicture_example"; // Picture URL
NSString* *eventLat = @"eventLat_example"; // Event ID
NSString* *eventLon = @"eventLon_example"; // Event ID

SWGAdminApi *apiInstance = [[SWGAdminApi alloc] init];

// Create a new event
[apiInstance createEventPostWithEventName:eventName
    eventDescription:eventDescription
    eventCity:eventCity
    eventGameSport:eventGameSport
    eventStartDate:eventStartDate
    eventEndDate:eventEndDate
    eventBackgroundPicture:eventBackgroundPicture
    eventLat:eventLat
    eventLon:eventLon
              completionHandler: ^(SWGEvent* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *http://www.back-hand.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SWGAdminApi* | [**createEventPost**](docs/SWGAdminApi.md#createeventpost) | **POST** /create_event | Create a new event
*SWGAdminApi* | [**uploadPicturePost**](docs/SWGAdminApi.md#uploadpicturepost) | **POST** /upload_picture | Upload a picture
*SWGAuthenticationApi* | [**authenticateFacebookPost**](docs/SWGAuthenticationApi.md#authenticatefacebookpost) | **POST** /authenticate/facebook | FB Login
*SWGAuthenticationApi* | [**authenticateSignupPost**](docs/SWGAuthenticationApi.md#authenticatesignuppost) | **POST** /authenticate/signup | Sign up new user
*SWGAuthenticationApi* | [**oauthTokenPost**](docs/SWGAuthenticationApi.md#oauthtokenpost) | **POST** /oauth/token | Password Login
*SWGUserApi* | [**addSportPost**](docs/SWGUserApi.md#addsportpost) | **POST** /add_sport | Add sport to user profile
*SWGUserApi* | [**deleteSportPost**](docs/SWGUserApi.md#deletesportpost) | **POST** /delete_sport | Delete sport to user profile
*SWGUserApi* | [**getChallengeRecommendationsGet**](docs/SWGUserApi.md#getchallengerecommendationsget) | **GET** /get_challenge_recommendations | Get challenge recommendations
*SWGUserApi* | [**getCitiesGet**](docs/SWGUserApi.md#getcitiesget) | **GET** /get_cities | Get List of Cities
*SWGUserApi* | [**getClubsGet**](docs/SWGUserApi.md#getclubsget) | **GET** /get_clubs | Get List of Clubs
*SWGUserApi* | [**getClubsParticipantsGet**](docs/SWGUserApi.md#getclubsparticipantsget) | **GET** /get_clubs_participants | Get Club Participants
*SWGUserApi* | [**getEventsGet**](docs/SWGUserApi.md#geteventsget) | **GET** /get_events | Get List of Events
*SWGUserApi* | [**getFeaturedPlayersPost**](docs/SWGUserApi.md#getfeaturedplayerspost) | **POST** /get_featured_players | Get Players List to load in add sport screen
*SWGUserApi* | [**getMyChallengesGet**](docs/SWGUserApi.md#getmychallengesget) | **GET** /get_my_challenges | Get challenges
*SWGUserApi* | [**getScoreboardGet**](docs/SWGUserApi.md#getscoreboardget) | **GET** /get_scoreboard | Get Scoreboard for a sport
*SWGUserApi* | [**getSelfProfileGet**](docs/SWGUserApi.md#getselfprofileget) | **GET** /get_self_profile | Get Authenticated user&#39;s profile
*SWGUserApi* | [**getUserPost**](docs/SWGUserApi.md#getuserpost) | **POST** /get_user | Get user profile
*SWGUserApi* | [**newChallengePost**](docs/SWGUserApi.md#newchallengepost) | **POST** /new_challenge | Challenge someone for a game
*SWGUserApi* | [**newGamePost**](docs/SWGUserApi.md#newgamepost) | **POST** /new_game | Make a new game
*SWGUserApi* | [**notifyNewMessagePost**](docs/SWGUserApi.md#notifynewmessagepost) | **POST** /notify_new_message | Push Notify User
*SWGUserApi* | [**searchUsersPost**](docs/SWGUserApi.md#searchuserspost) | **POST** /search_users | Query Users
*SWGUserApi* | [**updateFavouritePlayerPost**](docs/SWGUserApi.md#updatefavouriteplayerpost) | **POST** /update_favourite_player | Update favourite player
*SWGUserApi* | [**updateProfilePicturePost**](docs/SWGUserApi.md#updateprofilepicturepost) | **POST** /update_profile_picture | Update profile picture
*SWGUserApi* | [**updateProfilePost**](docs/SWGUserApi.md#updateprofilepost) | **POST** /update_profile | Update Profile
*SWGUserApi* | [**updateStatusMessagePost**](docs/SWGUserApi.md#updatestatusmessagepost) | **POST** /update_status_message | Update profile picture
*SWGUserApi* | [**verifyGamePost**](docs/SWGUserApi.md#verifygamepost) | **POST** /verify_game | Verify the score


## Documentation For Models

 - [SWGAuthSuccess](docs/SWGAuthSuccess.md)
 - [SWGChallenge](docs/SWGChallenge.md)
 - [SWGClub](docs/SWGClub.md)
 - [SWGClubParticipants](docs/SWGClubParticipants.md)
 - [SWGEvent](docs/SWGEvent.md)
 - [SWGGame](docs/SWGGame.md)
 - [SWGScoreboard](docs/SWGScoreboard.md)
 - [SWGUser](docs/SWGUser.md)
 - [SWGUserShortProfile](docs/SWGUserShortProfile.md)
 - [SWGUserSportDetails](docs/SWGUserSportDetails.md)
 - [SWGUserUserClubs](docs/SWGUserUserClubs.md)


## Documentation For Authorization


## TokenAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

sanket@blackcurrantapps.com


