//
//  SecondPageViewControllerIpad.swift
//  RC Pro
//
//  Created by Lecheng Zheng on 1/40/16.
//  Copyright © 2016 RideController. All rights reserved.
//

import UIKit
import Foundation
import CoreBluetooth

class ThirdPageViewControllerIpad: UIViewController {
    
    //    let ble = BLE()
    
    var currentDevice: CBPeripheral! = nil
    var dataReceived = false
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    @IBOutlet var swipeLeftGesture: UISwipeGestureRecognizer!
    
    @IBOutlet weak var swRelay33: UISwitch!
    @IBOutlet weak var swRelay34: UISwitch!
    @IBOutlet weak var swRelay35: UISwitch!
    @IBOutlet weak var swRelay36: UISwitch!
    @IBOutlet weak var swRelay37: UISwitch!
    @IBOutlet weak var swRelay38: UISwitch!
    @IBOutlet weak var swRelay39: UISwitch!
    @IBOutlet weak var swRelay40: UISwitch!
    @IBOutlet weak var swRelay41: UISwitch!
    @IBOutlet weak var swRelay42: UISwitch!
    @IBOutlet weak var swRelay43: UISwitch!
    @IBOutlet weak var swRelay44: UISwitch!
    @IBOutlet weak var swRelay45: UISwitch!
    @IBOutlet weak var swRelay46: UISwitch!
    @IBOutlet weak var swRelay47: UISwitch!
    @IBOutlet weak var swRelay48: UISwitch!
    
    @IBOutlet weak var btnRelay33: UIButton!
    @IBOutlet weak var btnRelay34: UIButton!
    @IBOutlet weak var btnRelay35: UIButton!
    @IBOutlet weak var btnRelay36: UIButton!
    @IBOutlet weak var btnRelay37: UIButton!
    @IBOutlet weak var btnRelay38: UIButton!
    @IBOutlet weak var btnRelay39: UIButton!
    @IBOutlet weak var btnRelay40: UIButton!
    @IBOutlet weak var btnRelay41: UIButton!
    @IBOutlet weak var btnRelay42: UIButton!
    @IBOutlet weak var btnRelay43: UIButton!
    @IBOutlet weak var btnRelay44: UIButton!
    @IBOutlet weak var btnRelay45: UIButton!
    @IBOutlet weak var btnRelay46: UIButton!
    @IBOutlet weak var btnRelay47: UIButton!
    @IBOutlet weak var btnRelay48: UIButton!
    
