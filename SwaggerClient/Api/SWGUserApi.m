#import "SWGUserApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGAvailability.h"
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

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGUserApi

NSString* kSWGUserApiErrorDomain = @"SWGUserApiErrorDomain";
NSInteger kSWGUserApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Accept Challenge
/// 
///  @param challengeId  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) acceptChallengePostWithChallengeId: (NSNumber*) challengeId
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
                            }];
}

///
/// Add sport to user profile
/// 
///  @param sport Sport Enum 
///
///  @param skillLevel  
///
///  @param favouritePlayer  
///
///  @param playingSince  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) addSportPostWithSport: (NSString*) sport
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
                            }];
}

///
/// Delete sport to user profile
/// 
///  @param sport Sport Enum 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) deleteSportPostWithSport: (NSString*) sport
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
                            }];
}

///
/// Invite user by email
/// 
///  @param email  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) emailInvitePostWithEmail: (NSString*) email
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/email_invite"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (email != nil) {
        queryParams[@"email"] = email;
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
                            }];
}

///
/// Get featured players
/// get the availability for the next 10 days for the selected user
///  @param userId  
///
///  @returns NSArray<SWGAvailability>*
///
-(NSURLSessionTask*) getAvailabilityGetWithUserId: (NSNumber*) userId
    completionHandler: (void (^)(NSArray<SWGAvailability>* output, NSError* error)) handler {
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/get_availability"];

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
                              responseType: @"NSArray<SWGAvailability>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGAvailability>*)data, error);
                                }
                            }];
}

///
/// Get challenge recommendations
/// 
///  @param sport Sport Enum (optional)
///
///  @param limit Limit the number of results (optional, default to 50)
///
///  @returns NSArray<SWGUser>*
///
-(NSURLSessionTask*) getChallengeRecommendationsGetWithSport: (NSString*) sport
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
                            }];
}

///
/// Get List of Cities
/// Get list of clubs for user's city
///  @returns NSArray<NSString*>*
///
-(NSURLSessionTask*) getCitiesGetWithCompletionHandler: 
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
                            }];
}

///
/// Get List of Clubs
/// Get list of clubs for user's city
///  @param searchString Search String (optional)
///
///  @param city City (optional)
///
///  @param locality Locality Search (optional)
///
///  @param sport Sport Enum (optional)
///
///  @param limit Limit the number of results (optional, default to 50)
///
///  @returns NSArray<SWGClub>*
///
-(NSURLSessionTask*) getClubsGetWithSearchString: (NSString*) searchString
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
                            }];
}

///
/// Get List of Events
/// Get list of events for a city
///  @param sport Sport Enum 
///
///  @param city City 
///
///  @returns NSArray<SWGEvent>*
///
-(NSURLSessionTask*) getEventsGetWithSport: (NSString*) sport
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
                            }];
}

///
/// Get featured players
/// 
///  @param sport Sport Enum 
///
///  @returns NSArray<SWGFeaturedPlayer>*
///
-(NSURLSessionTask*) getFeaturedPlayersGetWithSport: (NSString*) sport
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
                            }];
}

///
/// Get challenges
/// A list of challenges
///  @param limit Limit the number of results (optional, default to 50)
///
///  @returns NSArray<SWGChallenge>*
///
-(NSURLSessionTask*) getMyChallengesGetWithLimit: (NSNumber*) limit
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
                            }];
}

///
/// Get news
/// 
///  @param sport Sport Enum 
///
///  @returns NSArray<SWGNews>*
///
-(NSURLSessionTask*) getNewsGetWithSport: (NSString*) sport
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
                              responseType: @"NSArray<SWGNews>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGNews>*)data, error);
                                }
                            }];
}

///
/// Get all pending games
/// A list of games that are validated by the opoonent.
///  @param sport Sport Enum (optional)
///
///  @param limit Limit the number of results (optional, default to 50)
///
///  @returns NSArray<SWGGame>*
///
-(NSURLSessionTask*) getPendingGamesGetWithSport: (NSString*) sport
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
                            }];
}

///
/// Get Scoreboard for a sport
/// A list of games that are validated by the opoonent.
///  @param sport Sport Enum 
///
///  @param limit Limit the number of results (optional, default to 50)
///
///  @returns SWGScoreboard*
///
-(NSURLSessionTask*) getScoreboardGetWithSport: (NSString*) sport
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
                            }];
}

///
/// Get Authenticated user's profile
/// 
///  @returns SWGUser*
///
-(NSURLSessionTask*) getSelfProfileGetWithCompletionHandler: 
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
                            }];
}

///
/// Get user profile
/// 
///  @param userId  
///
///  @returns SWGUser*
///
-(NSURLSessionTask*) getUserPostWithUserId: (NSNumber*) userId
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
                            }];
}

///
/// Mark Availability
/// 
///  @param date DD/MM/YYYY 
///
///  @param time 24 Hrs format ex. 22:30 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) markAvailabilityPostWithDate: (NSString*) date
    time: (NSString*) time
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'date' is set
    if (date == nil) {
        NSParameterAssert(date);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"date"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'time' is set
    if (time == nil) {
        NSParameterAssert(time);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"time"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mark_availability"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (date != nil) {
        queryParams[@"date"] = date;
    }
    if (time != nil) {
        queryParams[@"time"] = time;
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
                            }];
}

