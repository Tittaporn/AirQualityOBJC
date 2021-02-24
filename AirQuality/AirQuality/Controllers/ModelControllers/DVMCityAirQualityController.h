//
//  DVMCityAirQualityController.h
//  AirQuality
//
//  Created by Lee McCormick on 2/24/21.
//

#import <Foundation/Foundation.h>
@class DVMCityAirQuality;

NS_ASSUME_NONNULL_BEGIN

@interface DVMCityAirQualityController : NSObject

//func fetchSupportedCities(completion: @escaping (Result<[String], NetworkError>) -> Void){...}
+(void)fetchSupportedCountries:(void (^) (NSArray<NSString *> *_Nullable))completion;

// static func fetchSupportedStates(forCountry: String, then completion: @escaping (Result<[String],NetworkError>) -> Void) {...}
+(void)fetchSupportedStatesInCountry:(NSString *)country
                          completion:(void (^) (NSArray<NSString *> *_Nullable))completion;

// static func fetchSupportedCities(forState: String, inCountry: String, then completion: @escaping (Result<[String], NetworkError>) -> Void){...}
+(void)fetchSupportedCitiesInState:(NSString *)state
                           country:(NSString *)country
                        completion:(void (^) (NSArray<NSString *> *_Nullable))completion;

// static func fetchCityData(forCity: String, inState: String, inCountry: String, then completion: @escaping (Result<CityData, NetworkError>)-> Void) {...}
+(void)fetchDataForCity:(NSString *)city
                  state:(NSString *)state
                country:(NSString *)country
             completion:(void (^) (DVMCityAirQuality *_Nullable))completion;


@end

NS_ASSUME_NONNULL_END
