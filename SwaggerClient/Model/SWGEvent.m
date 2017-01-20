#import "SWGEvent.h"

@implementation SWGEvent

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"eventId": @"event_id", @"isCurrentUserJoined": @"is_current_user_joined", @"eventName": @"event_name", @"eventDescription": @"event_description", @"eventCity": @"event_city", @"gameSport": @"game_sport", @"eventStartDate": @"event_start_date", @"eventEndDate": @"event_end_date", @"eventBackgroundPicture": @"event_background_picture", @"eventLat": @"event_lat", @"eventLon": @"event_lon", @"eventClub": @"event_club" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"eventId", @"isCurrentUserJoined", @"eventName", @"eventDescription", @"eventCity", @"gameSport", @"eventStartDate", @"eventEndDate", @"eventBackgroundPicture", @"eventLat", @"eventLon", @"eventClub"];
  return [optionalProperties containsObject:propertyName];
}

@end
