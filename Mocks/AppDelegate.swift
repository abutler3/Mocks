//
//  AppDelegate.swift
//  Mocks
//
//  Created by Drew on 5/11/15.
//  Copyright (c) 2015 ButlerAndrew. All rights reserved.
//

import UIKit
import Parse
import Bolts

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.setupParse()
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let navigationController = UINavigationController()
        let startViewController = StartViewController(nibName: "StartViewController", bundle: nil)
//        startViewController.view.backgroundColor = UIColor.orangeColor()
        
        if PFUser.currentUser() == nil
        {
            // TODO: present the main UI
            navigationController.viewControllers = [startViewController]
            println("user does not exist!")
        }
        else
        {
            // TODO: Present UI for logging in or creating an account
            println("we have a user")
        }
        
        self.window!.rootViewController = navigationController
        self.window!.makeKeyAndVisible()
        
        return true
    }
    
    func setupParse()
    {
        Parse.enableLocalDatastore()
        
        Parse.setApplicationId("4CoF6JxbsHkK9Z4YAsXNX34SDI9Smj1XrVNpC6y3",
            clientKey: "8roGdlqXz38MMKZysRv4G9SczXJRARF75VSsy9Ez")
        
//        let testObject = PFObject(className: "TestObject")
//        testObject["foo"] = "bar2"
//        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
//            println("Object has been saved.")
//        }

    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

