#import "SWGUserApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGChallenge.h"
#import "SWGClub.h"
#import "SWGEvent.h"
#import "SWGFeaturedPlayer.h"
#import "SWGGame.h"
#import "SWGNews.h"
#import "SWGScoreboard.h"
#import "SWGUrl.h"
#import "SWGUser.h"


@interface SWGUserApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGUserApi

NSString* kSWGUserApiErrorDomain = @"SWGUserApiErrorDomain";
NSInteger kSWGUserApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static SWGUserApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Accept Challenge
/// 
/// @param challengeId  
///
///  code:200 message:"Challenge Accepted"
/// @return NSObject*
-(NSNumber*) acceptChallengePostWithChallengeId: (NSNumber*) challengeId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'challengeId' is set
    if (challengeId == nil) {
        NSParameterAssert(challengeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"challengeId"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/accept_challenge"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (challengeId != nil) {
        queryParams[@"challenge_id"] = challengeId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Add sport to user profile
/// 
/// @param sport Sport Enum 
///
/// @param skillLevel  
///
/// @param favouritePlayer  
///
/// @param playingSince  
///
///  code:200 message:"Status Updated"
/// @return NSObject*
-(NSNumber*) addSportPostWithSport: (NSString*) sport
    skillLevel: (NSNumber*) skillLevel
    favouritePlayer: (NSString*) favouritePlayer
    playingSince: (NSNumber*) playingSince
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'sport' is set
    if (sport == nil) {
        NSParameterAssert(sport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'skillLevel' is set
    if (skillLevel == nil) {
        NSParameterAssert(skillLevel);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"skillLevel"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'favouritePlayer' is set
    if (favouritePlayer == nil) {
        NSParameterAssert(favouritePlayer);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"favouritePlayer"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'playingSince' is set
    if (playingSince == nil) {
        NSParameterAssert(playingSince);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"playingSince"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/add_sport"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    if (skillLevel != nil) {
        queryParams[@"skill_level"] = skillLevel;
    }
    if (favouritePlayer != nil) {
        queryParams[@"favourite_player"] = favouritePlayer;
    }
    if (playingSince != nil) {
        queryParams[@"playing_since"] = playingSince;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Delete sport to user profile
/// 
/// @param sport Sport Enum 
///
///  code:200 message:"Status Updated"
/// @return NSObject*
-(NSNumber*) deleteSportPostWithSport: (NSString*) sport
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'sport' is set
    if (sport == nil) {
        NSParameterAssert(sport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/delete_sport"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Get challenge recommendations
/// 
/// @param sport Sport Enum (optional)
///
/// @param limit Limit the number of results (optional, default to 50)
///
///  code:200 message:"List of Users"
/// @return NSArray<SWGUser>*
-(NSNumber*) getChallengeRecommendationsGetWithSport: (NSString*) sport
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<SWGUser>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_challenge_recommendations"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGUser>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGUser>*)data, error);
                                }
                           }
          ];
}

///
/// Get List of Challenges
/// 
///  code:200 message:"List of Challenges"
/// @return NSArray<SWGChallenge>*
-(NSNumber*) getChallengesGetWithCompletionHandler: 
    (void (^)(NSArray<SWGChallenge>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_challenges"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGChallenge>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGChallenge>*)data, error);
                                }
                           }
          ];
}

///
/// Get List of Cities
/// Get list of clubs for user's city
///  code:200 message:"List of Cities"
/// @return NSArray<NSString*>*
-(NSNumber*) getCitiesGetWithCompletionHandler: 
    (void (^)(NSArray<NSString*>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_cities"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<NSString*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSString*>*)data, error);
                                }
                           }
          ];
}

///
/// Get List of Clubs
/// Get list of clubs for user's city
/// @param searchString Search String (optional)
///
/// @param city City (optional)
///
/// @param locality Locality Search (optional)
///
/// @param sport Sport Enum (optional)
///
/// @param limit Limit the number of results (optional, default to 50)
///
///  code:200 message:"List of Clubs"
/// @return NSArray<SWGClub>*
-(NSNumber*) getClubsGetWithSearchString: (NSString*) searchString
    city: (NSString*) city
    locality: (NSString*) locality
    sport: (NSString*) sport
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<SWGClub>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_clubs"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (searchString != nil) {
        queryParams[@"search_string"] = searchString;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (locality != nil) {
        queryParams[@"locality"] = locality;
    }
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGClub>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGClub>*)data, error);
                                }
                           }
          ];
}

