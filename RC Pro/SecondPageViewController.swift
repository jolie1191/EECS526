//
//  SecondPageViewController.swift
//  RC Pro
//
//  Created by Su Yan on 11/18/15.
//  Copyright (c) 2015 RideController LLC. All rights reserved.
//

import UIKit
import Foundation

class SecondPageViewController: UIViewController {

    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    @IBOutlet var swipeRightGesture: UISwipeGestureRecognizer!
    @IBOutlet weak var swRelay9: UISwitch!
    @IBOutlet weak var swRelay10: UISwitch!
    @IBOutlet weak var swRelay11: UISwitch!
    @IBOutlet weak var swRelay12: UISwitch!
    @IBOutlet weak var swRelay13: UISwitch!
    @IBOutlet weak var swRelay14: UISwitch!
    @IBOutlet weak var swRelay15: UISwitch!
    @IBOutlet weak var swRelay16: UISwitch!
    
    @IBOutlet weak var btnRelay9: UIButton!
    @IBOutlet weak var btnRelay10: UIButton!
    @IBOutlet weak var btnRelay11: UIButton!
    @IBOutlet weak var btnRelay12: UIButton!
    @IBOutlet weak var btnRelay13: UIButton!
    @IBOutlet weak var btnRelay14: UIButton!
    @IBOutlet weak var btnRelay15: UIButton!
    @IBOutlet weak var btnRelay16: UIButton!
    
    @IBOutlet weak var labelRelay9: UILabel!
    @IBOutlet weak var labelRelay10: UILabel!
    @IBOutlet weak var labelRelay11: UILabel!
    @IBOutlet weak var labelRelay12: UILabel!
    @IBOutlet weak var labelRelay13: UILabel!
    @IBOutlet weak var labelRelay14: UILabel!
    @IBOutlet weak var labelRelay15: UILabel!
    @IBOutlet weak var labelRelay16: UILabel!
    
    
    
    func circuitButtonPressWatch(circuitID: Int)
    {
        print("Relay \(circuitID) button pressed")
        /*
        //Turn The Circuit On
        if circuitID == 9 {
            let buf: [UInt8] = [0x00 + UInt8(circuitID), 0x01, 0x00]
            //ble.write(NSData(bytes: buf, length: 3))
        }
        else {
            var buf: [UInt8] = [0x10, 0x01, 0x00]
            buf[0] |= UInt8(circuitID - 10)
            //ble.write(NSData(bytes: buf, length: 3))
        }
        
        //Watch Doesn't Have Release Command So Sleep The Button On For Half Second.
        NSThread.sleepForTimeInterval(0.5)
        
        //Turn The Circuit Off
        if circuitID == 9 {
            let buf: [UInt8] = [0x00 + UInt8(circuitID), 0x00, 0x00]
            //ble.write(NSData(bytes: buf, length: 3))
        }
        else {
            var buf: [UInt8] = [0x10, 0x00, 0x00]
            buf[0] |= UInt8(circuitID - 10)
            //ble.write(NSData(bytes: buf, length: 3))
        }*/
        
        print("Relay \(circuitID) button released")
    }

    
    @IBAction func relayButtonPress(sender: UIButton) {
        
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
        
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        
    }
    
