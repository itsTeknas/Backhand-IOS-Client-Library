# SWGAuthenticationApi

All URIs are relative to *http://www.back-hand.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateFacebookPost**](SWGAuthenticationApi.md#authenticatefacebookpost) | **POST** /authenticate/facebook | FB Login
[**authenticateSignupPost**](SWGAuthenticationApi.md#authenticatesignuppost) | **POST** /authenticate/signup | Sign up new user
[**oauthTokenPost**](SWGAuthenticationApi.md#oauthtokenpost) | **POST** /oauth/token | Password Login


# **authenticateFacebookPost**
```objc
-(NSNumber*) authenticateFacebookPostWithFbToken: (NSString*) fbToken
        completionHandler: (void (^)(SWGAuthSuccess* output, NSError* error)) handler;
```

FB Login

Submit the facebook token, our backend will query the facebook servers with with it and save the responce to fill in your basic profile.

### Example 
```objc

NSString* fbToken = @"fbToken_example"; // Facebook's Token

SWGAuthenticationApi*apiInstance = [[SWGAuthenticationApi alloc] init];

// FB Login
[apiInstance authenticateFacebookPostWithFbToken:fbToken
          completionHandler: ^(SWGAuthSuccess* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAuthenticationApi->authenticateFacebookPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fbToken** | **NSString***| Facebook&#39;s Token | 

### Return type

[**SWGAuthSuccess***](SWGAuthSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticateSignupPost**
```objc
-(NSNumber*) authenticateSignupPostWithFirstName: (NSString*) firstName
    email: (NSString*) email
    password: (NSString*) password
    gender: (NSString*) gender
    lastName: (NSString*) lastName
        completionHandler: (void (^)(SWGAuthSuccess* output, NSError* error)) handler;
```

Sign up new user

If the user exists, throw an error. Otherwise sign up.

### Example 
```objc

NSString* firstName = @"firstName_example"; // First Name
NSString* email = @"email_example"; // Email ID
NSString* password = @"password_example"; // Password
NSString* gender = @"gender_example"; // 
NSString* lastName = @"lastName_example"; // Last Name (optional)

SWGAuthenticationApi*apiInstance = [[SWGAuthenticationApi alloc] init];

// Sign up new user
[apiInstance authenticateSignupPostWithFirstName:firstName
              email:email
              password:password
              gender:gender
              lastName:lastName
          completionHandler: ^(SWGAuthSuccess* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAuthenticationApi->authenticateSignupPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstName** | **NSString***| First Name | 
 **email** | **NSString***| Email ID | 
 **password** | **NSString***| Password | 
 **gender** | **NSString***|  | 
 **lastName** | **NSString***| Last Name | [optional] 

### Return type

[**SWGAuthSuccess***](SWGAuthSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthTokenPost**
```objc
-(NSNumber*) oauthTokenPostWithGrantType: (NSString*) grantType
    username: (NSString*) username
    password: (NSString*) password
    clientId: (NSString*) clientId
    clientSecret: (NSString*) clientSecret
        completionHandler: (void (^)(SWGAuthSuccess* output, NSError* error)) handler;
```

Password Login

Pass Traditional Username and Password to get token. If the user is not registered, please signup first.

### Example 
```objc

NSString* grantType = @"grantType_example"; // 
NSString* username = @"username_example"; // Email ID
NSString* password = @"password_example"; // Password
NSString* clientId = @"clientId_example"; // 
NSString* clientSecret = @"clientSecret_example"; // 

SWGAuthenticationApi*apiInstance = [[SWGAuthenticationApi alloc] init];

// Password Login
[apiInstance oauthTokenPostWithGrantType:grantType
              username:username
              password:password
              clientId:clientId
              clientSecret:clientSecret
          completionHandler: ^(SWGAuthSuccess* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAuthenticationApi->oauthTokenPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **NSString***|  | 
 **username** | **NSString***| Email ID | 
 **password** | **NSString***| Password | 
 **clientId** | **NSString***|  | 
 **clientSecret** | **NSString***|  | 

### Return type

[**SWGAuthSuccess***](SWGAuthSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

