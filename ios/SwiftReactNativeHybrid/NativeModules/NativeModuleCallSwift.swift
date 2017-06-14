//
//  NativeModuleCallSwift.swift
//  SwiftReactNativeHybrid
//
//  Created by Jeremy Gale on 2017-06-13.
//  Copyright © 2017 Solium Capital Inc. All rights reserved.
//

import Foundation
import UIKit

@objc(NativeModuleCallSwift)
class NativeModuleCallSwift : NSObject {
    
    // This is the method exposed to React Native. It can't handle
    // the first parameter being named. http://stackoverflow.com/a/39840952/155186
    func helloSwift(_ greeting: String) {
        // You won't be on the main thread when called from JavaScript
        DispatchQueue.main.async {
            let tabBarViewController: TabBarController = UIApplication.shared.keyWindow?.rootViewController as! TabBarController!
            let firstViewController: FirstViewController = tabBarViewController.viewControllers?.first as! FirstViewController
            firstViewController.firstViewLabel.text = greeting
        }
    }
}