    @IBAction func unwindToSecond(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToMain", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToMainPage" {
            if let mainPage = segue.destinationViewController as? SettingsPageViewController {
                
            }
        }
        else if segue.identifier == "pushToThirdPage" {
            if let thirdPage = segue.destinationViewController as? SecondPageViewController {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        print("Switched to Second Page")
        
        self.loadUserDefaults()
//        self.getCurrentRelayState()
    }
   
    private func loadUserDefaults() {
        labelRelay9.text = globalDefaults.stringForKey("relay9Name")
        labelRelay10.text = globalDefaults.stringForKey("relay10Name")
        labelRelay11.text = globalDefaults.stringForKey("relay11Name")
        labelRelay12.text = globalDefaults.stringForKey("relay12Name")
        labelRelay13.text = globalDefaults.stringForKey("relay13Name")
        labelRelay14.text = globalDefaults.stringForKey("relay14Name")
        labelRelay15.text = globalDefaults.stringForKey("relay15Name")
        labelRelay16.text = globalDefaults.stringForKey("relay16Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay9.hidden = !(relayIsButtonArr[8] == "0" ? false : true)
        btnRelay10.hidden = !(relayIsButtonArr[9] == "0" ? false : true)
        btnRelay11.hidden = !(relayIsButtonArr[10] == "0" ? false : true)
        btnRelay12.hidden = !(relayIsButtonArr[11] == "0" ? false : true)
        btnRelay13.hidden = !(relayIsButtonArr[12] == "0" ? false : true)
        btnRelay14.hidden = !(relayIsButtonArr[13] == "0" ? false : true)
        btnRelay15.hidden = !(relayIsButtonArr[14] == "0" ? false : true)
        btnRelay16.hidden = !(relayIsButtonArr[15] == "0" ? false : true)
        
        swRelay9.hidden = relayIsButtonArr[8] == "0" ? false : true
        swRelay10.hidden = relayIsButtonArr[9] == "0" ? false : true
        swRelay11.hidden = relayIsButtonArr[10] == "0" ? false : true
        swRelay12.hidden = relayIsButtonArr[11] == "0" ? false : true
        swRelay13.hidden = relayIsButtonArr[12] == "0" ? false : true
        swRelay14.hidden = relayIsButtonArr[13] == "0" ? false : true
        swRelay15.hidden = relayIsButtonArr[14] == "0" ? false : true
        swRelay16.hidden = relayIsButtonArr[15] == "0" ? false : true
        
        swRelay9.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay10.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay11.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay12.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay13.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay14.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay15.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay16.transform = CGAffineTransformMakeScale(1.25, 1.25)
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        print(controlCenterType)
        self.renderControlFields(controlCenterType)
        print("Loading Second Page complete")
    }
    
    private func renderControlFields(controlCenterTypeID: Int) {
        switch controlCenterTypeID {
        case 1:
            // Setup For 8 Circuit Zones
            //self.showAllLabels();
            print("Should have loaded 8 label zones")
            swipeRightGesture.enabled = false
        case 2:
            // Setup For 16 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = false
            print("Should have loaded 16 label zones")
        case 3:
            // Setup For 24 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = true
            print("Should have loaded 24 label zones")
            
        case 4:
            // Setup For 32 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = true
            print("Should have loaded 32 label zones")
        case 5:
            // Setup For 40 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = true
            print("Should have loaded 40 label zones")
        case 6:
            // Setup For 48 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = true
            print("Should have loaded 48 label zones")
        case 7:
            // Setup For 56 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = true
            print("Should have loaded 56 label zones")
        case 8:
            // Setup For 64 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = true
            print("Should have loaded 64 label zones")
        default: break
        }
        
    }

    func onDefaultsChanged() {
        let relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        swRelay9.setOn(relayStateArr[8] == "0" ? false : true, animated: true)
        swRelay10.setOn(relayStateArr[9] == "0" ? false : true, animated: true)
        swRelay11.setOn(relayStateArr[10] == "0" ? false : true, animated: true)
        swRelay12.setOn(relayStateArr[11] == "0" ? false : true, animated: true)
        swRelay13.setOn(relayStateArr[12] == "0" ? false : true, animated: true)
        swRelay14.setOn(relayStateArr[13] == "0" ? false : true, animated: true)
        swRelay15.setOn(relayStateArr[14] == "0" ? false : true, animated: true)
        swRelay16.setOn(relayStateArr[15] == "0" ? false : true, animated: true)
    }
    /*
    private func getCurrentRelayState() {
        swRelay9.on = globalDefaults.boolForKey("relay9State")
        swRelay10.on = globalDefaults.boolForKey("relay10State")
        swRelay11.on = globalDefaults.boolForKey("relay11State")
        swRelay12.on = globalDefaults.boolForKey("relay12State")
        swRelay13.on = globalDefaults.boolForKey("relay13State")
        swRelay14.on = globalDefaults.boolForKey("relay14State")
        swRelay15.on = globalDefaults.boolForKey("relay15State")
        swRelay16.on = globalDefaults.boolForKey("relay16State")
        
        print("Relay states on Second Page synced")
    }*/
}