///
/// Get List of Events
/// Get list of events for a city
/// @param sport Sport Enum 
///
/// @param city City 
///
///  code:200 message:"List of Events"
/// @return NSArray<SWGEvent>*
-(NSNumber*) getEventsGetWithSport: (NSString*) sport
    city: (NSString*) city
    completionHandler: (void (^)(NSArray<SWGEvent>* output, NSError* error)) handler {
    // verify the required parameter 'sport' is set
    if (sport == nil) {
        NSParameterAssert(sport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'city' is set
    if (city == nil) {
        NSParameterAssert(city);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"city"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_events"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGEvent>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGEvent>*)data, error);
                                }
                           }
          ];
}

///
/// Get featured players
/// 
/// @param sport Sport Enum 
///
///  code:200 message:"Player List"
/// @return NSArray<SWGFeaturedPlayer>*
-(NSNumber*) getFeaturedPlayersGetWithSport: (NSString*) sport
    completionHandler: (void (^)(NSArray<SWGFeaturedPlayer>* output, NSError* error)) handler {
    // verify the required parameter 'sport' is set
    if (sport == nil) {
        NSParameterAssert(sport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_featured_players"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGFeaturedPlayer>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGFeaturedPlayer>*)data, error);
                                }
                           }
          ];
}

///
/// Get challenges
/// A list of challenges
/// @param limit Limit the number of results (optional, default to 50)
///
///  code:200 message:"List of Challenges"
/// @return NSArray<SWGChallenge>*
-(NSNumber*) getMyChallengesGetWithLimit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<SWGChallenge>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_my_challenges"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGChallenge>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGChallenge>*)data, error);
                                }
                           }
          ];
}

///
/// Get news
/// 
/// @param sport Sport Enum 
///
///  code:200 message:"Player List"
/// @return NSArray<SWGNews>*
-(NSNumber*) getNewsPostWithSport: (NSString*) sport
    completionHandler: (void (^)(NSArray<SWGNews>* output, NSError* error)) handler {
    // verify the required parameter 'sport' is set
    if (sport == nil) {
        NSParameterAssert(sport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_news"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGNews>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGNews>*)data, error);
                                }
                           }
          ];
}

///
/// Get all pending games
/// A list of games that are validated by the opoonent.
/// @param sport Sport Enum (optional)
///
/// @param limit Limit the number of results (optional, default to 50)
///
///  code:200 message:"Scoreboard per sport"
/// @return NSArray<SWGGame>*
-(NSNumber*) getPendingGamesGetWithSport: (NSString*) sport
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<SWGGame>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_pending_games"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGGame>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGGame>*)data, error);
                                }
                           }
          ];
}

///
/// Get Scoreboard for a sport
/// A list of games that are validated by the opoonent.
/// @param sport Sport Enum 
///
/// @param limit Limit the number of results (optional, default to 50)
///
///  code:200 message:"Scoreboard per sport"
/// @return SWGScoreboard*
-(NSNumber*) getScoreboardGetWithSport: (NSString*) sport
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SWGScoreboard* output, NSError* error)) handler {
    // verify the required parameter 'sport' is set
    if (sport == nil) {
        NSParameterAssert(sport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_scoreboard"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGScoreboard*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGScoreboard*)data, error);
                                }
                           }
          ];
}

///
/// Get Authenticated user's profile
/// 
///  code:200 message:"User's own profile"
/// @return SWGUser*
-(NSNumber*) getSelfProfileGetWithCompletionHandler: 
    (void (^)(SWGUser* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_self_profile"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUser*)data, error);
                                }
                           }
          ];
}

///
/// Get user profile
/// 
/// @param userId  
///
///  code:200 message:"User profile"
/// @return SWGUser*
-(NSNumber*) getUserPostWithUserId: (NSNumber*) userId
    completionHandler: (void (^)(SWGUser* output, NSError* error)) handler {
    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_user"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (userId != nil) {
        queryParams[@"user_id"] = userId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUser*)data, error);
                                }
                           }
          ];
}

