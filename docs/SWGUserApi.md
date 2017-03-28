# SWGUserApi

All URIs are relative to *http://www.back-hand.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptChallengePost**](SWGUserApi.md#acceptchallengepost) | **POST** /accept_challenge | Accept Challenge
[**addSportPost**](SWGUserApi.md#addsportpost) | **POST** /add_sport | Add sport to user profile
[**deleteSportPost**](SWGUserApi.md#deletesportpost) | **POST** /delete_sport | Delete sport to user profile
[**emailInvitePost**](SWGUserApi.md#emailinvitepost) | **POST** /email_invite | Invite user by email
[**getAvailabilityGet**](SWGUserApi.md#getavailabilityget) | **GET** /get_availability | Get featured players
[**getAvailableUsersGet**](SWGUserApi.md#getavailableusersget) | **GET** /get_available_users | Get available users on a date
[**getChallengeRecommendationsGet**](SWGUserApi.md#getchallengerecommendationsget) | **GET** /get_challenge_recommendations | Get challenge recommendations
[**getCitiesGet**](SWGUserApi.md#getcitiesget) | **GET** /get_cities | Get List of Cities
[**getClubsGet**](SWGUserApi.md#getclubsget) | **GET** /get_clubs | Get List of Clubs
[**getEventsGet**](SWGUserApi.md#geteventsget) | **GET** /get_events | Get List of Events
[**getFeaturedPlayersGet**](SWGUserApi.md#getfeaturedplayersget) | **GET** /get_featured_players | Get featured players
[**getMyChallengesGet**](SWGUserApi.md#getmychallengesget) | **GET** /get_my_challenges | Get challenges
[**getNewsGet**](SWGUserApi.md#getnewsget) | **GET** /get_news | Get news
[**getPendingGamesGet**](SWGUserApi.md#getpendinggamesget) | **GET** /get_pending_games | Get all pending games
[**getScoreboardGet**](SWGUserApi.md#getscoreboardget) | **GET** /get_scoreboard | Get Scoreboard for a sport
[**getSelfProfileGet**](SWGUserApi.md#getselfprofileget) | **GET** /get_self_profile | Get Authenticated user&#39;s profile
[**getUserPost**](SWGUserApi.md#getuserpost) | **POST** /get_user | Get user profile
[**markAvailabilityPost**](SWGUserApi.md#markavailabilitypost) | **POST** /mark_availability | Mark Availability
[**newChallengePost**](SWGUserApi.md#newchallengepost) | **POST** /new_challenge | Challenge someone for a game
[**newGamePost**](SWGUserApi.md#newgamepost) | **POST** /new_game | Make a new game
[**notifyNewMessagePost**](SWGUserApi.md#notifynewmessagepost) | **POST** /notify_new_message | Push Notify User
[**pseudoSignupUserPost**](SWGUserApi.md#pseudosignupuserpost) | **POST** /pseudo_signup_user | pseudo signup user
[**rejectChallengePost**](SWGUserApi.md#rejectchallengepost) | **POST** /reject_challenge | Reject Challenge
[**rejectGamePost**](SWGUserApi.md#rejectgamepost) | **POST** /reject_game | Reject pending score
[**searchUsersPost**](SWGUserApi.md#searchuserspost) | **POST** /search_users | Search Users
[**shareGameEmailPost**](SWGUserApi.md#sharegameemailpost) | **POST** /share_game_email | Share a game by email
[**shareGameSmsPost**](SWGUserApi.md#sharegamesmspost) | **POST** /share_game_sms | Share a game by sms
[**smsInvitePost**](SWGUserApi.md#smsinvitepost) | **POST** /sms_invite | Invite user by sms
[**suggestClubAdditionPost**](SWGUserApi.md#suggestclubadditionpost) | **POST** /suggest_club_addition | suggest addition of a club
[**updateFavouritePlayerPost**](SWGUserApi.md#updatefavouriteplayerpost) | **POST** /update_favourite_player | Update favourite player
[**updateFcmInstanceIdPost**](SWGUserApi.md#updatefcminstanceidpost) | **POST** /update_fcm_instance_id | Update FCM InstanceID
[**updateProfilePicturePost**](SWGUserApi.md#updateprofilepicturepost) | **POST** /update_profile_picture | Update profile picture
[**updateProfilePost**](SWGUserApi.md#updateprofilepost) | **POST** /update_profile | Update Profile
[**updateStatusMessagePost**](SWGUserApi.md#updatestatusmessagepost) | **POST** /update_status_message | Update status message
[**verifyGamePost**](SWGUserApi.md#verifygamepost) | **POST** /verify_game | Verify pending score


# **acceptChallengePost**
```objc
-(NSURLSessionTask*) acceptChallengePostWithChallengeId: (NSNumber*) challengeId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Accept Challenge

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* challengeId = @789; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Accept Challenge
[apiInstance acceptChallengePostWithChallengeId:challengeId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->acceptChallengePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeId** | **NSNumber***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addSportPost**
```objc
-(NSURLSessionTask*) addSportPostWithSport: (NSString*) sport
    skillLevel: (NSNumber*) skillLevel
    favouritePlayer: (NSString*) favouritePlayer
    playingSince: (NSNumber*) playingSince
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Add sport to user profile

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum
NSNumber* skillLevel = @56; // 
NSString* favouritePlayer = @"favouritePlayer_example"; // 
NSNumber* playingSince = @56; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Add sport to user profile
[apiInstance addSportPostWithSport:sport
              skillLevel:skillLevel
              favouritePlayer:favouritePlayer
              playingSince:playingSince
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->addSportPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | 
 **skillLevel** | **NSNumber***|  | 
 **favouritePlayer** | **NSString***|  | 
 **playingSince** | **NSNumber***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSportPost**
```objc
-(NSURLSessionTask*) deleteSportPostWithSport: (NSString*) sport
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Delete sport to user profile

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Delete sport to user profile
[apiInstance deleteSportPostWithSport:sport
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->deleteSportPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailInvitePost**
```objc
-(NSURLSessionTask*) emailInvitePostWithEmail: (NSString*) email
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Invite user by email

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* email = @"email_example"; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Invite user by email
[apiInstance emailInvitePostWithEmail:email
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->emailInvitePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailabilityGet**
```objc
-(NSURLSessionTask*) getAvailabilityGetWithUserId: (NSNumber*) userId
        completionHandler: (void (^)(NSArray<SWGAvailability>* output, NSError* error)) handler;
```

Get featured players

get the availability for the next 10 days for the selected user

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* userId = @789; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get featured players
[apiInstance getAvailabilityGetWithUserId:userId
          completionHandler: ^(NSArray<SWGAvailability>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getAvailabilityGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSNumber***|  | 

### Return type

[**NSArray<SWGAvailability>***](SWGAvailability.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableUsersGet**
```objc
-(NSURLSessionTask*) getAvailableUsersGetWithDate: (NSString*) date
    sport: (NSString*) sport
    city: (NSString*) city
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGUser>* output, NSError* error)) handler;
```

Get available users on a date

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* date = @"date_example"; // DD/MM/YYYY
NSString* sport = @"sport_example"; // Sport Enum
NSString* city = @"city_example"; // city filter (optional)
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get available users on a date
[apiInstance getAvailableUsersGetWithDate:date
              sport:sport
              city:city
              limit:limit
          completionHandler: ^(NSArray<SWGUser>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getAvailableUsersGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **NSString***| DD/MM/YYYY | 
 **sport** | **NSString***| Sport Enum | 
 **city** | **NSString***| city filter | [optional] 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**NSArray<SWGUser>***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeRecommendationsGet**
```objc
-(NSURLSessionTask*) getChallengeRecommendationsGetWithSport: (NSString*) sport
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGUser>* output, NSError* error)) handler;
```

Get challenge recommendations

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum (optional)
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get challenge recommendations
[apiInstance getChallengeRecommendationsGetWithSport:sport
              limit:limit
          completionHandler: ^(NSArray<SWGUser>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getChallengeRecommendationsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | [optional] 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**NSArray<SWGUser>***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCitiesGet**
```objc
-(NSURLSessionTask*) getCitiesGetWithCompletionHandler: 
        (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Get List of Cities

Get list of clubs for user's city

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];



SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get List of Cities
[apiInstance getCitiesGetWithCompletionHandler: 
          ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getCitiesGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSArray<NSString*>***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClubsGet**
```objc
-(NSURLSessionTask*) getClubsGetWithSearchString: (NSString*) searchString
    city: (NSString*) city
    locality: (NSString*) locality
    sport: (NSString*) sport
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGClub>* output, NSError* error)) handler;
```

Get List of Clubs

Get list of clubs for user's city

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* searchString = @"searchString_example"; // Search String (optional)
NSString* city = @"city_example"; // City (optional)
NSString* locality = @"locality_example"; // Locality Search (optional)
NSString* sport = @"sport_example"; // Sport Enum (optional)
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get List of Clubs
[apiInstance getClubsGetWithSearchString:searchString
              city:city
              locality:locality
              sport:sport
              limit:limit
          completionHandler: ^(NSArray<SWGClub>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getClubsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchString** | **NSString***| Search String | [optional] 
 **city** | **NSString***| City | [optional] 
 **locality** | **NSString***| Locality Search | [optional] 
 **sport** | **NSString***| Sport Enum | [optional] 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**NSArray<SWGClub>***](SWGClub.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventsGet**
```objc
-(NSURLSessionTask*) getEventsGetWithSport: (NSString*) sport
    city: (NSString*) city
        completionHandler: (void (^)(NSArray<SWGEvent>* output, NSError* error)) handler;
```

Get List of Events

Get list of events for a city

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum
NSString* city = @"city_example"; // City

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get List of Events
[apiInstance getEventsGetWithSport:sport
              city:city
          completionHandler: ^(NSArray<SWGEvent>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getEventsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | 
 **city** | **NSString***| City | 

### Return type

[**NSArray<SWGEvent>***](SWGEvent.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeaturedPlayersGet**
```objc
-(NSURLSessionTask*) getFeaturedPlayersGetWithSport: (NSString*) sport
        completionHandler: (void (^)(NSArray<SWGFeaturedPlayer>* output, NSError* error)) handler;
```

Get featured players

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get featured players
[apiInstance getFeaturedPlayersGetWithSport:sport
          completionHandler: ^(NSArray<SWGFeaturedPlayer>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getFeaturedPlayersGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | 

### Return type

[**NSArray<SWGFeaturedPlayer>***](SWGFeaturedPlayer.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyChallengesGet**
```objc
-(NSURLSessionTask*) getMyChallengesGetWithLimit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGChallenge>* output, NSError* error)) handler;
```

Get challenges

A list of challenges

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get challenges
[apiInstance getMyChallengesGetWithLimit:limit
          completionHandler: ^(NSArray<SWGChallenge>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getMyChallengesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**NSArray<SWGChallenge>***](SWGChallenge.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNewsGet**
```objc
-(NSURLSessionTask*) getNewsGetWithSport: (NSString*) sport
        completionHandler: (void (^)(NSArray<SWGNews>* output, NSError* error)) handler;
```

Get news

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get news
[apiInstance getNewsGetWithSport:sport
          completionHandler: ^(NSArray<SWGNews>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getNewsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | 

### Return type

[**NSArray<SWGNews>***](SWGNews.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPendingGamesGet**
```objc
-(NSURLSessionTask*) getPendingGamesGetWithSport: (NSString*) sport
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGGame>* output, NSError* error)) handler;
```

Get all pending games

A list of games that are validated by the opoonent.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum (optional)
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get all pending games
[apiInstance getPendingGamesGetWithSport:sport
              limit:limit
          completionHandler: ^(NSArray<SWGGame>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getPendingGamesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | [optional] 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**NSArray<SWGGame>***](SWGGame.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScoreboardGet**
```objc
-(NSURLSessionTask*) getScoreboardGetWithSport: (NSString*) sport
    limit: (NSNumber*) limit
    timeFilter: (NSString*) timeFilter
        completionHandler: (void (^)(SWGScoreboard* output, NSError* error)) handler;
```

Get Scoreboard for a sport

A list of games that are validated by the opoonent.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)
NSString* timeFilter = @"timeFilter_example"; // time filter (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get Scoreboard for a sport
[apiInstance getScoreboardGetWithSport:sport
              limit:limit
              timeFilter:timeFilter
          completionHandler: ^(SWGScoreboard* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getScoreboardGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]
 **timeFilter** | **NSString***| time filter | [optional] 

### Return type

[**SWGScoreboard***](SWGScoreboard.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelfProfileGet**
```objc
-(NSURLSessionTask*) getSelfProfileGetWithCompletionHandler: 
        (void (^)(SWGUser* output, NSError* error)) handler;
```

Get Authenticated user's profile

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];



SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get Authenticated user's profile
[apiInstance getSelfProfileGetWithCompletionHandler: 
          ^(SWGUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getSelfProfileGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGUser***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserPost**
```objc
-(NSURLSessionTask*) getUserPostWithUserId: (NSNumber*) userId
        completionHandler: (void (^)(SWGUser* output, NSError* error)) handler;
```

Get user profile

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* userId = @789; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get user profile
[apiInstance getUserPostWithUserId:userId
          completionHandler: ^(SWGUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getUserPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSNumber***|  | 

### Return type

[**SWGUser***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markAvailabilityPost**
```objc
-(NSURLSessionTask*) markAvailabilityPostWithDate: (NSString*) date
    time: (NSString*) time
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Mark Availability

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* date = @"date_example"; // DD/MM/YYYY
NSString* time = @"time_example"; // 24 Hrs format ex. 22:30

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Mark Availability
[apiInstance markAvailabilityPostWithDate:date
              time:time
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->markAvailabilityPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **NSString***| DD/MM/YYYY | 
 **time** | **NSString***| 24 Hrs format ex. 22:30 | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newChallengePost**
```objc
-(NSURLSessionTask*) newChallengePostWithGameSport: (NSString*) gameSport
    gameType: (NSString*) gameType
    gameOppositionPlayer1: (NSNumber*) gameOppositionPlayer1
    gameChallengerPlayer2: (NSNumber*) gameChallengerPlayer2
    gameOppositionPlayer2: (NSNumber*) gameOppositionPlayer2
        completionHandler: (void (^)(SWGChallenge* output, NSError* error)) handler;
```

Challenge someone for a game

Create a new challenge and send a push notification to opponents.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* gameSport = @"gameSport_example"; // 
NSString* gameType = @"gameType_example"; // 
NSNumber* gameOppositionPlayer1 = @789; // 
NSNumber* gameChallengerPlayer2 = @789; //  (optional)
NSNumber* gameOppositionPlayer2 = @789; //  (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Challenge someone for a game
[apiInstance newChallengePostWithGameSport:gameSport
              gameType:gameType
              gameOppositionPlayer1:gameOppositionPlayer1
              gameChallengerPlayer2:gameChallengerPlayer2
              gameOppositionPlayer2:gameOppositionPlayer2
          completionHandler: ^(SWGChallenge* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->newChallengePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameSport** | **NSString***|  | 
 **gameType** | **NSString***|  | 
 **gameOppositionPlayer1** | **NSNumber***|  | 
 **gameChallengerPlayer2** | **NSNumber***|  | [optional] 
 **gameOppositionPlayer2** | **NSNumber***|  | [optional] 

### Return type

[**SWGChallenge***](SWGChallenge.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newGamePost**
```objc
-(NSURLSessionTask*) newGamePostWithGameSport: (NSString*) gameSport
    gameType: (NSString*) gameType
    gameClub: (NSString*) gameClub
    gameClubId: (NSNumber*) gameClubId
    gameChallengerScore: (NSNumber*) gameChallengerScore
    gameOppositionScore: (NSNumber*) gameOppositionScore
    gameOppositionPlayer1: (NSNumber*) gameOppositionPlayer1
    gameChallengerPlayer2: (NSNumber*) gameChallengerPlayer2
    gameOppositionPlayer2: (NSNumber*) gameOppositionPlayer2
        completionHandler: (void (^)(SWGGame* output, NSError* error)) handler;
```

Make a new game

Create a new game and send a push notification to opponents to verify the same.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* gameSport = @"gameSport_example"; // 
NSString* gameType = @"gameType_example"; // 
NSString* gameClub = @"gameClub_example"; // 
NSNumber* gameClubId = @789; // 
NSNumber* gameChallengerScore = @56; // 
NSNumber* gameOppositionScore = @56; // 
NSNumber* gameOppositionPlayer1 = @789; // 
NSNumber* gameChallengerPlayer2 = @789; //  (optional)
NSNumber* gameOppositionPlayer2 = @789; //  (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Make a new game
[apiInstance newGamePostWithGameSport:gameSport
              gameType:gameType
              gameClub:gameClub
              gameClubId:gameClubId
              gameChallengerScore:gameChallengerScore
              gameOppositionScore:gameOppositionScore
              gameOppositionPlayer1:gameOppositionPlayer1
              gameChallengerPlayer2:gameChallengerPlayer2
              gameOppositionPlayer2:gameOppositionPlayer2
          completionHandler: ^(SWGGame* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->newGamePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameSport** | **NSString***|  | 
 **gameType** | **NSString***|  | 
 **gameClub** | **NSString***|  | 
 **gameClubId** | **NSNumber***|  | 
 **gameChallengerScore** | **NSNumber***|  | 
 **gameOppositionScore** | **NSNumber***|  | 
 **gameOppositionPlayer1** | **NSNumber***|  | 
 **gameChallengerPlayer2** | **NSNumber***|  | [optional] 
 **gameOppositionPlayer2** | **NSNumber***|  | [optional] 

### Return type

[**SWGGame***](SWGGame.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notifyNewMessagePost**
```objc
-(NSURLSessionTask*) notifyNewMessagePostWithUserId: (NSNumber*) userId
    chatUid: (NSString*) chatUid
    message: (NSString*) message
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Push Notify User

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* userId = @789; // 
NSString* chatUid = @"chatUid_example"; // 
NSString* message = @"message_example"; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Push Notify User
[apiInstance notifyNewMessagePostWithUserId:userId
              chatUid:chatUid
              message:message
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->notifyNewMessagePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSNumber***|  | 
 **chatUid** | **NSString***|  | 
 **message** | **NSString***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pseudoSignupUserPost**
```objc
-(NSURLSessionTask*) pseudoSignupUserPostWithFirstName: (NSString*) firstName
    lastName: (NSString*) lastName
    gender: (NSString*) gender
        completionHandler: (void (^)(SWGUser* output, NSError* error)) handler;
```

pseudo signup user

Add user if it dosent exist. set user_is_real = false

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* firstName = @"firstName_example"; // 
NSString* lastName = @"lastName_example"; // 
NSString* gender = @"gender_example"; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// pseudo signup user
[apiInstance pseudoSignupUserPostWithFirstName:firstName
              lastName:lastName
              gender:gender
          completionHandler: ^(SWGUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->pseudoSignupUserPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstName** | **NSString***|  | 
 **lastName** | **NSString***|  | 
 **gender** | **NSString***|  | 

### Return type

[**SWGUser***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectChallengePost**
```objc
-(NSURLSessionTask*) rejectChallengePostWithChallengeId: (NSNumber*) challengeId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Reject Challenge

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* challengeId = @789; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Reject Challenge
[apiInstance rejectChallengePostWithChallengeId:challengeId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->rejectChallengePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeId** | **NSNumber***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectGamePost**
```objc
-(NSURLSessionTask*) rejectGamePostWithGameId: (NSNumber*) gameId
        completionHandler: (void (^)(SWGGame* output, NSError* error)) handler;
```

Reject pending score

Validate the score entered by an opponent.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* gameId = @789; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Reject pending score
[apiInstance rejectGamePostWithGameId:gameId
          completionHandler: ^(SWGGame* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->rejectGamePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameId** | **NSNumber***|  | 

### Return type

[**SWGGame***](SWGGame.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUsersPost**
```objc
-(NSURLSessionTask*) searchUsersPostWithQuery: (NSString*) query
    sport: (NSString*) sport
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGUser>* output, NSError* error)) handler;
```

Search Users

search users based on name / phone number / email / name / club

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* query = @"query_example"; // Search based on name, email, phone number
NSString* sport = @"sport_example"; // Sport Enum (optional)
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Search Users
[apiInstance searchUsersPostWithQuery:query
              sport:sport
              limit:limit
          completionHandler: ^(NSArray<SWGUser>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->searchUsersPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| Search based on name, email, phone number | 
 **sport** | **NSString***| Sport Enum | [optional] 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**NSArray<SWGUser>***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareGameEmailPost**
```objc
-(NSURLSessionTask*) shareGameEmailPostWithGameId: (NSNumber*) gameId
    email: (NSString*) email
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Share a game by email

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* gameId = @789; // 
NSString* email = @"email_example"; //  (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Share a game by email
[apiInstance shareGameEmailPostWithGameId:gameId
              email:email
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->shareGameEmailPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameId** | **NSNumber***|  | 
 **email** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareGameSmsPost**
```objc
-(NSURLSessionTask*) shareGameSmsPostWithGameId: (NSNumber*) gameId
    cell: (NSString*) cell
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Share a game by sms

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* gameId = @789; // 
NSString* cell = @"cell_example"; //  (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Share a game by sms
[apiInstance shareGameSmsPostWithGameId:gameId
              cell:cell
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->shareGameSmsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameId** | **NSNumber***|  | 
 **cell** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsInvitePost**
```objc
-(NSURLSessionTask*) smsInvitePostWithCell: (NSString*) cell
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Invite user by sms

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* cell = @"cell_example"; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Invite user by sms
[apiInstance smsInvitePostWithCell:cell
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->smsInvitePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cell** | **NSString***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggestClubAdditionPost**
```objc
-(NSURLSessionTask*) suggestClubAdditionPostWithClubName: (NSString*) clubName
    clubAddress: (NSString*) clubAddress
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

suggest addition of a club

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* clubName = @"clubName_example"; // 
NSString* clubAddress = @"clubAddress_example"; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// suggest addition of a club
[apiInstance suggestClubAdditionPostWithClubName:clubName
              clubAddress:clubAddress
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->suggestClubAdditionPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clubName** | **NSString***|  | 
 **clubAddress** | **NSString***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFavouritePlayerPost**
```objc
-(NSURLSessionTask*) updateFavouritePlayerPostWithSport: (NSString*) sport
    player: (NSString*) player
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Update favourite player

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // Sport Enum
NSString* player = @"player_example"; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Update favourite player
[apiInstance updateFavouritePlayerPostWithSport:sport
              player:player
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->updateFavouritePlayerPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sport** | **NSString***| Sport Enum | 
 **player** | **NSString***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFcmInstanceIdPost**
```objc
-(NSURLSessionTask*) updateFcmInstanceIdPostWithInstanceId: (NSString*) instanceId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Update FCM InstanceID

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceId = @"instanceId_example"; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Update FCM InstanceID
[apiInstance updateFcmInstanceIdPostWithInstanceId:instanceId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->updateFcmInstanceIdPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceId** | **NSString***|  | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfilePicturePost**
```objc
-(NSURLSessionTask*) updateProfilePicturePostWithFile: (NSURL*) file
        completionHandler: (void (^)(SWGUrl* output, NSError* error)) handler;
```

Update profile picture

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSURL* file = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // File to upload Accepted formats jpg,jpeg,png

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Update profile picture
[apiInstance updateProfilePicturePostWithFile:file
          completionHandler: ^(SWGUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->updateProfilePicturePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **NSURL***| File to upload Accepted formats jpg,jpeg,png | 

### Return type

[**SWGUrl***](SWGUrl.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfilePost**
```objc
-(NSURLSessionTask*) updateProfilePostWithMobileNumber: (NSString*) mobileNumber
    birthDate: (NSString*) birthDate
    handedness: (NSString*) handedness
    city: (NSString*) city
    locality: (NSString*) locality
    clubIds: (NSString*) clubIds
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Update Profile

If the profilePic file is provided, we save it and update the profile pic link in the user profile. Also, all other provided fileds are updated.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* mobileNumber = @"mobileNumber_example"; // 
NSString* birthDate = @"birthDate_example"; // format - DD/MM/YYYY
NSString* handedness = @"handedness_example"; // 
NSString* city = @"city_example"; // 
NSString* locality = @"locality_example"; // 
NSString* clubIds = @"clubIds_example"; //  (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Update Profile
[apiInstance updateProfilePostWithMobileNumber:mobileNumber
              birthDate:birthDate
              handedness:handedness
              city:city
              locality:locality
              clubIds:clubIds
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->updateProfilePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mobileNumber** | **NSString***|  | 
 **birthDate** | **NSString***| format - DD/MM/YYYY | 
 **handedness** | **NSString***|  | 
 **city** | **NSString***|  | 
 **locality** | **NSString***|  | 
 **clubIds** | **NSString***|  | [optional] 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStatusMessagePost**
```objc
-(NSURLSessionTask*) updateStatusMessagePostWithMessage: (NSString*) message
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Update status message

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* message = @"message_example"; // New Status Message

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Update status message
[apiInstance updateStatusMessagePostWithMessage:message
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->updateStatusMessagePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message** | **NSString***| New Status Message | 

### Return type

**NSObject***

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyGamePost**
```objc
-(NSURLSessionTask*) verifyGamePostWithGameId: (NSNumber*) gameId
        completionHandler: (void (^)(SWGGame* output, NSError* error)) handler;
```

Verify pending score

Validate the score entered by an opponent.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* gameId = @789; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Verify pending score
[apiInstance verifyGamePostWithGameId:gameId
          completionHandler: ^(SWGGame* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->verifyGamePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameId** | **NSNumber***|  | 

### Return type

[**SWGGame***](SWGGame.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

