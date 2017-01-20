#import "SWGEventParticipants.h"

@implementation SWGEventParticipants

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"event": @"event", @"badmintonPlayers": @"badminton_players", @"tennisPlayers": @"tennis_players", @"squashPlayers": @"squash_players" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"event", @"badmintonPlayers", @"tennisPlayers", @"squashPlayers"];
  return [optionalProperties containsObject:propertyName];
}

@end
