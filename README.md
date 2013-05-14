# CDVVersion
Cordova plugin to access the target build and version on an iOS project

# Configuration
1. Copy CDVVersion.h and CDVVersion.m from Plugins to your cordova-project plugin folder.
2. Copy CDVVersion.js from the www/js folder to the cordova-project www folder or in a subfolder of www.
3. Add to cordova plist under the Plugins directory the key: "BuildVersion", type: "String", value: "CDVVersion"
4. Link the CDVVersion.js file in your index.html with a script tag.

# Usage
There are two functions:   
1. plugins.buildVersion.getVersion(Callback, ErrorCallback)   
2. plugins.buildVersion.getBuild(Callback>, ErrorCallback)   

The callbacks has to have the following structure:   
	cb = function(ver) {   
		// ver is now the build or version of the development target in XCode as a string   
	}