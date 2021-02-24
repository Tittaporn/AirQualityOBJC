//
//  DVMCityAirQuality.m
//  AirQuality
//
//  Created by Lee McCormick on 2/24/21.
//

#import "DVMCityAirQuality.h"
#import "DVMWeather.h"
#import "DVMPollution.h"

@implementation DVMCityAirQuality
-(instancetype)initWithCity:(NSString *)city state:(NSString *)state country:(NSString *)country weather:(DVMWeather *)weather pollution:(DVMPollution *)pollution
{
    self = [super init];
    if (self)
    {
        _city = city;
        _state = state;
        _country = country;
        _weather = weather;
        _pollution = pollution;
    }
    return  self;
}
@end

@implementation DVMCityAirQuality (JSONConvertable)

   -(instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString *city = dictionary[@"city"];
    NSString *state = dictionary[@"state"];
    NSString *country = dictionary[@"country"];
    
    NSDictionary *currentInfo = dictionary[@"current"];
    
    DVMWeather *weather = [[DVMWeather alloc] initWithDictionary:currentInfo[@"weather"]];
    DVMPollution *pollution = [[DVMPollution alloc] initWithDictionary:currentInfo[@"pollution"]];
    
    return  [self initWithCity:city state:state country:country weather:weather pollution:pollution];
}

@end
