//
//  DVMPollution.m
//  AirQuality
//
//  Created by Lee McCormick on 2/24/21.
//

#import "DVMPollution.h"

@implementation DVMPollution

- (instancetype)initWithAirQualityIndex:(NSInteger)aqi
{
    self = [super init];
    if (self)
    {
        _airQualityIndex = aqi;
    }
    return  self;
}

@end

@implementation DVMPollution (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSInteger aqi = [dictionary[@"aqius"] intValue];
    return  [self initWithAirQualityIndex:aqi];
}

@end
