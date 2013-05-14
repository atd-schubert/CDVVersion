/********* Echo.m Cordova Plugin Implementation *******/

#import "CDVVersion.h"
#import <Cordova/CDVPluginResult.h>

@implementation CDVVersion

- (void) getBuild:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    NSString* callbackId = [arguments objectAtIndex:0];
    
    CDVPluginResult* pluginResult = nil;
    NSString* javaScript = nil;
    
    @try {
        NSString *build = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
        
        if (build != nil && [build length] > 0) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:build];
            javaScript = [pluginResult toSuccessCallbackString:callbackId];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
            javaScript = [pluginResult toErrorCallbackString:callbackId];
        }
    } @catch (NSException* exception) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_JSON_EXCEPTION messageAsString:[exception reason]];
        javaScript = [pluginResult toErrorCallbackString:callbackId];
    }
    
    [self writeJavascript:javaScript];
}
- (void) getVersion:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    NSString* callbackId = [arguments objectAtIndex:0];
    
    CDVPluginResult* pluginResult = nil;
    NSString* javaScript = nil;
    
    @try {
        NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
        
        if (version != nil && [version length] > 0) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:version];
            javaScript = [pluginResult toSuccessCallbackString:callbackId];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
            javaScript = [pluginResult toErrorCallbackString:callbackId];
        }
    } @catch (NSException* exception) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_JSON_EXCEPTION messageAsString:[exception reason]];
        javaScript = [pluginResult toErrorCallbackString:callbackId];
    }
    
    [self writeJavascript:javaScript];
}

@end