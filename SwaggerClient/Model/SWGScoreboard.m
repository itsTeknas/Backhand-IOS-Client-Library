#import "SWGScoreboard.h"

@implementation SWGScoreboard

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"pendingScores": @"pending_scores", @"totalMatches": @"total_matches", @"winRate": @"win_rate", @"games": @"games" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pendingScores", @"totalMatches", @"winRate", @"games"];
  return [optionalProperties containsObject:propertyName];
}

@end
