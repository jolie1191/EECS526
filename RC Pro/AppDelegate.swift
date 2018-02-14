//
//  AppDelegate.swift
//  RC Pro
//
//  Created by RCDev on 8/11/15.
//  Copyright (c) 2015 RideController. All rights reserved.
//

import UIKit
import Foundation
import WatchConnectivity


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
        
        /*
        globalDefaults.registerDefaults(["relay1Name" : "Relay1"])
        globalDefaults.registerDefaults(["relay2Name" : "Relay2"])
        globalDefaults.registerDefaults(["relay3Name" : "Relay3"])
        globalDefaults.registerDefaults(["relay4Name" : "Relay4"])
        globalDefaults.registerDefaults(["relay5Name" : "Relay5"])
        globalDefaults.registerDefaults(["relay6Name" : "Relay6"])
        globalDefaults.registerDefaults(["relay7Name" : "Relay7"])
        globalDefaults.registerDefaults(["relay8Name" : "Relay8"])
        globalDefaults.registerDefaults(["relay9Name" : "Relay9"])
        globalDefaults.registerDefaults(["relay10Name" : "Relay10"])
        globalDefaults.registerDefaults(["relay11Name" : "Relay11"])
        globalDefaults.registerDefaults(["relay12Name" : "Relay12"])
        globalDefaults.registerDefaults(["relay13Name" : "Relay13"])
        globalDefaults.registerDefaults(["relay14Name" : "Relay14"])
        globalDefaults.registerDefaults(["relay15Name" : "Relay15"])
        globalDefaults.registerDefaults(["relay16Name" : "Relay16"])
        globalDefaults.registerDefaults(["relay17Name" : "Relay17"])
        globalDefaults.registerDefaults(["relay18Name" : "Relay18"])
        globalDefaults.registerDefaults(["relay19Name" : "Relay19"])
        globalDefaults.registerDefaults(["relay20Name" : "Relay20"])
        globalDefaults.registerDefaults(["relay21Name" : "Relay21"])
        globalDefaults.registerDefaults(["relay22Name" : "Relay22"])
        globalDefaults.registerDefaults(["relay23Name" : "Relay23"])
        globalDefaults.registerDefaults(["relay24Name" : "Relay24"])
        globalDefaults.registerDefaults(["relay25Name" : "Relay25"])
        globalDefaults.registerDefaults(["relay26Name" : "Relay26"])
        globalDefaults.registerDefaults(["relay27Name" : "Relay27"])
        globalDefaults.registerDefaults(["relay28Name" : "Relay28"])
        globalDefaults.registerDefaults(["relay29Name" : "Relay29"])
        globalDefaults.registerDefaults(["relay30Name" : "Relay30"])
        globalDefaults.registerDefaults(["relay31Name" : "Relay31"])
        globalDefaults.registerDefaults(["relay32Name" : "Relay32"])
        globalDefaults.registerDefaults(["relay33Name" : "Relay33"])
        globalDefaults.registerDefaults(["relay34Name" : "Relay34"])
        globalDefaults.registerDefaults(["relay35Name" : "Relay35"])
        globalDefaults.registerDefaults(["relay36Name" : "Relay36"])
        globalDefaults.registerDefaults(["relay37Name" : "Relay37"])
        globalDefaults.registerDefaults(["relay38Name" : "Relay38"])
        globalDefaults.registerDefaults(["relay39Name" : "Relay39"])
        globalDefaults.registerDefaults(["relay40Name" : "Relay40"])
        globalDefaults.registerDefaults(["relay41Name" : "Relay41"])
        globalDefaults.registerDefaults(["relay42Name" : "Relay42"])
        globalDefaults.registerDefaults(["relay43Name" : "Relay43"])
        globalDefaults.registerDefaults(["relay44Name" : "Relay44"])
        globalDefaults.registerDefaults(["relay45Name" : "Relay45"])
        globalDefaults.registerDefaults(["relay46Name" : "Relay46"])
        globalDefaults.registerDefaults(["relay47Name" : "Relay47"])
        globalDefaults.registerDefaults(["relay48Name" : "Relay48"])
        globalDefaults.registerDefaults(["relay49Name" : "Relay49"])
        globalDefaults.registerDefaults(["relay50Name" : "Relay50"])
        globalDefaults.registerDefaults(["relay51Name" : "Relay51"])
        globalDefaults.registerDefaults(["relay52Name" : "Relay52"])
        globalDefaults.registerDefaults(["relay53Name" : "Relay53"])
        globalDefaults.registerDefaults(["relay54Name" : "Relay54"])
        globalDefaults.registerDefaults(["relay55Name" : "Relay55"])
        globalDefaults.registerDefaults(["relay56Name" : "Relay56"])
        globalDefaults.registerDefaults(["relay57Name" : "Relay57"])
        globalDefaults.registerDefaults(["relay58Name" : "Relay58"])
        globalDefaults.registerDefaults(["relay59Name" : "Relay59"])
        globalDefaults.registerDefaults(["relay60Name" : "Relay60"])
        globalDefaults.registerDefaults(["relay61Name" : "Relay61"])
        globalDefaults.registerDefaults(["relay62Name" : "Relay62"])
        globalDefaults.registerDefaults(["relay63Name" : "Relay63"])
        globalDefaults.registerDefaults(["relay64Name" : "Relay64"])
        
        globalDefaults.registerDefaults(["relayIsButton" : ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]])
        globalDefaults.registerDefaults(["relayState" : ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]])
        globalDefaults.registerDefaults(["relayDimmer" : ["100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100"]])
        globalDefaults.registerDefaults(["relayStrobe" : ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]])
        
        
        globalDefaults.registerDefaults(["relay1RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay2RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay3RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay4RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay5RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay6RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay7RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay8RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay9RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay10RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay11RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay12RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay13RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay14RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay15RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay16RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay17RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay18RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay19RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay20RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay21RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay22RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay23RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay24RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay25RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay26RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay27RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay28RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay29RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay30RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay31RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay32RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay33RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay34RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay35RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay36RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay37RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay38RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay39RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay40RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay41RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay42RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay43RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay44RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay45RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay46RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay47RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay48RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay49RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay50RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay51RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay52RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay53RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay54RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay55RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay56RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay57RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay58RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay59RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay60RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay61RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay62RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay63RGB" : ["255", "255", "255"]])
        globalDefaults.registerDefaults(["relay64RGB" : ["255", "255", "255"]])
        
        globalDefaults.registerDefaults(["startIsViewable" : true])
        globalDefaults.registerDefaults(["controlCenterType" : "8"])
        globalDefaults.registerDefaults(["passcode" : ""])
        
        globalDefaults.synchronize()

        */
        
        if (!globalDefaults.boolForKey("settingsCreated")) {
            globalDefaults.setBool(true, forKey: "settingsCreated")
            
            globalDefaults.setBool(true, forKey: "startIsViewable")
            globalDefaults.setInteger(8, forKey: "controlCenterType")
            globalDefaults.setObject("", forKey: "passcode")
            
            globalDefaults.setObject("Relay1", forKey: "relay1Name")
            globalDefaults.setObject("Relay2", forKey: "relay2Name")
            globalDefaults.setObject("Relay3", forKey: "relay3Name")
            globalDefaults.setObject("Relay4", forKey: "relay4Name")
            globalDefaults.setObject("Relay5", forKey: "relay5Name")
            globalDefaults.setObject("Relay6", forKey: "relay6Name")
            globalDefaults.setObject("Relay7", forKey: "relay7Name")
            globalDefaults.setObject("Relay8", forKey: "relay8Name")
            globalDefaults.setObject("Relay9", forKey: "relay9Name")
            globalDefaults.setObject("Relay10", forKey: "relay10Name")
            globalDefaults.setObject("Relay11", forKey: "relay11Name")
            globalDefaults.setObject("Relay12", forKey: "relay12Name")
            globalDefaults.setObject("Relay13", forKey: "relay13Name")
            globalDefaults.setObject("Relay14", forKey: "relay14Name")
            globalDefaults.setObject("Relay15", forKey: "relay15Name")
            globalDefaults.setObject("Relay16", forKey: "relay16Name")
            globalDefaults.setObject("Relay17", forKey: "relay17Name")
            globalDefaults.setObject("Relay18", forKey: "relay18Name")
            globalDefaults.setObject("Relay19", forKey: "relay19Name")
            globalDefaults.setObject("Relay20", forKey: "relay20Name")
            globalDefaults.setObject("Relay21", forKey: "relay21Name")
            globalDefaults.setObject("Relay22", forKey: "relay22Name")
            globalDefaults.setObject("Relay23", forKey: "relay23Name")
            globalDefaults.setObject("Relay24", forKey: "relay24Name")
            globalDefaults.setObject("Relay25", forKey: "relay25Name")
            globalDefaults.setObject("Relay26", forKey: "relay26Name")
            globalDefaults.setObject("Relay27", forKey: "relay27Name")
            globalDefaults.setObject("Relay28", forKey: "relay28Name")
            globalDefaults.setObject("Relay29", forKey: "relay29Name")
            globalDefaults.setObject("Relay30", forKey: "relay30Name")
            globalDefaults.setObject("Relay31", forKey: "relay31Name")
            globalDefaults.setObject("Relay32", forKey: "relay32Name")
            globalDefaults.setObject("Relay33", forKey: "relay33Name")
            globalDefaults.setObject("Relay34", forKey: "relay34Name")
            globalDefaults.setObject("Relay35", forKey: "relay35Name")
            globalDefaults.setObject("Relay36", forKey: "relay36Name")
            globalDefaults.setObject("Relay37", forKey: "relay37Name")
            globalDefaults.setObject("Relay38", forKey: "relay38Name")
            globalDefaults.setObject("Relay39", forKey: "relay39Name")
            globalDefaults.setObject("Relay40", forKey: "relay40Name")
            globalDefaults.setObject("Relay41", forKey: "relay41Name")
            globalDefaults.setObject("Relay42", forKey: "relay42Name")
            globalDefaults.setObject("Relay43", forKey: "relay43Name")
            globalDefaults.setObject("Relay44", forKey: "relay44Name")
            globalDefaults.setObject("Relay45", forKey: "relay45Name")
            globalDefaults.setObject("Relay46", forKey: "relay46Name")
            globalDefaults.setObject("Relay47", forKey: "relay47Name")
            globalDefaults.setObject("Relay48", forKey: "relay48Name")
            globalDefaults.setObject("Relay49", forKey: "relay49Name")
            globalDefaults.setObject("Relay50", forKey: "relay50Name")
            globalDefaults.setObject("Relay51", forKey: "relay51Name")
            globalDefaults.setObject("Relay52", forKey: "relay52Name")
            globalDefaults.setObject("Relay53", forKey: "relay53Name")
            globalDefaults.setObject("Relay54", forKey: "relay54Name")
            globalDefaults.setObject("Relay55", forKey: "relay55Name")
            globalDefaults.setObject("Relay56", forKey: "relay56Name")
            globalDefaults.setObject("Relay57", forKey: "relay57Name")
            globalDefaults.setObject("Relay58", forKey: "relay58Name")
            globalDefaults.setObject("Relay59", forKey: "relay59Name")
            globalDefaults.setObject("Relay60", forKey: "relay60Name")
            globalDefaults.setObject("Relay61", forKey: "relay61Name")
            globalDefaults.setObject("Relay62", forKey: "relay62Name")
            globalDefaults.setObject("Relay63", forKey: "relay63Name")
            globalDefaults.setObject("Relay64", forKey: "relay64Name")
            
            globalDefaults.setObject(["0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"], forKey: "relayIsButton")
            globalDefaults.setObject(["0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"], forKey: "relayState")
            globalDefaults.setObject(["100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100", "100"], forKey: "relayDimmer")
            globalDefaults.setObject(["0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"], forKey: "relayStrobe")
            
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay1RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay2RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay3RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay4RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay5RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay6RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay7RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay8RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay9RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay10RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay11RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay12RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay13RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay14RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay15RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay16RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay17RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay18RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay19RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay20RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay21RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay22RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay23RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay24RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay25RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay26RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay27RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay28RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay29RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay30RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay31RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay32RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay33RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay34RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay35RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay36RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay37RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay38RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay39RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay40RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay41RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay42RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay43RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay44RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay45RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay46RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay47RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay48RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay49RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay50RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay51RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay52RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay53RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay54RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay55RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay56RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay57RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay58RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay59RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay60RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay61RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay62RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay63RGB")
            globalDefaults.setObject(["255", "255", "255"], forKey: "relay64RGB")

            globalDefaults.synchronize()
        }
        return true
    }
    
    func application(application: UIApplication,
        handleWatchKitExtensionRequest circuitList: [NSObject : AnyObject]?,
        reply: (([NSObject : AnyObject]?) -> Void)) {
            
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void) {
        
        //Use this to update the UI instantaneously (otherwise, takes a little while)
        dispatch_async(dispatch_get_main_queue()) {
            
                synchronization(circuitList)
        }
    }
    
    func synchronization(circuitList){
        let mainPage: MainPageViewController = (self.window!.rootViewController as! UINavigationController).viewControllers[0] as! MainPageViewController
        
        if let list = circuitList as? [String : String] {
            for (relayIndex, relayAction) in list {
                let index = Int(relayIndex)!
                let action = Int(relayAction)!
                
                print("Index was" + String(index) + " Action was" + String(action))
                
                if index == 0 { // engine start
                    print("Start Engine pressed from watch")
                    mainPage.engineStartPressWatch();
                }
                else if index <= 8 {    // relays on first page
                    if action == 0 {    // button press
                        mainPage.circuitButtonPressWatch(index);
                    }
                    else if action == 1 || action == 2 {
                        let sw = mainPage.view.viewWithTag(index) as! UISwitch
                        mainPage.onDefaultsChanged()
                        mainPage.relaySwitchChanged(sw)
                    }
                }
                else if index <= 16 {   // relays on second page
                    if action == 0 { //button press
                        if let wd = self.window {
                            var vc = wd.rootViewController
                            if(vc is UINavigationController){
                                vc = (vc as! UINavigationController).visibleViewController
                            }
                            
                            if(vc is MainPageViewController){
                                //your code
                                print("it will push to second page")
                                mainPage.performSegueWithIdentifier("pushToSecondPage", sender: self)
                            }
                        }
                        let secondPage: SecondPageViewController = (self.window!.rootViewController as! UINavigationController).visibleViewController as! SecondPageViewController
                        print("should have fired 2nd page watch btn press event")
                        secondPage.circuitButtonPressWatch(index);
                    }
                    else if action == 1 || action == 2 {
                        // To be finished
                        print("Should have called the 2nd segue pass value");
                        if let wd = self.window {
                            var vc = wd.rootViewController
                            if(vc is UINavigationController){
                                vc = (vc as! UINavigationController).visibleViewController
                            }
                            
                            if(vc is MainPageViewController){
                                //your code
                                print("it will push to second page")
                                mainPage.performSegueWithIdentifier("pushToSecondPage", sender: self)
                            }
                        }
                        
                        let secondPage: SecondPageViewController = (self.window!.rootViewController as! UINavigationController).visibleViewController as! SecondPageViewController
                        
                        // We need to get the 2nd page segue identifier now
                        let sw = secondPage.view.viewWithTag(index) as! UISwitch
                        secondPage.onDefaultsChanged()
                        secondPage.relaySwitchChanged(sw)
                    }
                }
            }
        }
        
        reply(["Confirmation" : "Command received"]);
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

