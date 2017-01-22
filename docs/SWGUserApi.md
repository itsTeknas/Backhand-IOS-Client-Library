# SWGUserApi

All URIs are relative to *http://www.back-hand.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**editGamePost**](SWGUserApi.md#editgamepost) | **POST** /edit_game | Edit Scores
[**getChallengeRecommendationsGet**](SWGUserApi.md#getchallengerecommendationsget) | **GET** /get_challenge_recommendations | Get challenge recommendations
[**getClubsGet**](SWGUserApi.md#getclubsget) | **GET** /get_clubs | Get List of Clubs
[**getClubsParticipantsGet**](SWGUserApi.md#getclubsparticipantsget) | **GET** /get_clubs_participants | Get Club Participants
[**getEventParticipantsGet**](SWGUserApi.md#geteventparticipantsget) | **GET** /get_event_participants | Get Event Participants
[**getEventsGet**](SWGUserApi.md#geteventsget) | **GET** /get_events | Get List of Events
[**getMyChallengesGet**](SWGUserApi.md#getmychallengesget) | **GET** /get_my_challenges | Get challenges
[**getScoreboardGet**](SWGUserApi.md#getscoreboardget) | **GET** /get_scoreboard | Get Scoreboard for a sport
[**getSelfProfileGet**](SWGUserApi.md#getselfprofileget) | **GET** /get_self_profile | Get Authenticated user&#39;s profile
[**joinEventGet**](SWGUserApi.md#joineventget) | **GET** /join_event | Join an event
[**newChallengePost**](SWGUserApi.md#newchallengepost) | **POST** /new_challenge | Challenge someone for a game
[**newGamePost**](SWGUserApi.md#newgamepost) | **POST** /new_game | Make a new game
[**searchUsersPost**](SWGUserApi.md#searchuserspost) | **POST** /search_users | Query Users
[**unJoinEventGet**](SWGUserApi.md#unjoineventget) | **GET** /un_join_event | UNDO Join an event
[**updateProfilePicturePost**](SWGUserApi.md#updateprofilepicturepost) | **POST** /update_profile_picture | Update profile picture
[**updateProfilePost**](SWGUserApi.md#updateprofilepost) | **POST** /update_profile | Update Profile
[**updateStatusMessagePost**](SWGUserApi.md#updatestatusmessagepost) | **POST** /update_status_message | Update profile picture
[**verifyGamePost**](SWGUserApi.md#verifygamepost) | **POST** /verify_game | Verify the score


# **editGamePost**
```objc
-(NSNumber*) editGamePostWithGameId: (NSNumber*) gameId
    gameChallengerScore: (NSNumber*) gameChallengerScore
    gameOppositionScore: (NSNumber*) gameOppositionScore
        completionHandler: (void (^)(SWGGame* output, NSError* error)) handler;
```

Edit Scores

Edit the scores and resubmit for validation form the other party

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* gameId = @789; // 
NSNumber* gameChallengerScore = @56; // 
NSNumber* gameOppositionScore = @56; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Edit Scores
[apiInstance editGamePostWithGameId:gameId
              gameChallengerScore:gameChallengerScore
              gameOppositionScore:gameOppositionScore
          completionHandler: ^(SWGGame* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->editGamePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameId** | **NSNumber***|  | 
 **gameChallengerScore** | **NSNumber***|  | 
 **gameOppositionScore** | **NSNumber***|  | 

### Return type

[**SWGGame***](SWGGame.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChallengeRecommendationsGet**
```objc
-(NSNumber*) getChallengeRecommendationsGetWithSport: (NSString*) sport
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGUser>* output, NSError* error)) handler;
```

Get challenge recommendations

search users based on name / phone number / email / name / club

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // 
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
 **sport** | **NSString***|  | 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**NSArray<SWGUser>***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClubsGet**
```objc
-(NSNumber*) getClubsGetWithCity: (NSString*) city
        completionHandler: (void (^)(NSArray<SWGClub>* output, NSError* error)) handler;
```

Get List of Clubs

Get list of clubs for a city

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* city = @"city_example"; // City

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get List of Clubs
[apiInstance getClubsGetWithCity:city
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
 **city** | **NSString***| City | 

### Return type

[**NSArray<SWGClub>***](SWGClub.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClubsParticipantsGet**
```objc
-(NSNumber*) getClubsParticipantsGetWithClubId: (NSNumber*) clubId
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SWGClubParticipants* output, NSError* error)) handler;
```

Get Club Participants

Get the players for various sports within a club

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* clubId = @789; // City
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get Club Participants
[apiInstance getClubsParticipantsGetWithClubId:clubId
              limit:limit
          completionHandler: ^(SWGClubParticipants* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getClubsParticipantsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clubId** | **NSNumber***| City | 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**SWGClubParticipants***](SWGClubParticipants.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventParticipantsGet**
```objc
-(NSNumber*) getEventParticipantsGetWithEventId: (NSNumber*) eventId
        completionHandler: (void (^)(SWGEventParticipants* output, NSError* error)) handler;
```

Get Event Participants

Get the players for various sports within a event

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* eventId = @789; // Event ID

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get Event Participants
[apiInstance getEventParticipantsGetWithEventId:eventId
          completionHandler: ^(SWGEventParticipants* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getEventParticipantsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **NSNumber***| Event ID | 

### Return type

[**SWGEventParticipants***](SWGEventParticipants.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventsGet**
```objc
-(NSNumber*) getEventsGetWithCity: (NSString*) city
        completionHandler: (void (^)(NSArray<SWGEvent>* output, NSError* error)) handler;
```

Get List of Events

Get list of events for a city

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* city = @"city_example"; // City

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get List of Events
[apiInstance getEventsGetWithCity:city
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
 **city** | **NSString***| City | 

### Return type

[**NSArray<SWGEvent>***](SWGEvent.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyChallengesGet**
```objc
-(NSNumber*) getMyChallengesGetWithLimit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGChallenge>* output, NSError* error)) handler;
```

Get challenges

A list of challenges

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

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

# **getScoreboardGet**
```objc
-(NSNumber*) getScoreboardGetWithSport: (NSString*) sport
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```

Get Scoreboard for a sport

A list of games that are validated by the opoonent.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* sport = @"sport_example"; // 
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get Scoreboard for a sport
[apiInstance getScoreboardGetWithSport:sport
              limit:limit
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
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
 **sport** | **NSString***|  | 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelfProfileGet**
```objc
-(NSNumber*) getSelfProfileGetWithCompletionHandler: 
        (void (^)(SWGUser* output, NSError* error)) handler;
```

Get Authenticated user's profile

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

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

# **joinEventGet**
```objc
-(NSNumber*) joinEventGetWithEventId: (NSNumber*) eventId
        completionHandler: (void (^)(NSError* error)) handler;
```

Join an event

You become descoverable to other players who are also goint to that event.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* eventId = @789; // Event ID

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Join an event
[apiInstance joinEventGetWithEventId:eventId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->joinEventGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **NSNumber***| Event ID | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newChallengePost**
```objc
-(NSNumber*) newChallengePostWithGameSport: (NSString*) gameSport
    gameType: (NSString*) gameType
    gameChallengerPlayer1: (NSNumber*) gameChallengerPlayer1
    gameOppositionPlayer1: (NSNumber*) gameOppositionPlayer1
    gameChallengerPlayer2: (NSNumber*) gameChallengerPlayer2
    gameOppositionPlayer2: (NSNumber*) gameOppositionPlayer2
        completionHandler: (void (^)(SWGChallenge* output, NSError* error)) handler;
```

Challenge someone for a game

Create a new challenge and send a push notification to opponents.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* gameSport = @"gameSport_example"; // 
NSString* gameType = @"gameType_example"; // 
NSNumber* gameChallengerPlayer1 = @789; // 
NSNumber* gameOppositionPlayer1 = @789; // 
NSNumber* gameChallengerPlayer2 = @789; //  (optional)
NSNumber* gameOppositionPlayer2 = @789; //  (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Challenge someone for a game
[apiInstance newChallengePostWithGameSport:gameSport
              gameType:gameType
              gameChallengerPlayer1:gameChallengerPlayer1
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
 **gameChallengerPlayer1** | **NSNumber***|  | 
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
-(NSNumber*) newGamePostWithGameSport: (NSString*) gameSport
    gameType: (NSString*) gameType
    gameChallengerScore: (NSNumber*) gameChallengerScore
    gameOppositionScore: (NSNumber*) gameOppositionScore
    gameChallengerPlayer1: (NSNumber*) gameChallengerPlayer1
    gameOppositionPlayer1: (NSNumber*) gameOppositionPlayer1
    gameScoreFormat: (NSString*) gameScoreFormat
    gameChallengerPlayer2: (NSNumber*) gameChallengerPlayer2
    gameOppositionPlayer2: (NSNumber*) gameOppositionPlayer2
        completionHandler: (void (^)(SWGGame* output, NSError* error)) handler;
```

Make a new game

Create a new game and send a push notification to opponents to verify the same.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* gameSport = @"gameSport_example"; // 
NSString* gameType = @"gameType_example"; // 
NSNumber* gameChallengerScore = @56; // 
NSNumber* gameOppositionScore = @56; // 
NSNumber* gameChallengerPlayer1 = @789; // 
NSNumber* gameOppositionPlayer1 = @789; // 
NSString* gameScoreFormat = @"gameScoreFormat_example"; //  (optional)
NSNumber* gameChallengerPlayer2 = @789; //  (optional)
NSNumber* gameOppositionPlayer2 = @789; //  (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Make a new game
[apiInstance newGamePostWithGameSport:gameSport
              gameType:gameType
              gameChallengerScore:gameChallengerScore
              gameOppositionScore:gameOppositionScore
              gameChallengerPlayer1:gameChallengerPlayer1
              gameOppositionPlayer1:gameOppositionPlayer1
              gameScoreFormat:gameScoreFormat
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
 **gameChallengerScore** | **NSNumber***|  | 
 **gameOppositionScore** | **NSNumber***|  | 
 **gameChallengerPlayer1** | **NSNumber***|  | 
 **gameOppositionPlayer1** | **NSNumber***|  | 
 **gameScoreFormat** | **NSString***|  | [optional] 
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

# **searchUsersPost**
```objc
-(NSNumber*) searchUsersPostWithQuery: (NSString*) query
    cityFilter: (NSString*) cityFilter
    clubFilter: (NSNumber*) clubFilter
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SWGUser>* output, NSError* error)) handler;
```

Query Users

search users based on name / phone number / email / name / club

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* query = @"query_example"; // 
NSString* cityFilter = @"cityFilter_example"; // filter by club_id (optional)
NSNumber* clubFilter = @789; // filter by club_id (optional)
NSNumber* limit = @50; // Limit the number of results (optional) (default to 50)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Query Users
[apiInstance searchUsersPostWithQuery:query
              cityFilter:cityFilter
              clubFilter:clubFilter
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
 **query** | **NSString***|  | 
 **cityFilter** | **NSString***| filter by club_id | [optional] 
 **clubFilter** | **NSNumber***| filter by club_id | [optional] 
 **limit** | **NSNumber***| Limit the number of results | [optional] [default to 50]

### Return type

[**NSArray<SWGUser>***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unJoinEventGet**
```objc
-(NSNumber*) unJoinEventGetWithEventId: (NSNumber*) eventId
        completionHandler: (void (^)(NSError* error)) handler;
```

UNDO Join an event

Remove yourself from an event

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* eventId = @789; // Event ID

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// UNDO Join an event
[apiInstance unJoinEventGetWithEventId:eventId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->unJoinEventGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **NSNumber***| Event ID | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfilePicturePost**
```objc
-(NSNumber*) updateProfilePicturePostWithFile: (NSURL*) file
        completionHandler: (void (^)(NSError* error)) handler;
```

Update profile picture

Upload a picture and get a url to the picture

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSURL* file = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // File to upload Accepted formats jpg,jpeg,png

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Update profile picture
[apiInstance updateProfilePicturePostWithFile:file
          completionHandler: ^(NSError* error) {
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

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfilePost**
```objc
-(NSNumber*) updateProfilePostWithMobileNumber: (NSString*) mobileNumber
    birthDate: (NSString*) birthDate
    playsBadminton: (NSNumber*) playsBadminton
    playsTennis: (NSNumber*) playsTennis
    playsSquash: (NSNumber*) playsSquash
    handedness: (NSString*) handedness
    city: (NSString*) city
    clubIds: (NSArray<NSNumber*>*) clubIds
        completionHandler: (void (^)(SWGUser* output, NSError* error)) handler;
```

Update Profile

If the profilePic file is provided, we save it and update the profile pic link in the user profile. Also, all other provided fileds are updated.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* mobileNumber = @"mobileNumber_example"; // 
NSString* birthDate = @"birthDate_example"; // format - DD/MM/YYYY
NSNumber* playsBadminton = @true; // 
NSNumber* playsTennis = @true; // 
NSNumber* playsSquash = @true; // 
NSString* handedness = @"handedness_example"; // 
NSString* city = @"city_example"; // 
NSArray<NSNumber*>* clubIds = @[@56]; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Update Profile
[apiInstance updateProfilePostWithMobileNumber:mobileNumber
              birthDate:birthDate
              playsBadminton:playsBadminton
              playsTennis:playsTennis
              playsSquash:playsSquash
              handedness:handedness
              city:city
              clubIds:clubIds
          completionHandler: ^(SWGUser* output, NSError* error) {
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
 **playsBadminton** | **NSNumber***|  | 
 **playsTennis** | **NSNumber***|  | 
 **playsSquash** | **NSNumber***|  | 
 **handedness** | **NSString***|  | 
 **city** | **NSString***|  | 
 **clubIds** | [**NSArray&lt;NSNumber*&gt;***](NSNumber*.md)|  | 

### Return type

[**SWGUser***](SWGUser.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStatusMessagePost**
```objc
-(NSNumber*) updateStatusMessagePostWithMessage: (NSString*) message
        completionHandler: (void (^)(NSError* error)) handler;
```

Update profile picture

Upload a picture and get a url to the picture

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* message = @"message_example"; // New Status Message

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Update profile picture
[apiInstance updateStatusMessagePostWithMessage:message
          completionHandler: ^(NSError* error) {
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

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyGamePost**
```objc
-(NSNumber*) verifyGamePostWithGameId: (NSNumber*) gameId
        completionHandler: (void (^)(SWGGame* output, NSError* error)) handler;
```

Verify the score

Validate the score entered by an opponent.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* gameId = @789; // 

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Verify the score
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

