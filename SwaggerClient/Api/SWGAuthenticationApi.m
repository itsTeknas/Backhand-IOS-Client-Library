#import "SWGAuthenticationApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGAuthSuccess.h"


@interface SWGAuthenticationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGAuthenticationApi

NSString* kSWGAuthenticationApiErrorDomain = @"SWGAuthenticationApiErrorDomain";
NSInteger kSWGAuthenticationApiMissingParamErrorCode = 234513;

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
/// FB Login
/// Submit the facebook token, our backend will query the facebook servers with with it and save the responce to fill in your basic profile.
///  @param fbToken Facebook's Token 
///
///  @returns SWGAuthSuccess*
///
-(NSURLSessionTask*) authenticateFacebookPostWithFbToken: (NSString*) fbToken
    completionHandler: (void (^)(SWGAuthSuccess* output, NSError* error)) handler {
    // verify the required parameter 'fbToken' is set
    if (fbToken == nil) {
        NSParameterAssert(fbToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fbToken"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/authenticate/facebook"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (fbToken != nil) {
        queryParams[@"fb_token"] = fbToken;
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
    NSArray *authSettings = @[];

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
                              responseType: @"SWGAuthSuccess*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGAuthSuccess*)data, error);
                                }
                            }];
}

///
/// Sign up new user
/// If the user exists, throw an error. Otherwise sign up.
///  @param firstName First Name 
///
///  @param email Email ID 
///
///  @param password Password 
///
///  @param gender  
///
///  @param lastName Last Name (optional)
///
///  @returns SWGAuthSuccess*
///
-(NSURLSessionTask*) authenticateSignupPostWithFirstName: (NSString*) firstName
    email: (NSString*) email
    password: (NSString*) password
    gender: (NSString*) gender
    lastName: (NSString*) lastName
    completionHandler: (void (^)(SWGAuthSuccess* output, NSError* error)) handler {
    // verify the required parameter 'firstName' is set
    if (firstName == nil) {
        NSParameterAssert(firstName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"firstName"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'email' is set
    if (email == nil) {
        NSParameterAssert(email);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"email"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'gender' is set
    if (gender == nil) {
        NSParameterAssert(gender);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gender"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/authenticate/signup"];

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
    if (password != nil) {
        queryParams[@"password"] = password;
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
    NSArray *authSettings = @[];

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
                              responseType: @"SWGAuthSuccess*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGAuthSuccess*)data, error);
                                }
                            }];
}

///
/// Password Login
/// Pass Traditional Username and Password to get token. If the user is not registered, please signup first.
///  @param grantType  
///
///  @param username Email ID 
///
///  @param password Password 
///
///  @param clientId  
///
///  @param clientSecret  
///
///  @returns SWGAuthSuccess*
///
-(NSURLSessionTask*) oauthTokenPostWithGrantType: (NSString*) grantType
    username: (NSString*) username
    password: (NSString*) password
    clientId: (NSString*) clientId
    clientSecret: (NSString*) clientSecret
    completionHandler: (void (^)(SWGAuthSuccess* output, NSError* error)) handler {
    // verify the required parameter 'grantType' is set
    if (grantType == nil) {
        NSParameterAssert(grantType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"grantType"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'clientId' is set
    if (clientId == nil) {
        NSParameterAssert(clientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"clientId"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'clientSecret' is set
    if (clientSecret == nil) {
        NSParameterAssert(clientSecret);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"clientSecret"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/oauth/token"];

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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (grantType) {
        formParams[@"grant_type"] = grantType;
    }
    if (username) {
        formParams[@"username"] = username;
    }
    if (password) {
        formParams[@"password"] = password;
    }
    if (clientId) {
        formParams[@"client_id"] = clientId;
    }
    if (clientSecret) {
        formParams[@"client_secret"] = clientSecret;
    }

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
                              responseType: @"SWGAuthSuccess*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGAuthSuccess*)data, error);
                                }
                            }];
}



@end
