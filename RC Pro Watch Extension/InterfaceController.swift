//
//  InterfaceController.swift
//  Iwatch Extension
//
//  Created by Lecheng on 2/17/16.
//  Copyright © 2016 RideController. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController {
    
    private let session : WCSession? = WCSession.isSupported() ? WCSession.defaultSession() : nil
    
    @IBOutlet weak var engineStart: WKInterfaceButton!
    @IBAction func engineStartAction() {
        
        //call parent application to fire start circuit
        //not sure if this will work without passing the ble object to the AppDelegateClass
        //let settingsDefaults = NSUserDefaults(suiteName: "group.com.RideController")!
        //let controlCenterTypeID = settingsDefaults.integerForKey("controlCenterType");
        circuitCommand("0", command: "0")
        //switch controlCenterTypeID {
        //case 0:
        //    circuitCommand("0", command: "0")
        //case 1:
        //    circuitCommand("8", command: "0")
        //case 2:
        //   circuitCommand("16", command: "0")
        //default:break
        //}
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        loadUserSettingsForLayout()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        loadUserSettingsForLayout()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func loadUserSettingsForLayout() {
        let settingsDefaults: NSUserDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
        engineStart.setHidden(!settingsDefaults.boolForKey("startIsViewable"))
    }
    
    private func circuitCommand(target: String, command: String) {
        let circuitList = ["target":target,  "command":command]
        if let session = session where session.reachable {
            session.sendMessage(circuitList,
                replyHandler: { replyData in
                    // handle reply from iPhone app here
                    print(replyData)
                }, errorHandler: { error in
                    // catch any errors here
                    print(error)
            })
        } else {
            // when the iPhone is not connected via Bluetooth
        }
        /*var circuitList = [target : command]
        WKInterfaceController.openParentApplication(circuitList, reply: { (data, error) in
        if let error = error {
        print(error)
        }
        if let data = data as? NSDictionary {
        print(data)
        }
        })*/

    }
    /*
    private func circuitCommand(target: String, command: String) {
        let circuitList = [target : command]
        WKInterfaceController.openParentApplication(circuitList, reply: { (data, error) in
            if let error = error {
                print(error)
            }
            if let data = data as? NSDictionary {
                print(data)
            }
        })
    }*/
}