    @IBOutlet weak var labelRelay33: UILabel!
    @IBOutlet weak var labelRelay34: UILabel!
    @IBOutlet weak var labelRelay35: UILabel!
    @IBOutlet weak var labelRelay36: UILabel!
    @IBOutlet weak var labelRelay37: UILabel!
    @IBOutlet weak var labelRelay38: UILabel!
    @IBOutlet weak var labelRelay39: UILabel!
    @IBOutlet weak var labelRelay40: UILabel!
    @IBOutlet weak var labelRelay41: UILabel!
    @IBOutlet weak var labelRelay42: UILabel!
    @IBOutlet weak var labelRelay43: UILabel!
    @IBOutlet weak var labelRelay44: UILabel!
    @IBOutlet weak var labelRelay45: UILabel!
    @IBOutlet weak var labelRelay46: UILabel!
    @IBOutlet weak var labelRelay47: UILabel!
    @IBOutlet weak var labelRelay48: UILabel!
    
    
    @IBAction func relayButtonPress(sender: UIButton) {
        
        print("Relay \(sender.tag) button pressed")
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
        
        print("Relay \(sender.tag) button released")
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        
        print("Relay \(sender.tag) switch changed")
    }
    /*
    @IBAction func menuSegmentChange(sender: UISegmentedControl) {
    if sender.selectedSegmentIndex == 1 {
    self.performSegueWithIdentifier("pushToSettingsPage", sender: self)
    sender.selectedSegmentIndex = 0
    }
    }*/
    
    
    @IBAction func unwindToThirdIpad(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    @IBAction func unwindToSecondIpad(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToSecondFromThirdIpad", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToFourthPageIpad" {
            if let fourthPage = segue.destinationViewController as? FourthPageViewControllerIpad {
                
            }
        }
        else if segue.identifier == "pushToSecondPage" {
            if let secondPage = segue.destinationViewController as? SecondPageViewControllerIpad {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second iPad view loaded")
        
        //        ble.controlSetup()
        //        ble.delegate = self
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        self.navigationController!.setNavigationBarHidden(true, animated: false)
        self.loadUserDefaults()
    }
    
    private func loadUserDefaults() {
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        
        labelRelay33.text = globalDefaults.stringForKey("relay33Name")
        labelRelay34.text = globalDefaults.stringForKey("relay34Name")
        labelRelay35.text = globalDefaults.stringForKey("relay35Name")
        labelRelay36.text = globalDefaults.stringForKey("relay36Name")
        labelRelay37.text = globalDefaults.stringForKey("relay37Name")
        labelRelay38.text = globalDefaults.stringForKey("relay38Name")
        labelRelay39.text = globalDefaults.stringForKey("relay39Name")
        labelRelay40.text = globalDefaults.stringForKey("relay40Name")
        labelRelay41.text = globalDefaults.stringForKey("relay41Name")
        labelRelay42.text = globalDefaults.stringForKey("relay42Name")
        labelRelay43.text = globalDefaults.stringForKey("relay43Name")
        labelRelay44.text = globalDefaults.stringForKey("relay44Name")
        labelRelay45.text = globalDefaults.stringForKey("relay45Name")
        labelRelay46.text = globalDefaults.stringForKey("relay46Name")
        labelRelay47.text = globalDefaults.stringForKey("relay47Name")
        labelRelay48.text = globalDefaults.stringForKey("relay48Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay33.hidden = !(relayIsButtonArr[32] == "0" ? false : true)
        btnRelay34.hidden = !(relayIsButtonArr[33] == "0" ? false : true)
        btnRelay35.hidden = !(relayIsButtonArr[34] == "0" ? false : true)
        btnRelay36.hidden = !(relayIsButtonArr[35] == "0" ? false : true)
        btnRelay37.hidden = !(relayIsButtonArr[36] == "0" ? false : true)
        btnRelay38.hidden = !(relayIsButtonArr[37] == "0" ? false : true)
        btnRelay39.hidden = !(relayIsButtonArr[38] == "0" ? false : true)
        btnRelay40.hidden = !(relayIsButtonArr[39] == "0" ? false : true)
        btnRelay41.hidden = !(relayIsButtonArr[40] == "0" ? false : true)
        btnRelay42.hidden = !(relayIsButtonArr[41] == "0" ? false : true)
        btnRelay43.hidden = !(relayIsButtonArr[42] == "0" ? false : true)
        btnRelay44.hidden = !(relayIsButtonArr[43] == "0" ? false : true)
        btnRelay45.hidden = !(relayIsButtonArr[44] == "0" ? false : true)
        btnRelay46.hidden = !(relayIsButtonArr[45] == "0" ? false : true)
        btnRelay47.hidden = !(relayIsButtonArr[46] == "0" ? false : true)
        btnRelay48.hidden = !(relayIsButtonArr[47] == "0" ? false : true)
        
        swRelay33.hidden = relayIsButtonArr[32] == "0" ? false : true
        swRelay34.hidden = relayIsButtonArr[33] == "0" ? false : true
        swRelay35.hidden = relayIsButtonArr[34] == "0" ? false : true
        swRelay36.hidden = relayIsButtonArr[35] == "0" ? false : true
        swRelay37.hidden = relayIsButtonArr[36] == "0" ? false : true
        swRelay38.hidden = relayIsButtonArr[37] == "0" ? false : true
        swRelay39.hidden = relayIsButtonArr[38] == "0" ? false : true
        swRelay40.hidden = relayIsButtonArr[39] == "0" ? false : true
        swRelay41.hidden = relayIsButtonArr[40] == "0" ? false : true
        swRelay42.hidden = relayIsButtonArr[41] == "0" ? false : true
        swRelay43.hidden = relayIsButtonArr[42] == "0" ? false : true
        swRelay44.hidden = relayIsButtonArr[43] == "0" ? false : true
        swRelay45.hidden = relayIsButtonArr[44] == "0" ? false : true
        swRelay46.hidden = relayIsButtonArr[45] == "0" ? false : true
        swRelay47.hidden = relayIsButtonArr[46] == "0" ? false : true
        swRelay48.hidden = relayIsButtonArr[47] == "0" ? false : true
        
        swRelay33.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay34.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay35.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay36.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay37.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay38.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay39.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay40.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay41.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay42.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay43.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay44.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay45.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay46.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay47.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay48.transform = CGAffineTransformMakeScale(1.25, 1.25)
        self.renderControlFields(controlCenterType)
        
    }
    
    private func renderControlFields(controlCenterTypeID: Int) {
        switch controlCenterTypeID {
        case 1:
            swipeLeftGesture.enabled = false
        case 2:
            swipeLeftGesture.enabled = false 
        case 3:
            swipeLeftGesture.enabled = false
        case 4:
            swipeLeftGesture.enabled = false
        case 5:
            // Setup For 32 Circuit Zones
            self.hideAllCircuitsAndLabels()
            labelRelay37.hidden = false
            btnRelay37.hidden = false
            swRelay37.hidden = false
            
            labelRelay38.hidden = false
            btnRelay38.hidden = false
            swRelay38.hidden = false
            
            labelRelay39.hidden = false
            btnRelay39.hidden = false
            swRelay39.hidden = false
            
            labelRelay40.hidden = false
            btnRelay40.hidden = false
            swRelay40.hidden = false
            
            labelRelay41.hidden = false
            btnRelay41.hidden = false
            swRelay41.hidden = false
            
            labelRelay42.hidden = false
            btnRelay42.hidden = false
            swRelay42.hidden = false
            
            labelRelay43.hidden = false
            btnRelay43.hidden = false
            swRelay43.hidden = false
            
            labelRelay44.hidden = false
            btnRelay44.hidden = false
            swRelay44.hidden = false
            
            // Remap Sender Tag Values
            
            swRelay37.tag = 33
            btnRelay37.tag = 33
            
            swRelay38.tag = 34
            btnRelay38.tag = 34
            
            swRelay39.tag = 35
            btnRelay39.tag = 35
            
            swRelay40.tag = 36
            btnRelay40.tag = 36
            
            swRelay41.tag = 37
            btnRelay41.tag = 37
            
            swRelay42.tag = 38
            btnRelay42.tag = 38
            
            swRelay43.tag = 39
            btnRelay43.tag = 39
            
            swRelay44.tag = 40
            btnRelay44.tag = 40
            
            // Remap The Set Text Fields
            labelRelay37.text = globalDefaults.stringForKey("relay33Name")
            labelRelay38.text = globalDefaults.stringForKey("relay34Name")
            labelRelay39.text = globalDefaults.stringForKey("relay35Name")
            labelRelay40.text = globalDefaults.stringForKey("relay36Name")
            labelRelay41.text = globalDefaults.stringForKey("relay37Name")
            labelRelay42.text = globalDefaults.stringForKey("relay38Name")
            labelRelay43.text = globalDefaults.stringForKey("relay39Name")
            labelRelay44.text = globalDefaults.stringForKey("relay40Name")

            
            let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
            btnRelay37.hidden = !(relayIsButtonArr[32] == "0" ? false : true)
            btnRelay38.hidden = !(relayIsButtonArr[33] == "0" ? false : true)
            btnRelay39.hidden = !(relayIsButtonArr[34] == "0" ? false : true)
            btnRelay40.hidden = !(relayIsButtonArr[35] == "0" ? false : true)
            btnRelay41.hidden = !(relayIsButtonArr[36] == "0" ? false : true)
            btnRelay42.hidden = !(relayIsButtonArr[37] == "0" ? false : true)
            btnRelay43.hidden = !(relayIsButtonArr[38] == "0" ? false : true)
            btnRelay44.hidden = !(relayIsButtonArr[39] == "0" ? false : true)
            

            swRelay37.hidden = relayIsButtonArr[32] == "0" ? false : true
            swRelay38.hidden = relayIsButtonArr[33] == "0" ? false : true
            swRelay39.hidden = relayIsButtonArr[34] == "0" ? false : true
            swRelay40.hidden = relayIsButtonArr[35] == "0" ? false : true
            swRelay41.hidden = relayIsButtonArr[36] == "0" ? false : true
            swRelay42.hidden = relayIsButtonArr[37] == "0" ? false : true
            swRelay43.hidden = relayIsButtonArr[38] == "0" ? false : true
            swRelay44.hidden = relayIsButtonArr[39] == "0" ? false : true

            
            swipeLeftGesture.enabled = false
            print("Should have loaded 32 label zones")
        case 6:
            swipeLeftGesture.enabled = false
        case 7:
            swipeLeftGesture.enabled = true
        case 8:
            swipeLeftGesture.enabled = true
        default:break
        }
    }
    
    
    
    private func hideAllCircuitsAndLabels() {
        labelRelay33.hidden = true
        btnRelay33.hidden = true
        swRelay33.hidden = true
        labelRelay34.hidden = true
        btnRelay34.hidden = true
        swRelay34.hidden = true
        labelRelay35.hidden = true
        btnRelay35.hidden = true
        swRelay35.hidden = true
        labelRelay36.hidden = true
        btnRelay36.hidden = true
        swRelay36.hidden = true
        labelRelay37.hidden = true
        btnRelay37.hidden = true
        swRelay37.hidden = true
        labelRelay38.hidden = true
        btnRelay38.hidden = true
        swRelay38.hidden = true
        labelRelay39.hidden = true
        btnRelay39.hidden = true
        swRelay39.hidden = true
        labelRelay40.hidden = true
        btnRelay40.hidden = true
        swRelay40.hidden = true
        labelRelay41.hidden = true
        btnRelay41.hidden = true
        swRelay41.hidden = true
        labelRelay42.hidden = true
        btnRelay42.hidden = true
        swRelay42.hidden = true
        labelRelay43.hidden = true
        btnRelay43.hidden = true
        swRelay43.hidden = true
        labelRelay44.hidden = true
        btnRelay44.hidden = true
        swRelay44.hidden = true
        labelRelay45.hidden = true
        btnRelay45.hidden = true
        swRelay45.hidden = true
        labelRelay46.hidden = true
        btnRelay46.hidden = true
        swRelay46.hidden = true
        labelRelay47.hidden = true
        btnRelay47.hidden = true
        swRelay47.hidden = true
        labelRelay48.hidden = true
        btnRelay48.hidden = true
        swRelay48.hidden = true
    }
    
    /*
    func actionSheet(sheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
    
    }*/
    
    func bleDidConnect() {
        /*        connectIndicator.stopAnimating()
        
        swRelay33.enabled = true
        swRelay34.enabled = true
        swRelay35.enabled = true
        swRelay36.enabled = true
        swRelay37.enabled = true
        swRelay38.enabled = true
        swRelay39.enabled = true
        swRelay40.enabled = true
        swRelay41.enabled = true
        swRelay42.enabled = true
        swRelay43.enabled = true
        swRelay44.enabled = true
        swRelay45.enabled = true
        swRelay46.enabled = true
        swRelay47.enabled = true
        swRelay48.enabled = true
        startEngine.enabled = true
        
        // Send authentication command
        var passcode: NSString! = nil
        if currentDevice != nil && globalDefaults.stringForKey("passcode" + currentDevice.identifier.UUIDString) != nil {
        passcode = globalDefaults.stringForKey("passcode" + currentDevice.identifier.UUIDString)! as NSString
        }
        else if globalDefaults.stringForKey("passcode") != nil {
        passcode = globalDefaults.stringForKey("passcode")! as NSString
        }
        if passcode.length == 6 {
        let passcodeSub1 = Int(passcode.substringWithRange(NSRange(location: 0, length: 2)))!
        let passcodeSub2 = Int(passcode.substringWithRange(NSRange(location: 2, length: 2)))!
        let passcodeSub3 = Int(passcode.substringWithRange(NSRange(location: 4, length: 2)))!
        let authCode: [UInt8] = [0x98, UInt8(passcodeSub1), UInt8(passcodeSub2), UInt8(passcodeSub3)]
        
        ble.write(NSData(bytes: authCode, length: 4))
        print("Connected")
        
        // Send command to retrive current states of relays
        let buf = [0x99, 0x00, 0x00]
        ble.write(NSData(bytes: buf, length: 3))
        dataReceived = false
        NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "validateConnection:", userInfo: nil, repeats: false)
        }
        else if ble.activePeripheral != nil && ble.activePeripheral.state == CBPeripheralState.Connected {
        ble.CM.cancelPeripheralConnection(ble.activePeripheral)
        btnConnect.setTitle("Connect", forState: UIControlState.Normal)
        globalDefaults.removeObjectForKey("passcode" + currentDevice.identifier.UUIDString)
        currentDevice = nil
        } */
    }
    
    func bleDidDisconnect() {
        /*        btnConnect.setTitle("Connect", forState: UIControlState.Normal)
        connectIndicator.stopAnimating()
        
        swRelay33.enabled = false
        swRelay34.enabled = false
        swRelay35.enabled = false
        swRelay36.enabled = false
        swRelay37.enabled = false
        swRelay38.enabled = false
        swRelay39.enabled = false
        swRelay40.enabled = false
        swRelay41.enabled = false
        swRelay42.enabled = false
        swRelay43.enabled = false
        swRelay44.enabled = false
        swRelay45.enabled = false
        swRelay46.enabled = false
        swRelay47.enabled = false
        swRelay48.enabled = false
        startEngine.enabled = false
        
        currentDevice = nil
        print("Disconnected") */
    }
    
    //done
    func bleDidReceiveData(data: UnsafeMutablePointer<UInt8>, length: Int32) {
        // Parse data received
        for var i = 0; Int32(i) < length; i += 3 {
            switch data[i] {
            case 0x01: swRelay33.setOn(data[i+1] == 0x01, animated: true)
            case 0x02: swRelay34.setOn(data[i+1] == 0x01, animated: true)
            case 0x03: swRelay35.setOn(data[i+1] == 0x01, animated: true)
            case 0x04: swRelay36.setOn(data[i+1] == 0x01, animated: true)
            case 0x05: swRelay37.setOn(data[i+1] == 0x01, animated: true)
            case 0x06: swRelay38.setOn(data[i+1] == 0x01, animated: true)
            case 0x07: swRelay39.setOn(data[i+1] == 0x01, animated: true)
            case 0x08: swRelay40.setOn(data[i+1] == 0x01, animated: true)
                
            case 0x09: swRelay41.setOn(data[i+1] == 0x01, animated: true)
            case 0x10: swRelay42.setOn(data[i+1] == 0x01, animated: true)
            case 0x11: swRelay43.setOn(data[i+1] == 0x01, animated: true)
            case 0x12: swRelay44.setOn(data[i+1] == 0x01, animated: true)
            case 0x13: swRelay45.setOn(data[i+1] == 0x01, animated: true)
            case 0x14: swRelay46.setOn(data[i+1] == 0x01, animated: true)
            case 0x15: swRelay47.setOn(data[i+1] == 0x01, animated: true)
            case 0x16: swRelay48.setOn(data[i+1] == 0x01, animated: true)
                
            default: break
            }
            dataReceived = true
        }
    }
    
    func bleDidUpdateRSSI(rssi: NSNumber!) {
        // Do nothing
    }
    
    func validateConnection(timer: NSTimer) {
        /*        if !dataReceived && ble.activePeripheral != nil && ble.activePeripheral.state == CBPeripheralState.Connected {
        ble.CM.cancelPeripheralConnection(ble.activePeripheral)
        btnConnect.setTitle("Connect", forState: UIControlState.Normal)
        // Remove incorrect device-specific password
        globalDefaults.removeObjectForKey("passcode" + currentDevice.identifier.UUIDString)
        globalDefaults.synchronize()
        currentDevice = nil
        print("No data received. Disconnected")
        }
        else {
        // Save device-specific password
        globalDefaults.setObject(globalDefaults.stringForKey("passcode"), forKey: "passcode" + currentDevice.identifier.UUIDString)
        globalDefaults.synchronize()
        
        // Read device-specific relay names
        if globalDefaults.stringForKey("relay1Name" + currentDevice.identifier.UUIDString) != nil {
        switch globalDefaults.integerForKey("controlCenterType") {
        case 0:
        labelRelay6.text = globalDefaults.stringForKey("relay1Name" + currentDevice.identifier.UUIDString)
        labelRelay7.text = globalDefaults.stringForKey("relay2Name" + currentDevice.identifier.UUIDString)
        labelRelay10.text = globalDefaults.stringForKey("relay3Name" + currentDevice.identifier.UUIDString)
        labelRelay11.text = globalDefaults.stringForKey("relay4Name" + currentDevice.identifier.UUIDString)
        
        globalDefaults.setObject(labelRelay6.text, forKey: "relay1Name")
        globalDefaults.setObject(labelRelay7.text, forKey: "relay2Name")
        globalDefaults.setObject(labelRelay10.text, forKey: "relay3Name")
        globalDefaults.setObject(labelRelay11.text, forKey: "relay4Name")
        globalDefaults.synchronize()
        
        case 1:
        labelRelay5.text = globalDefaults.stringForKey("relay1Name" + currentDevice.identifier.UUIDString)
        labelRelay6.text = globalDefaults.stringForKey("relay2Name" + currentDevice.identifier.UUIDString)
        labelRelay7.text = globalDefaults.stringForKey("relay3Name" + currentDevice.identifier.UUIDString)
        labelRelay8.text = globalDefaults.stringForKey("relay4Name" + currentDevice.identifier.UUIDString)
        if globalDefaults.stringForKey("relay5Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay9.text = globalDefaults.stringForKey("relay5Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay6Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay10.text = globalDefaults.stringForKey("relay6Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay7Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay11.text = globalDefaults.stringForKey("relay7Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay8Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay12.text = globalDefaults.stringForKey("relay8Name" + currentDevice.identifier.UUIDString)
        }
        
        globalDefaults.setObject(labelRelay5.text, forKey: "relay1Name")
        globalDefaults.setObject(labelRelay6.text, forKey: "relay2Name")
        globalDefaults.setObject(labelRelay7.text, forKey: "relay3Name")
        globalDefaults.setObject(labelRelay8.text, forKey: "relay4Name")
        globalDefaults.setObject(labelRelay9.text, forKey: "relay5Name")
        globalDefaults.setObject(labelRelay10.text, forKey: "relay6Name")
        globalDefaults.setObject(labelRelay11.text, forKey: "relay7Name")
        globalDefaults.setObject(labelRelay12.text, forKey: "relay8Name")
        globalDefaults.synchronize()
        
        case 2:
        labelRelay1.text = globalDefaults.stringForKey("relay1Name" + currentDevice.identifier.UUIDString)
        labelRelay2.text = globalDefaults.stringForKey("relay2Name" + currentDevice.identifier.UUIDString)
        labelRelay3.text = globalDefaults.stringForKey("relay3Name" + currentDevice.identifier.UUIDString)
        labelRelay4.text = globalDefaults.stringForKey("relay4Name" + currentDevice.identifier.UUIDString)
        if globalDefaults.stringForKey("relay5Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay5.text = globalDefaults.stringForKey("relay5Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay6Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay6.text = globalDefaults.stringForKey("relay6Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay7Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay7.text = globalDefaults.stringForKey("relay7Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay8Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay8.text = globalDefaults.stringForKey("relay8Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay9Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay9.text = globalDefaults.stringForKey("relay9Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay10Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay10.text = globalDefaults.stringForKey("relay10Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay11Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay11.text = globalDefaults.stringForKey("relay11Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay12Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay12.text = globalDefaults.stringForKey("relay12Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay13Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay13.text = globalDefaults.stringForKey("relay13Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay14Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay14.text = globalDefaults.stringForKey("relay14Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay15Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay15.text = globalDefaults.stringForKey("relay15Name" + currentDevice.identifier.UUIDString)
        }
        if globalDefaults.stringForKey("relay16Name" + currentDevice.identifier.UUIDString) != nil {
        labelRelay16.text = globalDefaults.stringForKey("relay16Name" + currentDevice.identifier.UUIDString)
        }
        
        globalDefaults.setObject(labelRelay1.text, forKey: "relay1Name")
        globalDefaults.setObject(labelRelay2.text, forKey: "relay2Name")
        globalDefaults.setObject(labelRelay3.text, forKey: "relay3Name")
        globalDefaults.setObject(labelRelay4.text, forKey: "relay4Name")
        globalDefaults.setObject(labelRelay5.text, forKey: "relay5Name")
        globalDefaults.setObject(labelRelay6.text, forKey: "relay6Name")
        globalDefaults.setObject(labelRelay7.text, forKey: "relay7Name")
        globalDefaults.setObject(labelRelay8.text, forKey: "relay8Name")
        globalDefaults.setObject(labelRelay9.text, forKey: "relay9Name")
        globalDefaults.setObject(labelRelay10.text, forKey: "relay10Name")
        globalDefaults.setObject(labelRelay11.text, forKey: "relay11Name")
        globalDefaults.setObject(labelRelay12.text, forKey: "relay12Name")
        globalDefaults.setObject(labelRelay13.text, forKey: "relay13Name")
        globalDefaults.setObject(labelRelay14.text, forKey: "relay14Name")
        globalDefaults.setObject(labelRelay15.text, forKey: "relay15Name")
        globalDefaults.setObject(labelRelay16.text, forKey: "relay16Name")
        globalDefaults.synchronize()
        
        default: break
        }
        }
        } */
    }
}
