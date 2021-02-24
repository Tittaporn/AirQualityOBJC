//
//  DVMWeather.m
//  AirQuality
//
//  Created by Lee McCormick on 2/24/21.
//

#import "DVMWeather.h"

@implementation DVMWeather

- (instancetype)initWithTemperature:(NSInteger)temperature humidity:(NSInteger)humidity windSpeed:(NSInteger)windSpeed
{
    self = [super init];
    if (self) //if self is not nil
    {
        _temperature = temperature;
        _humidity = humidity;
        _windSpeed = windSpeed;
    }
    return  self;
}
@end

@implementation DVMWeather (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSInteger temperature = [dictionary[@"tp"] intValue];
    NSInteger humodity = [dictionary[@"hu"] intValue];
    NSInteger windSpeed = [dictionary[@"ws"] intValue];
    
    return [self initWithTemperature:temperature humidity:humodity windSpeed:windSpeed];
}


@end
