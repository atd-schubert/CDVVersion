/********* Echo.h Cordova Plugin Header *******/


#import <Cordova/CDVPlugin.h>

@interface CDVVersion : CDVPlugin

- (void) getBuild:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

- (void) getVersion:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end