///
/// Challenge someone for a game
/// Create a new challenge and send a push notification to opponents.
///  @param gameSport  
///
///  @param gameType  
///
///  @param gameOppositionPlayer1  
///
///  @param gameChallengerPlayer2  (optional)
///
///  @param gameOppositionPlayer2  (optional)
///
///  @returns SWGChallenge*
///
-(NSURLSessionTask*) newChallengePostWithGameSport: (NSString*) gameSport
    gameType: (NSString*) gameType
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
                            }];
}

///
/// Make a new game
/// Create a new game and send a push notification to opponents to verify the same.
///  @param gameSport  
///
///  @param gameType  
///
///  @param gameClub  
///
///  @param gameClubId  
///
///  @param gameChallengerScore  
///
///  @param gameOppositionScore  
///
///  @param gameOppositionPlayer1  
///
///  @param gameChallengerPlayer2  (optional)
///
///  @param gameOppositionPlayer2  (optional)
///
///  @returns SWGGame*
///
-(NSURLSessionTask*) newGamePostWithGameSport: (NSString*) gameSport
    gameType: (NSString*) gameType
    gameClub: (NSString*) gameClub
    gameClubId: (NSNumber*) gameClubId
    gameChallengerScore: (NSNumber*) gameChallengerScore
    gameOppositionScore: (NSNumber*) gameOppositionScore
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
                            }];
}

///
/// Push Notify User
/// 
///  @param userId  
///
///  @param chatUid  
///
///  @param message  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) notifyNewMessagePostWithUserId: (NSNumber*) userId
    chatUid: (NSString*) chatUid
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

    // verify the required parameter 'chatUid' is set
    if (chatUid == nil) {
        NSParameterAssert(chatUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"chatUid"] };
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
    if (chatUid != nil) {
        queryParams[@"chat_uid"] = chatUid;
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
                            }];
}

///
/// pseudo signup user
/// Add user if it dosent exist. set user_is_real = false
///  @param firstName  
///
///  @param lastName  
///
///  @param gender  
///
///  @returns SWGUser*
///
-(NSURLSessionTask*) pseudoSignupUserPostWithFirstName: (NSString*) firstName
    lastName: (NSString*) lastName
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/pseudo_signup_user"];

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
                            }];
}

///
/// Reject Challenge
/// 
///  @param challengeId  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) rejectChallengePostWithChallengeId: (NSNumber*) challengeId
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
                            }];
}

///
/// Reject pending score
/// Validate the score entered by an opponent.
///  @param gameId  
///
///  @returns SWGGame*
///
-(NSURLSessionTask*) rejectGamePostWithGameId: (NSNumber*) gameId
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
                            }];
}

///
/// Search Users
/// search users based on name / phone number / email / name / club
///  @param query Search based on name, email, phone number 
///
///  @param sport Sport Enum (optional)
///
///  @param limit Limit the number of results (optional, default to 50)
///
///  @returns NSArray<SWGUser>*
///
-(NSURLSessionTask*) searchUsersPostWithQuery: (NSString*) query
    sport: (NSString*) sport
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
                            }];
}

///
/// Share a game by email
/// 
///  @param gameId  
///
///  @param email  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) shareGameEmailPostWithGameId: (NSNumber*) gameId
    email: (NSString*) email
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/share_game_email"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (gameId != nil) {
        queryParams[@"game_id"] = gameId;
    }
    if (email != nil) {
        queryParams[@"email"] = email;
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
                            }];
}

///
/// Share a game by sms
/// 
///  @param gameId  
///
///  @param cell  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) shareGameSmsPostWithGameId: (NSNumber*) gameId
    cell: (NSString*) cell
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/share_game_sms"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (gameId != nil) {
        queryParams[@"game_id"] = gameId;
    }
    if (cell != nil) {
        queryParams[@"cell"] = cell;
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
                            }];
}

///
/// Invite user by sms
/// 
///  @param cell  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) smsInvitePostWithCell: (NSString*) cell
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'cell' is set
    if (cell == nil) {
        NSParameterAssert(cell);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cell"] };
            NSError* error = [NSError errorWithDomain:kSWGUserApiErrorDomain code:kSWGUserApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sms_invite"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (cell != nil) {
        queryParams[@"cell"] = cell;
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
                            }];
}

///
/// Update favourite player
/// 
///  @param sport Sport Enum 
///
///  @param player  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) updateFavouritePlayerPostWithSport: (NSString*) sport
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
                            }];
}

///
/// Update FCM InstanceID
/// 
///  @param instanceId  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) updateFcmInstanceIdPostWithInstanceId: (NSString*) instanceId
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
                            }];
}

///
/// Update profile picture
/// 
///  @param file File to upload Accepted formats jpg,jpeg,png 
///
///  @returns SWGUrl*
///
-(NSURLSessionTask*) updateProfilePicturePostWithFile: (NSURL*) file
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
                            }];
}

///
/// Update Profile
/// If the profilePic file is provided, we save it and update the profile pic link in the user profile. Also, all other provided fileds are updated.
///  @param mobileNumber  
///
///  @param birthDate format - DD/MM/YYYY 
///
///  @param handedness  
///
///  @param city  
///
///  @param locality  
///
///  @param clubIds  (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) updateProfilePostWithMobileNumber: (NSString*) mobileNumber
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
                            }];
}

///
/// Update status message
/// 
///  @param message New Status Message 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) updateStatusMessagePostWithMessage: (NSString*) message
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
                            }];
}

///
/// Verify pending score
/// Validate the score entered by an opponent.
///  @param gameId  
///
///  @returns SWGGame*
///
-(NSURLSessionTask*) verifyGamePostWithGameId: (NSNumber*) gameId
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
                            }];
}



@end
