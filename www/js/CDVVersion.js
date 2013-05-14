if(!window.plugins) window.plugins = {};

(function(c, p){
	'use strict';
	// Error handling
	if(!c) throw new Error("Unable to connect to Cordova / Phonegap!");
	if(!p) throw new Error("Unable to export plugin!");

	//# functions and objects
	var getVersion = function(cb, err){
		var trimCb = function(val){
			if(val && val[0]!="Error") {
				cb(val);
			} else {
				err("No Version specified!");
			}
		};
		c.exec(trimCb, err, "BuildVersion", "getVersion", []);
	},
	getBuild = function(cb, err){
		var trimCb = function(val){
			if(val && val[0]!="Error") {
				cb(val);
			} else {
				err("No Build specified!");
			}
		};
		c.exec(trimCb, err, "BuildVersion", "getBuild", []);
	}

	//# export or making somethng global
	p.buildVersion = {
		getVersion: getVersion,
		getBuild: getBuild
	};
	
})(window.cordova || window.phonegap, window.plugins);