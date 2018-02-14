//
//  InterfaceControllerCircuits.swift
//  RideController
//
//  Created by RCDev on 7/12/15.
//  Copyright (c) 2015 Andrew Miller. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceControllerCircuits: WKInterfaceController {
    
    @IBOutlet weak var swRelay1: WKInterfaceSwitch!
    @IBOutlet weak var swRelay2: WKInterfaceSwitch!
    @IBOutlet weak var swRelay3: WKInterfaceSwitch!
    @IBOutlet weak var swRelay4: WKInterfaceSwitch!
    @IBOutlet weak var swRelay5: WKInterfaceSwitch!
    @IBOutlet weak var swRelay6: WKInterfaceSwitch!
    @IBOutlet weak var swRelay7: WKInterfaceSwitch!
    @IBOutlet weak var swRelay8: WKInterfaceSwitch!
    @IBOutlet weak var swRelay9: WKInterfaceSwitch!
    @IBOutlet weak var swRelay10: WKInterfaceSwitch!
    @IBOutlet weak var swRelay11: WKInterfaceSwitch!
    @IBOutlet weak var swRelay12: WKInterfaceSwitch!
    @IBOutlet weak var swRelay13: WKInterfaceSwitch!
    @IBOutlet weak var swRelay14: WKInterfaceSwitch!
    @IBOutlet weak var swRelay15: WKInterfaceSwitch!
    @IBOutlet weak var swRelay16: WKInterfaceSwitch!
    
    @IBOutlet weak var btnRelay1: WKInterfaceButton!
    @IBOutlet weak var btnRelay2: WKInterfaceButton!
    @IBOutlet weak var btnRelay3: WKInterfaceButton!
    @IBOutlet weak var btnRelay4: WKInterfaceButton!
    @IBOutlet weak var btnRelay5: WKInterfaceButton!
    @IBOutlet weak var btnRelay6: WKInterfaceButton!
    @IBOutlet weak var btnRelay7: WKInterfaceButton!
    @IBOutlet weak var btnRelay8: WKInterfaceButton!
    @IBOutlet weak var btnRelay9: WKInterfaceButton!
    @IBOutlet weak var btnRelay10: WKInterfaceButton!
    @IBOutlet weak var btnRelay11: WKInterfaceButton!
    @IBOutlet weak var btnRelay12: WKInterfaceButton!
    @IBOutlet weak var btnRelay13: WKInterfaceButton!
    @IBOutlet weak var btnRelay14: WKInterfaceButton!
    @IBOutlet weak var btnRelay15: WKInterfaceButton!
    @IBOutlet weak var btnRelay16: WKInterfaceButton!

    
    private let session : WCSession? = WCSession.isSupported() ? WCSession.defaultSession() : nil
    
    var globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!

    @IBAction func swRelay1Changed(value: Bool) {
        circuitCommand("1", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[0] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay1State = \(value)")
    }
    @IBAction func swRelay2Changed(value: Bool) {
        circuitCommand("2", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[1] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay2State = \(value)")
    }
    @IBAction func swRelay3Changed(value: Bool) {
        circuitCommand("3", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[2] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay3State = \(value)")
    }
    @IBAction func swRelay4Changed(value: Bool) {
        circuitCommand("4", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[3] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay4State = \(value)")
    }
    @IBAction func swRelay5Changed(value: Bool) {
        circuitCommand("5", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[4] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay5State = \(value)")
    }
    @IBAction func swRelay6Changed(value: Bool) {
        circuitCommand("6", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[5] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay6State = \(value)")
    }
    @IBAction func swRelay7Changed(value: Bool) {
        circuitCommand("7", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[6] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay7State = \(value)")
    }
    @IBAction func swRelay8Changed(value: Bool) {
        circuitCommand("8", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[7] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay8State = \(value)")
    }
    @IBAction func swRelay9Changed(value: Bool) {
        circuitCommand("9", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[8] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay9State = \(value)")
    }
    @IBAction func swRelay10Changed(value: Bool) {
        circuitCommand("10", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[9] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay10State = \(value)")
    }
    @IBAction func swRelay11Changed(value: Bool) {
        circuitCommand("11", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[10] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay11State = \(value)")
    }
    @IBAction func swRelay12Changed(value: Bool) {
        circuitCommand("12", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[11] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay12State = \(value)")    }
    @IBAction func swRelay13Changed(value: Bool) {
        circuitCommand("13", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[12] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay13State = \(value)")
    }
    @IBAction func swRelay14Changed(value: Bool) {
        circuitCommand("14", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[13] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay14State = \(value)")
    }
    @IBAction func swRelay15Changed(value: Bool) {
        circuitCommand("15", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[14] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay15State = \(value)")
    }
    @IBAction func swRelay16Changed(value: Bool) {
        circuitCommand("16", command: "1");
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[15] = value ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()
        print("From watch: relay16State = \(value)")
    }
    
    @IBAction func btnRelay1Down() {
        circuitCommand("1", command: "0");
        // in the future may need different signals for button down or up. for now only need one signal for button pressed
    }
    @IBAction func btnRelay2Down() {
        circuitCommand("2", command: "0");
    }
    @IBAction func btnRelay3Down() {
        circuitCommand("3", command: "0");
    }
    @IBAction func btnRelay4Down() {
        circuitCommand("4", command: "0");
    }
    @IBAction func btnRelay5Down() {
        circuitCommand("5", command: "0");
    }
    @IBAction func btnRelay6Down() {
        circuitCommand("6", command: "0");
    }
    @IBAction func btnRelay7Down() {
        circuitCommand("7", command: "0");
    }
    @IBAction func btnRelay8Down() {
        circuitCommand("8", command: "0");
    }
    @IBAction func btnRelay9Down() {
        circuitCommand("9", command: "0");
    }
    @IBAction func btnRelay10Down() {
        circuitCommand("10", command: "0");
    }
    @IBAction func btnRelay11Down() {
        circuitCommand("11", command: "0");
    }
    @IBAction func btnRelay12Down() {
        circuitCommand("12", command: "0");
    }
    @IBAction func btnRelay13Down() {
        circuitCommand("13", command: "0");
    }
    @IBAction func btnRelay14Down() {
        circuitCommand("14", command: "0");
    }
    @IBAction func btnRelay15Down() {
        circuitCommand("15", command: "0");
    }
    @IBAction func btnRelay16Down() {
        circuitCommand("16", command: "0");
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
        let globalDefaults: NSUserDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
        let controlCenterTypeID = globalDefaults.integerForKey("controlCenterType")
        swRelay1.setTitle(globalDefaults.stringForKey("relay1Name"))
        swRelay2.setTitle(globalDefaults.stringForKey("relay2Name"))
        swRelay3.setTitle(globalDefaults.stringForKey("relay3Name"))
        swRelay4.setTitle(globalDefaults.stringForKey("relay4Name"))
        swRelay5.setTitle(globalDefaults.stringForKey("relay5Name"))
        swRelay6.setTitle(globalDefaults.stringForKey("relay6Name"))
        swRelay7.setTitle(globalDefaults.stringForKey("relay7Name"))
        swRelay8.setTitle(globalDefaults.stringForKey("relay8Name"))
        swRelay9.setTitle(globalDefaults.stringForKey("relay9Name"))
        swRelay10.setTitle(globalDefaults.stringForKey("relay10Name"))
        swRelay11.setTitle(globalDefaults.stringForKey("relay11Name"))
        swRelay12.setTitle(globalDefaults.stringForKey("relay12Name"))
        swRelay13.setTitle(globalDefaults.stringForKey("relay13Name"))
        swRelay14.setTitle(globalDefaults.stringForKey("relay14Name"))
        swRelay15.setTitle(globalDefaults.stringForKey("relay15Name"))
        swRelay16.setTitle(globalDefaults.stringForKey("relay16Name"))
        
        btnRelay1.setTitle(globalDefaults.stringForKey("relay1Name"))
        btnRelay2.setTitle(globalDefaults.stringForKey("relay2Name"))
        btnRelay3.setTitle(globalDefaults.stringForKey("relay3Name"))
        btnRelay4.setTitle(globalDefaults.stringForKey("relay4Name"))
        btnRelay5.setTitle(globalDefaults.stringForKey("relay5Name"))
        btnRelay6.setTitle(globalDefaults.stringForKey("relay6Name"))
        btnRelay7.setTitle(globalDefaults.stringForKey("relay7Name"))
        btnRelay8.setTitle(globalDefaults.stringForKey("relay8Name"))
        btnRelay9.setTitle(globalDefaults.stringForKey("relay9Name"))
        btnRelay10.setTitle(globalDefaults.stringForKey("relay10Name"))
        btnRelay11.setTitle(globalDefaults.stringForKey("relay11Name"))
        btnRelay12.setTitle(globalDefaults.stringForKey("relay12Name"))
        btnRelay13.setTitle(globalDefaults.stringForKey("relay13Name"))
        btnRelay14.setTitle(globalDefaults.stringForKey("relay14Name"))
        btnRelay15.setTitle(globalDefaults.stringForKey("relay15Name"))
        btnRelay16.setTitle(globalDefaults.stringForKey("relay16Name"))
        /*
        swRelay1.setHidden(globalDefaults.boolForKey("relay1IsButton"))
        swRelay2.setHidden(globalDefaults.boolForKey("relay2IsButton"))
        swRelay3.setHidden(globalDefaults.boolForKey("relay3IsButton"))
        swRelay4.setHidden(globalDefaults.boolForKey("relay4IsButton"))
        swRelay5.setHidden(globalDefaults.boolForKey("relay5IsButton"))
        swRelay6.setHidden(globalDefaults.boolForKey("relay6IsButton"))
        swRelay7.setHidden(globalDefaults.boolForKey("relay7IsButton"))
        swRelay8.setHidden(globalDefaults.boolForKey("relay8IsButton"))
        swRelay9.setHidden(globalDefaults.boolForKey("relay9IsButton"))
        swRelay10.setHidden(globalDefaults.boolForKey("relay10IsButton"))
        swRelay11.setHidden(globalDefaults.boolForKey("relay11IsButton"))
        swRelay12.setHidden(globalDefaults.boolForKey("relay12IsButton"))
        swRelay13.setHidden(globalDefaults.boolForKey("relay13IsButton"))
        swRelay14.setHidden(globalDefaults.boolForKey("relay14IsButton"))
        swRelay15.setHidden(globalDefaults.boolForKey("relay15IsButton"))
        swRelay16.setHidden(globalDefaults.boolForKey("relay16IsButton"))
        
        btnRelay1.setHidden(!globalDefaults.boolForKey("relay1IsButton"))
        btnRelay2.setHidden(!globalDefaults.boolForKey("relay2IsButton"))
        btnRelay3.setHidden(!globalDefaults.boolForKey("relay3IsButton"))
        btnRelay4.setHidden(!globalDefaults.boolForKey("relay4IsButton"))
        btnRelay5.setHidden(!globalDefaults.boolForKey("relay5IsButton"))
        btnRelay6.setHidden(!globalDefaults.boolForKey("relay6IsButton"))
        btnRelay7.setHidden(!globalDefaults.boolForKey("relay7IsButton"))
        btnRelay8.setHidden(!globalDefaults.boolForKey("relay8IsButton"))
        btnRelay9.setHidden(!globalDefaults.boolForKey("relay9IsButton"))
        btnRelay10.setHidden(!globalDefaults.boolForKey("relay10IsButton"))
        btnRelay11.setHidden(!globalDefaults.boolForKey("relay11IsButton"))
        btnRelay12.setHidden(!globalDefaults.boolForKey("relay12IsButton"))
        btnRelay13.setHidden(!globalDefaults.boolForKey("relay13IsButton"))
        btnRelay14.setHidden(!globalDefaults.boolForKey("relay14IsButton"))
        btnRelay15.setHidden(!globalDefaults.boolForKey("relay15IsButton"))
        btnRelay16.setHidden(!globalDefaults.boolForKey("relay16IsButton"))
        */
        
        var relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay1.setHidden(!(relayIsButtonArr[0] == "0" ? false : true))
        btnRelay2.setHidden(!(relayIsButtonArr[1] == "0" ? false : true))
        btnRelay3.setHidden(!(relayIsButtonArr[2] == "0" ? false : true))
        btnRelay4.setHidden(!(relayIsButtonArr[3] == "0" ? false : true))
        btnRelay5.setHidden(!(relayIsButtonArr[4] == "0" ? false : true))
        btnRelay6.setHidden(!(relayIsButtonArr[5] == "0" ? false : true))
        btnRelay7.setHidden(!(relayIsButtonArr[6] == "0" ? false : true))
        btnRelay8.setHidden(!(relayIsButtonArr[7] == "0" ? false : true))
        btnRelay9.setHidden(!(relayIsButtonArr[8] == "0" ? false : true))
        btnRelay10.setHidden(!(relayIsButtonArr[9] == "0" ? false : true))
        btnRelay11.setHidden(!(relayIsButtonArr[10] == "0" ? false : true))
        btnRelay12.setHidden(!(relayIsButtonArr[11] == "0" ? false : true))
        btnRelay13.setHidden(!(relayIsButtonArr[12] == "0" ? false : true))
        btnRelay14.setHidden(!(relayIsButtonArr[13] == "0" ? false : true))
        btnRelay15.setHidden(!(relayIsButtonArr[14] == "0" ? false : true))
        btnRelay16.setHidden(!(relayIsButtonArr[15] == "0" ? false : true))
        
        swRelay1.setHidden(relayIsButtonArr[0] == "0" ? false : true)
        swRelay2.setHidden(relayIsButtonArr[1] == "0" ? false : true)
        swRelay3.setHidden(relayIsButtonArr[2] == "0" ? false : true)
        swRelay4.setHidden(relayIsButtonArr[3] == "0" ? false : true)
        swRelay5.setHidden(relayIsButtonArr[4] == "0" ? false : true)
        swRelay6.setHidden(relayIsButtonArr[5] == "0" ? false : true)
        swRelay7.setHidden(relayIsButtonArr[6] == "0" ? false : true)
        swRelay8.setHidden(relayIsButtonArr[7] == "0" ? false : true)
        swRelay9.setHidden(relayIsButtonArr[8] == "0" ? false : true)
        swRelay10.setHidden(relayIsButtonArr[9] == "0" ? false : true)
        swRelay11.setHidden(relayIsButtonArr[10] == "0" ? false : true)
        swRelay12.setHidden(relayIsButtonArr[11] == "0" ? false : true)
        swRelay13.setHidden(relayIsButtonArr[12] == "0" ? false : true)
        swRelay14.setHidden(relayIsButtonArr[13] == "0" ? false : true)
        swRelay15.setHidden(relayIsButtonArr[14] == "0" ? false : true)
        swRelay16.setHidden(relayIsButtonArr[15] == "0" ? false : true)
        
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        swRelay1.setOn(relayStateArr[0] == "0" ? false : true)
        swRelay2.setOn(relayStateArr[1] == "0" ? false : true)
        swRelay3.setOn(relayStateArr[2] == "0" ? false : true)
        swRelay4.setOn(relayStateArr[3] == "0" ? false : true)
        swRelay5.setOn(relayStateArr[4] == "0" ? false : true)
        swRelay6.setOn(relayStateArr[5] == "0" ? false : true)
        swRelay7.setOn(relayStateArr[6] == "0" ? false : true)
        swRelay8.setOn(relayStateArr[7] == "0" ? false : true)
        swRelay9.setOn(relayStateArr[8] == "0" ? false : true)
        swRelay10.setOn(relayStateArr[9] == "0" ? false : true)
        swRelay11.setOn(relayStateArr[10] == "0" ? false : true)
        swRelay12.setOn(relayStateArr[11] == "0" ? false : true)
        swRelay13.setOn(relayStateArr[12] == "0" ? false : true)
        swRelay14.setOn(relayStateArr[13] == "0" ? false : true)
        swRelay15.setOn(relayStateArr[14] == "0" ? false : true)
        swRelay16.setOn(relayStateArr[15] == "0" ? false : true)
        
        switch controlCenterTypeID {
        case 1: // 16 circuits
            swRelay8.setHidden(true)
            swRelay9.setHidden(true)
            swRelay10.setHidden(true)
            swRelay11.setHidden(true)
            swRelay12.setHidden(true)
            swRelay13.setHidden(true)
            swRelay14.setHidden(true)
            swRelay15.setHidden(true)
            swRelay16.setHidden(true)
            
            btnRelay9.setHidden(true)
            btnRelay10.setHidden(true)
            btnRelay11.setHidden(true)
            btnRelay12.setHidden(true)
            btnRelay13.setHidden(true)
            btnRelay14.setHidden(true)
            btnRelay15.setHidden(true)
            btnRelay16.setHidden(true)
            /*
            //2, 3, 6, 7 | Set Relay State | Switch & Button Titles
            swRelay2.setOn(globalDefaults.boolForKey("relay2State"))
            swRelay3.setOn(globalDefaults.boolForKey("relay3State"))
            swRelay6.setOn(globalDefaults.boolForKey("relay6State"))
            swRelay7.setOn(globalDefaults.boolForKey("relay7State"))
            
            swRelay2.setTitle(globalDefaults.stringForKey("relay1Name"))
            swRelay3.setTitle(globalDefaults.stringForKey("relay2Name"))
            swRelay6.setTitle(globalDefaults.stringForKey("relay3Name"))
            swRelay7.setTitle(globalDefaults.stringForKey("relay4Name"))
            
            btnRelay2.setTitle(globalDefaults.stringForKey("relay1Name"))
            btnRelay3.setTitle(globalDefaults.stringForKey("relay2Name"))
            btnRelay6.setTitle(globalDefaults.stringForKey("relay3Name"))
            btnRelay7.setTitle(globalDefaults.stringForKey("relay4Name"))
            
            //Show Hide Button Or Switches According To Remap
            btnRelay2.setHidden(!globalDefaults.boolForKey("relay1IsButton"))
            btnRelay3.setHidden(!globalDefaults.boolForKey("relay2IsButton"))
            btnRelay6.setHidden(!globalDefaults.boolForKey("relay3IsButton"))
            btnRelay7.setHidden(!globalDefaults.boolForKey("relay4IsButton"))
            
            swRelay2.setHidden(globalDefaults.boolForKey("relay1IsButton"))
            swRelay3.setHidden(globalDefaults.boolForKey("relay2IsButton"))
            swRelay6.setHidden(globalDefaults.boolForKey("relay3IsButton"))
            swRelay7.setHidden(globalDefaults.boolForKey("relay4IsButton"))
            */
            /*
        case 2: // 8 circuits
            swRelay9.setHidden(true)
            swRelay10.setHidden(true)
            swRelay11.setHidden(true)
            swRelay12.setHidden(true)
            swRelay13.setHidden(true)
            swRelay14.setHidden(true)
            swRelay15.setHidden(true)
            swRelay16.setHidden(true)
            
            btnRelay9.setHidden(true)
            btnRelay10.setHidden(true)
            btnRelay11.setHidden(true)
            btnRelay12.setHidden(true)
            btnRelay13.setHidden(true)
            btnRelay14.setHidden(true)
            btnRelay15.setHidden(true)
            btnRelay16.setHidden(true)
            */
        default: break
        }
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
        })
        */
    }
    
    /*private func circuitCommand(target: String, command: String) {
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