///
/// pseudo signup user
/// Add user if it dosent exist. set user_is_real = false
/// @param firstName  
///
/// @param lastName  
///
/// @param email  
///
/// @param gender  
///
///  code:200 message:"Pseudo User",
///  code:302 message:"Real Player Already exists"
/// @return SWGUser*
-(NSNumber*) invitePlayerPostWithFirstName: (NSString*) firstName
    lastName: (NSString*) lastName
    email: (NSString*) email
    gender: (NSString*) gender
    completionHandler: (void (^)(SWGUser* output, NSError* error)) handler {
    // verify the required parameter 'firstName' is set
    if (firstName == nil) {
        NSParameterAssert(firstName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"firstName"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'lastName' is set
    if (lastName == nil) {
        NSParameterAssert(lastName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lastName"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'email' is set
    if (email == nil) {
        NSParameterAssert(email);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"email"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gender' is set
    if (gender == nil) {
        NSParameterAssert(gender);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gender"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invite_player"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (firstName != nil) {
        queryParams[@"first_name"] = firstName;
    }
    if (lastName != nil) {
        queryParams[@"last_name"] = lastName;
    }
    if (email != nil) {
        queryParams[@"email"] = email;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUser*)data, error);
                                }
                           }
          ];
}

///
/// Challenge someone for a game
/// Create a new challenge and send a push notification to opponents.
/// @param gameSport  
///
/// @param gameType  
///
/// @param gameChallengerPlayer1  
///
/// @param gameOppositionPlayer1  
///
/// @param gameChallengerPlayer2  (optional)
///
/// @param gameOppositionPlayer2  (optional)
///
///  code:200 message:"Challenge Created"
/// @return SWGChallenge*
-(NSNumber*) newChallengePostWithGameSport: (NSString*) gameSport
    gameType: (NSString*) gameType
    gameChallengerPlayer1: (NSNumber*) gameChallengerPlayer1
    gameOppositionPlayer1: (NSNumber*) gameOppositionPlayer1
    gameChallengerPlayer2: (NSNumber*) gameChallengerPlayer2
    gameOppositionPlayer2: (NSNumber*) gameOppositionPlayer2
    completionHandler: (void (^)(SWGChallenge* output, NSError* error)) handler {
    // verify the required parameter 'gameSport' is set
    if (gameSport == nil) {
        NSParameterAssert(gameSport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameSport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameType' is set
    if (gameType == nil) {
        NSParameterAssert(gameType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameType"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameChallengerPlayer1' is set
    if (gameChallengerPlayer1 == nil) {
        NSParameterAssert(gameChallengerPlayer1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameChallengerPlayer1"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameOppositionPlayer1' is set
    if (gameOppositionPlayer1 == nil) {
        NSParameterAssert(gameOppositionPlayer1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameOppositionPlayer1"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/new_challenge"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (gameSport != nil) {
        queryParams[@"game_sport"] = gameSport;
    }
    if (gameType != nil) {
        queryParams[@"game_type"] = gameType;
    }
    if (gameChallengerPlayer1 != nil) {
        queryParams[@"game_challenger_player1"] = gameChallengerPlayer1;
    }
    if (gameChallengerPlayer2 != nil) {
        queryParams[@"game_challenger_player2"] = gameChallengerPlayer2;
    }
    if (gameOppositionPlayer1 != nil) {
        queryParams[@"game_opposition_player1"] = gameOppositionPlayer1;
    }
    if (gameOppositionPlayer2 != nil) {
        queryParams[@"game_opposition_player2"] = gameOppositionPlayer2;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGChallenge*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGChallenge*)data, error);
                                }
                           }
          ];
}

///
/// Make a new game
/// Create a new game and send a push notification to opponents to verify the same.
/// @param gameSport  
///
/// @param gameType  
///
/// @param gameClub  
///
/// @param gameClubId  
///
/// @param gameChallengerScore  
///
/// @param gameOppositionScore  
///
/// @param gameChallengerPlayer1  
///
/// @param gameOppositionPlayer1  
///
/// @param gameChallengerPlayer2  (optional)
///
/// @param gameOppositionPlayer2  (optional)
///
///  code:200 message:"Game Created"
/// @return SWGGame*
-(NSNumber*) newGamePostWithGameSport: (NSString*) gameSport
    gameType: (NSString*) gameType
    gameClub: (NSString*) gameClub
    gameClubId: (NSNumber*) gameClubId
    gameChallengerScore: (NSNumber*) gameChallengerScore
    gameOppositionScore: (NSNumber*) gameOppositionScore
    gameChallengerPlayer1: (NSNumber*) gameChallengerPlayer1
    gameOppositionPlayer1: (NSNumber*) gameOppositionPlayer1
    gameChallengerPlayer2: (NSNumber*) gameChallengerPlayer2
    gameOppositionPlayer2: (NSNumber*) gameOppositionPlayer2
    completionHandler: (void (^)(SWGGame* output, NSError* error)) handler {
    // verify the required parameter 'gameSport' is set
    if (gameSport == nil) {
        NSParameterAssert(gameSport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameSport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameType' is set
    if (gameType == nil) {
        NSParameterAssert(gameType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameType"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameClub' is set
    if (gameClub == nil) {
        NSParameterAssert(gameClub);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameClub"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameClubId' is set
    if (gameClubId == nil) {
        NSParameterAssert(gameClubId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameClubId"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameChallengerScore' is set
    if (gameChallengerScore == nil) {
        NSParameterAssert(gameChallengerScore);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameChallengerScore"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameOppositionScore' is set
    if (gameOppositionScore == nil) {
        NSParameterAssert(gameOppositionScore);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameOppositionScore"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameChallengerPlayer1' is set
    if (gameChallengerPlayer1 == nil) {
        NSParameterAssert(gameChallengerPlayer1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameChallengerPlayer1"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gameOppositionPlayer1' is set
    if (gameOppositionPlayer1 == nil) {
        NSParameterAssert(gameOppositionPlayer1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameOppositionPlayer1"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/new_game"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (gameSport != nil) {
        queryParams[@"game_sport"] = gameSport;
    }
    if (gameType != nil) {
        queryParams[@"game_type"] = gameType;
    }
    if (gameClub != nil) {
        queryParams[@"game_club"] = gameClub;
    }
    if (gameClubId != nil) {
        queryParams[@"game_club_id"] = gameClubId;
    }
    if (gameChallengerScore != nil) {
        queryParams[@"game_challenger_score"] = gameChallengerScore;
    }
    if (gameOppositionScore != nil) {
        queryParams[@"game_opposition_score"] = gameOppositionScore;
    }
    if (gameChallengerPlayer1 != nil) {
        queryParams[@"game_challenger_player1"] = gameChallengerPlayer1;
    }
    if (gameChallengerPlayer2 != nil) {
        queryParams[@"game_challenger_player2"] = gameChallengerPlayer2;
    }
    if (gameOppositionPlayer1 != nil) {
        queryParams[@"game_opposition_player1"] = gameOppositionPlayer1;
    }
    if (gameOppositionPlayer2 != nil) {
        queryParams[@"game_opposition_player2"] = gameOppositionPlayer2;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGGame*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGame*)data, error);
                                }
                           }
          ];
}

///
/// Push Notify User
/// 
/// @param userId  
///
/// @param message  
///
///  code:200 message:"Notification Sent"
/// @return NSObject*
-(NSNumber*) notifyNewMessagePostWithUserId: (NSNumber*) userId
    message: (NSString*) message
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'message' is set
    if (message == nil) {
        NSParameterAssert(message);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"message"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notify_new_message"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (userId != nil) {
        queryParams[@"user_id"] = userId;
    }
    if (message != nil) {
        queryParams[@"message"] = message;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Reject Challenge
/// 
/// @param challengeId  
///
///  code:200 message:"Challenge Rejected"
/// @return NSObject*
-(NSNumber*) rejectChallengePostWithChallengeId: (NSNumber*) challengeId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'challengeId' is set
    if (challengeId == nil) {
        NSParameterAssert(challengeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"challengeId"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reject_challenge"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (challengeId != nil) {
        queryParams[@"challenge_id"] = challengeId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Reject pending score
/// Validate the score entered by an opponent.
/// @param gameId  
///
///  code:200 message:"Game Rejected"
/// @return SWGGame*
-(NSNumber*) rejectGamePostWithGameId: (NSNumber*) gameId
    completionHandler: (void (^)(SWGGame* output, NSError* error)) handler {
    // verify the required parameter 'gameId' is set
    if (gameId == nil) {
        NSParameterAssert(gameId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameId"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reject_game"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (gameId != nil) {
        queryParams[@"game_id"] = gameId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGGame*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGame*)data, error);
                                }
                           }
          ];
}

///
/// Query Users
/// search users based on name / phone number / email / name / club
/// @param query Search based on name, email, phone number 
///
/// @param limit Limit the number of results (optional, default to 50)
///
///  code:200 message:"List of Users"
/// @return NSArray<SWGUser>*
-(NSNumber*) searchUsersPostWithQuery: (NSString*) query
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<SWGUser>* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search_users"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGUser>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGUser>*)data, error);
                                }
                           }
          ];
}

///
/// Update favourite player
/// 
/// @param sport Sport Enum 
///
/// @param player  
///
///  code:200 message:"Favourite Player Updated"
/// @return NSObject*
-(NSNumber*) updateFavouritePlayerPostWithSport: (NSString*) sport
    player: (NSString*) player
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'sport' is set
    if (sport == nil) {
        NSParameterAssert(sport);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sport"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'player' is set
    if (player == nil) {
        NSParameterAssert(player);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"player"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/update_favourite_player"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sport != nil) {
        queryParams[@"sport"] = sport;
    }
    if (player != nil) {
        queryParams[@"player"] = player;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Update FCM InstanceID
/// 
/// @param instanceId  
///
///  code:200 message:"Status Updated"
/// @return NSObject*
-(NSNumber*) updateFcmInstanceIdPostWithInstanceId: (NSString*) instanceId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'instanceId' is set
    if (instanceId == nil) {
        NSParameterAssert(instanceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceId"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/update_fcm_instance_id"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (instanceId != nil) {
        queryParams[@"instance_id"] = instanceId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Update profile picture
/// 
/// @param file File to upload Accepted formats jpg,jpeg,png 
///
///  code:200 message:"URL of the picture"
/// @return SWGUrl*
-(NSNumber*) updateProfilePicturePostWithFile: (NSURL*) file
    completionHandler: (void (^)(SWGUrl* output, NSError* error)) handler {
    // verify the required parameter 'file' is set
    if (file == nil) {
        NSParameterAssert(file);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"file"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/update_profile_picture"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"file"] = file;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUrl*)data, error);
                                }
                           }
          ];
}

///
/// Update Profile
/// If the profilePic file is provided, we save it and update the profile pic link in the user profile. Also, all other provided fileds are updated.
/// @param mobileNumber  
///
/// @param birthDate format - DD/MM/YYYY 
///
/// @param handedness  
///
/// @param city  
///
/// @param locality  
///
/// @param clubIds  (optional)
///
///  code:200 message:"Status Updated"
/// @return NSObject*
-(NSNumber*) updateProfilePostWithMobileNumber: (NSString*) mobileNumber
    birthDate: (NSString*) birthDate
    handedness: (NSString*) handedness
    city: (NSString*) city
    locality: (NSString*) locality
    clubIds: (NSString*) clubIds
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'mobileNumber' is set
    if (mobileNumber == nil) {
        NSParameterAssert(mobileNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mobileNumber"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'birthDate' is set
    if (birthDate == nil) {
        NSParameterAssert(birthDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"birthDate"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'handedness' is set
    if (handedness == nil) {
        NSParameterAssert(handedness);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"handedness"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'city' is set
    if (city == nil) {
        NSParameterAssert(city);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"city"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'locality' is set
    if (locality == nil) {
        NSParameterAssert(locality);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locality"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/update_profile"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (mobileNumber != nil) {
        queryParams[@"mobile_number"] = mobileNumber;
    }
    if (birthDate != nil) {
        queryParams[@"birth_date"] = birthDate;
    }
    if (handedness != nil) {
        queryParams[@"handedness"] = handedness;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (locality != nil) {
        queryParams[@"locality"] = locality;
    }
    if (clubIds != nil) {
        queryParams[@"club_ids"] = clubIds;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Update status message
/// 
/// @param message New Status Message 
///
///  code:200 message:"Status Updated"
/// @return NSObject*
-(NSNumber*) updateStatusMessagePostWithMessage: (NSString*) message
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'message' is set
    if (message == nil) {
        NSParameterAssert(message);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"message"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/update_status_message"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (message != nil) {
        queryParams[@"message"] = message;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                           }
          ];
}

///
/// Verify pending score
/// Validate the score entered by an opponent.
/// @param gameId  
///
///  code:200 message:"Game Verified"
/// @return SWGGame*
-(NSNumber*) verifyGamePostWithGameId: (NSNumber*) gameId
    completionHandler: (void (^)(SWGGame* output, NSError* error)) handler {
    // verify the required parameter 'gameId' is set
    if (gameId == nil) {
        NSParameterAssert(gameId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gameId"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/verify_game"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (gameId != nil) {
        queryParams[@"game_id"] = gameId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TokenAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGGame*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGame*)data, error);
                                }
                           }
          ];
}


@end
