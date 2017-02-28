#import "SWGClub.h"

@implementation SWGClub

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clubId": @"club_id", @"clubName": @"club_name", @"clubCity": @"club_city", @"clubAddress": @"club_address", @"clubHasBadminton": @"club_has_badminton", @"clubHasTennis": @"club_has_tennis", @"clubHasSquash": @"club_has_squash", @"clubNoBadmintonCourts": @"club_no_badminton_courts", @"clubNoTennisCourts": @"club_no_tennis_courts", @"clubNoSquashCourts": @"club_no_squash_courts", @"clubLat": @"club_lat", @"clubLon": @"club_lon" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clubCity", @"clubAddress", @"clubHasBadminton", @"clubHasTennis", @"clubHasSquash", @"clubNoBadmintonCourts", @"clubNoTennisCourts", @"clubNoSquashCourts", @"clubLat", @"clubLon"];
  return [optionalProperties containsObject:propertyName];
}

@end
