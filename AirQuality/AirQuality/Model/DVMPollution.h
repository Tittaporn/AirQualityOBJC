//
//  DVMPollution.h
//  AirQuality
//
//  Created by Lee McCormick on 2/24/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DVMPollution : NSObject

@property (nonatomic, readonly) NSInteger airQualityIndex;

-(instancetype)initWithAirQualityIndex:(NSInteger) aqi;

@end

@interface DVMPollution (JSONConvertable)

-(instancetype)initWithDictionary:(NSDictionary<NSString *, id>*)dictionary;

@end



NS_ASSUME_NONNULL_END
