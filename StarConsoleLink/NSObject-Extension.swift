//
//  NSObject-Extension.swift
//  StarConsoleLink
//
//  Created by 星星 on 16/1/28.
//  Copyright © 2016年 AbsoluteStar. All rights reserved.
//

import Foundation

extension NSObject {
    class func pluginDidLoad(_ bundle: Bundle) {
        let appName = Bundle.main.infoDictionary?["CFBundleName"] as? NSString
        if appName == "Xcode" {
        	if sharedPlugin == nil {
        		sharedPlugin = StarConsoleLink(bundle: bundle)
        	}
        }
    }
}
