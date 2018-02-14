//
//  MainPageViewControllerIpad.swift
//  RC Pro
//
//  Created by Su Yan on 12/30/15.
//  Copyright © 2015 RideController LLC. All rights reserved.
//

import UIKit
import Foundation
import CoreBluetooth

//class MainPageViewControllerIpad: UIViewController, UIActionSheetDelegate, BLEDelegate {
class MainPageViewControllerIpad: UIViewController, UIActionSheetDelegate {
    
//    let ble = BLE()
    
    var currentDevice: CBPeripheral! = nil
    var dataReceived = false
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    
    @IBOutlet weak var startEngine: UIButton!
    @IBOutlet weak var btnConnect: UIButton!
    @IBOutlet weak var connectIndicator: UIActivityIndicatorView!
    @IBOutlet var swipeLeftGesture: UISwipeGestureRecognizer!
    
    @IBOutlet weak var swRelay1: UISwitch!
    @IBOutlet weak var swRelay2: UISwitch!
    @IBOutlet weak var swRelay3: UISwitch!
    @IBOutlet weak var swRelay4: UISwitch!
    @IBOutlet weak var swRelay5: UISwitch!
    @IBOutlet weak var swRelay6: UISwitch!
    @IBOutlet weak var swRelay7: UISwitch!
    @IBOutlet weak var swRelay8: UISwitch!
    @IBOutlet weak var swRelay9: UISwitch!
    @IBOutlet weak var swRelay10: UISwitch!
    @IBOutlet weak var swRelay11: UISwitch!
    @IBOutlet weak var swRelay12: UISwitch!
    @IBOutlet weak var swRelay13: UISwitch!
    @IBOutlet weak var swRelay14: UISwitch!
    @IBOutlet weak var swRelay15: UISwitch!
    @IBOutlet weak var swRelay16: UISwitch!
    
    @IBOutlet weak var btnRelay1: UIButton!
    @IBOutlet weak var btnRelay2: UIButton!
    @IBOutlet weak var btnRelay3: UIButton!
    @IBOutlet weak var btnRelay4: UIButton!
    @IBOutlet weak var btnRelay5: UIButton!
    @IBOutlet weak var btnRelay6: UIButton!
    @IBOutlet weak var btnRelay7: UIButton!
    @IBOutlet weak var btnRelay8: UIButton!
    @IBOutlet weak var btnRelay9: UIButton!
    @IBOutlet weak var btnRelay10: UIButton!
    @IBOutlet weak var btnRelay11: UIButton!
    @IBOutlet weak var btnRelay12: UIButton!
    @IBOutlet weak var btnRelay13: UIButton!
    @IBOutlet weak var btnRelay14: UIButton!
    @IBOutlet weak var btnRelay15: UIButton!
    @IBOutlet weak var btnRelay16: UIButton!
    
    @IBOutlet weak var labelRelay1: UILabel!
    @IBOutlet weak var labelRelay2: UILabel!
    @IBOutlet weak var labelRelay3: UILabel!
    @IBOutlet weak var labelRelay4: UILabel!
    @IBOutlet weak var labelRelay5: UILabel!
    @IBOutlet weak var labelRelay6: UILabel!
    @IBOutlet weak var labelRelay7: UILabel!
    @IBOutlet weak var labelRelay8: UILabel!
    @IBOutlet weak var labelRelay9: UILabel!
    @IBOutlet weak var labelRelay10: UILabel!
    @IBOutlet weak var labelRelay11: UILabel!
    @IBOutlet weak var labelRelay12: UILabel!
    @IBOutlet weak var labelRelay13: UILabel!
    @IBOutlet weak var labelRelay14: UILabel!
    @IBOutlet weak var labelRelay15: UILabel!
    @IBOutlet weak var labelRelay16: UILabel!
    
    @IBOutlet weak var settingsMenuSegment: UISegmentedControl!
    
    @IBAction func startEnginePress(sender: UIButton) {
/*        var buf: [UInt8] = [0x08, 0x01, 0x00]
        
        switch globalDefaults.integerForKey("controlCenterType") {
        case 0: buf[0] = 0x04
        case 1: buf[0] = 0x08
        case 2: buf[0] = 0x16
        default: break
        }
        
        ble.write(NSData(bytes: buf, length: 3)) */
        print("Engine Start pressed")
    }
    
    @IBAction func startEngineRelease(sender: UIButton) {
/*        var buf: [UInt8] = [0x08, 0x00, 0x00]
        
        switch globalDefaults.integerForKey("controlCenterType") {
        case 0: buf[0] = 0x04
        case 1: buf[0] = 0x08
        case 2: buf[0] = 0x16
        default: break
        }
        
        ble.write(NSData(bytes: buf, length: 3)) */
        print("Engine Start released")
    }
    
    @IBAction func relayButtonPress(sender: UIButton) {
/*        if sender.tag < 10 {
            let buf: [UInt8] = [0x00 + UInt8(sender.tag), 0x01, 0x00]
            ble.write(NSData(bytes: buf, length: 3))
        }
        else {
            var buf: [UInt8] = [0x10, 0x01, 0x00]
            buf[0] |= UInt8(sender.tag - 10)
            ble.write(NSData(bytes: buf, length: 3))
        } */
        print("Relay \(sender.tag) button pressed")
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
/*        if sender.tag < 10 {
            let buf: [UInt8] = [0x00 + UInt8(sender.tag), 0x00, 0x00]
            ble.write(NSData(bytes: buf, length: 3))
        }
        else {
            var buf: [UInt8] = [0x10, 0x00, 0x00]
            buf[0] |= UInt8(sender.tag - 10)
            ble.write(NSData(bytes: buf, length: 3))
        } */
        print("Relay \(sender.tag) button released")
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
/*        if sender.tag < 10 {
            var buf: [UInt8] = [0x00 + UInt8(sender.tag), 0x00, 0x00]
            if sender.on {
                buf[1] = 0x01
            }
            else {
                buf[1] = 0x00
            }
            ble.write(NSData(bytes: buf, length: 3))
        }
        else {
            var buf: [UInt8] = [0x10, 0x00, 0x00]
            if sender.on {
                buf[1] = 0x01
            }
            else {
                buf[1] = 0x00
            }
            buf[0] |= UInt8(sender.tag - 10)
            ble.write(NSData(bytes: buf, length: 3))
        }
*/
        print("Relay \(sender.tag) switch changed")
    }
    
    @IBAction func menuSegmentChange(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            //self.performSegueWithIdentifier("pushToSettingsPage", sender: self)
            sender.selectedSegmentIndex = 0
        }
    }
    
    @IBAction func scanForPeripherals(sender: UIButton) {
/*        if ble.activePeripheral != nil && (ble.activePeripheral.state == CBPeripheralState.Connected) {
            ble.CM.cancelPeripheralConnection(ble.activePeripheral)
            btnConnect.setTitle("Connect", forState: UIControlState.Normal)
            return
        }
        
        if (ble.peripherals != nil) {
            ble.peripherals = nil
        }
        
        btnConnect.enabled = false
        ble.findBLEPeripherals(2)
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "connectionTimer:", userInfo: nil, repeats: false)
        connectIndicator.startAnimating() */
        print("Connect button clicked")

    }
    
    @IBAction func unwindToMainIpad(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToSettingsPage" {
            if let settingsPage = segue.destinationViewController as? SettingsPageViewControllerIpad {
//                settingsPage.ble = ble
//                settingsPage.currentDevice = currentDevice
            }
        }
        else if segue.identifier == "pushToSecondPage" {
            if let secodPage = segue.destinationViewController as? SecondPageViewControllerIpad {
                //                settingsPage.ble = ble
                //                settingsPage.currentDevice = currentDevice
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main iPad view loaded")
        
//        ble.controlSetup()
//        ble.delegate = self
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        self.navigationController!.setNavigationBarHidden(true, animated: false)
        self.loadUserDefaults()
    }
    
    private func loadUserDefaults() {
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        
        labelRelay1.text = globalDefaults.stringForKey("relay1Name")
        labelRelay2.text = globalDefaults.stringForKey("relay2Name")
        labelRelay3.text = globalDefaults.stringForKey("relay3Name")
        labelRelay4.text = globalDefaults.stringForKey("relay4Name")
        labelRelay5.text = globalDefaults.stringForKey("relay5Name")
        labelRelay6.text = globalDefaults.stringForKey("relay6Name")
        labelRelay7.text = globalDefaults.stringForKey("relay7Name")
        labelRelay8.text = globalDefaults.stringForKey("relay8Name")
        labelRelay9.text = globalDefaults.stringForKey("relay9Name")
        labelRelay10.text = globalDefaults.stringForKey("relay10Name")
        labelRelay11.text = globalDefaults.stringForKey("relay11Name")
        labelRelay12.text = globalDefaults.stringForKey("relay12Name")
        labelRelay13.text = globalDefaults.stringForKey("relay13Name")
        labelRelay14.text = globalDefaults.stringForKey("relay14Name")
        labelRelay15.text = globalDefaults.stringForKey("relay15Name")
        labelRelay16.text = globalDefaults.stringForKey("relay16Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay1.hidden = !(relayIsButtonArr[0] == "0" ? false : true)
        btnRelay2.hidden = !(relayIsButtonArr[1] == "0" ? false : true)
        btnRelay3.hidden = !(relayIsButtonArr[2] == "0" ? false : true)
        btnRelay4.hidden = !(relayIsButtonArr[3] == "0" ? false : true)
        btnRelay5.hidden = !(relayIsButtonArr[4] == "0" ? false : true)
        btnRelay6.hidden = !(relayIsButtonArr[5] == "0" ? false : true)
        btnRelay7.hidden = !(relayIsButtonArr[6] == "0" ? false : true)
        btnRelay8.hidden = !(relayIsButtonArr[7] == "0" ? false : true)
        btnRelay9.hidden = !(relayIsButtonArr[8] == "0" ? false : true)
        btnRelay10.hidden = !(relayIsButtonArr[9] == "0" ? false : true)
        btnRelay11.hidden = !(relayIsButtonArr[10] == "0" ? false : true)
        btnRelay12.hidden = !(relayIsButtonArr[11] == "0" ? false : true)
        btnRelay13.hidden = !(relayIsButtonArr[12] == "0" ? false : true)
        btnRelay14.hidden = !(relayIsButtonArr[13] == "0" ? false : true)
        btnRelay15.hidden = !(relayIsButtonArr[14] == "0" ? false : true)
        btnRelay16.hidden = !(relayIsButtonArr[15] == "0" ? false : true)
        
        swRelay1.hidden = relayIsButtonArr[0] == "0" ? false : true
        swRelay2.hidden = relayIsButtonArr[1] == "0" ? false : true
        swRelay3.hidden = relayIsButtonArr[2] == "0" ? false : true
        swRelay4.hidden = relayIsButtonArr[3] == "0" ? false : true
        swRelay5.hidden = relayIsButtonArr[4] == "0" ? false : true
        swRelay6.hidden = relayIsButtonArr[5] == "0" ? false : true
        swRelay7.hidden = relayIsButtonArr[6] == "0" ? false : true
        swRelay8.hidden = relayIsButtonArr[7] == "0" ? false : true
        swRelay9.hidden = relayIsButtonArr[8] == "0" ? false : true
        swRelay10.hidden = relayIsButtonArr[9] == "0" ? false : true
        swRelay11.hidden = relayIsButtonArr[10] == "0" ? false : true
        swRelay12.hidden = relayIsButtonArr[11] == "0" ? false : true
        swRelay13.hidden = relayIsButtonArr[12] == "0" ? false : true
        swRelay14.hidden = relayIsButtonArr[13] == "0" ? false : true
        swRelay15.hidden = relayIsButtonArr[14] == "0" ? false : true
        swRelay16.hidden = relayIsButtonArr[15] == "0" ? false : true
        
        swRelay1.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay2.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay3.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay4.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay5.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay6.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay7.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay8.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay9.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay10.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay11.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay12.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay13.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay14.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay15.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay16.transform = CGAffineTransformMakeScale(1.25, 1.25)
        
        startEngine.hidden = !globalDefaults.boolForKey("startIsViewable")
        
        self.renderControlFields(controlCenterType)
    }
    
    private func renderControlFields(controlCenterTypeID: Int) {
        switch controlCenterTypeID {
        case 1:
            
            // Setup For 8 Circuit Zones
            self.hideAllCircuitsAndLabels()
            labelRelay5.hidden = false
            btnRelay5.hidden = false
            swRelay5.hidden = false
            
            labelRelay6.hidden = false
            btnRelay6.hidden = false
            swRelay6.hidden = false
            
            labelRelay7.hidden = false
            btnRelay7.hidden = false
            swRelay7.hidden = false
            
            labelRelay8.hidden = false
            btnRelay8.hidden = false
            swRelay8.hidden = false
            
            labelRelay9.hidden = false
            btnRelay9.hidden = false
            swRelay9.hidden = false
            
            labelRelay10.hidden = false
            btnRelay10.hidden = false
            swRelay10.hidden = false
            
            labelRelay11.hidden = false
            btnRelay11.hidden = false
            swRelay11.hidden = false
            
            labelRelay12.hidden = false
            btnRelay12.hidden = false
            swRelay12.hidden = false
            
            // Remap Sender Tag Values
            
            swRelay5.tag = 1
            btnRelay5.tag = 1
            
            swRelay6.tag = 2
            btnRelay6.tag = 2
            
            swRelay7.tag = 3
            btnRelay7.tag = 3
            
            swRelay8.tag = 4
            btnRelay8.tag = 4
            
            swRelay9.tag = 5
            btnRelay9.tag = 5
            
            swRelay10.tag = 6
            btnRelay10.tag = 6
            
            swRelay11.tag = 7
            btnRelay11.tag = 7
            
            swRelay12.tag = 8
            btnRelay12.tag = 8
            
            // Remap The Set Text Fields
            labelRelay5.text = globalDefaults.stringForKey("relay1Name")
            labelRelay6.text = globalDefaults.stringForKey("relay2Name")
            labelRelay7.text = globalDefaults.stringForKey("relay3Name")
            labelRelay8.text = globalDefaults.stringForKey("relay4Name")
            labelRelay9.text = globalDefaults.stringForKey("relay5Name")
            labelRelay10.text = globalDefaults.stringForKey("relay6Name")
            labelRelay11.text = globalDefaults.stringForKey("relay7Name")
            labelRelay12.text = globalDefaults.stringForKey("relay8Name")
            
            let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
            btnRelay5.hidden = !(relayIsButtonArr[0] == "0" ? false : true)
            btnRelay6.hidden = !(relayIsButtonArr[1] == "0" ? false : true)
            btnRelay7.hidden = !(relayIsButtonArr[2] == "0" ? false : true)
            btnRelay8.hidden = !(relayIsButtonArr[3] == "0" ? false : true)
            btnRelay9.hidden = !(relayIsButtonArr[4] == "0" ? false : true)
            btnRelay10.hidden = !(relayIsButtonArr[5] == "0" ? false : true)
            btnRelay11.hidden = !(relayIsButtonArr[6] == "0" ? false : true)
            btnRelay12.hidden = !(relayIsButtonArr[7] == "0" ? false : true)
            

            swRelay5.hidden = relayIsButtonArr[0] == "0" ? false : true
            swRelay6.hidden = relayIsButtonArr[1] == "0" ? false : true
            swRelay7.hidden = relayIsButtonArr[2] == "0" ? false : true
            swRelay8.hidden = relayIsButtonArr[3] == "0" ? false : true
            swRelay9.hidden = relayIsButtonArr[4] == "0" ? false : true
            swRelay10.hidden = relayIsButtonArr[5] == "0" ? false : true
            swRelay11.hidden = relayIsButtonArr[6] == "0" ? false : true
            swRelay12.hidden = relayIsButtonArr[7] == "0" ? false : true
            
            print("Should have loaded 4 label zones")
            
        case 2:
            swipeLeftGesture.enabled = false
        case 3:
            swipeLeftGesture.enabled = true
        case 4:
            swipeLeftGesture.enabled = true
        case 5:
            swipeLeftGesture.enabled = true
        case 6:
            swipeLeftGesture.enabled = true
        case 7:
            swipeLeftGesture.enabled = true
        case 8:
            swipeLeftGesture.enabled = true
            default:break
        }
    }
    
    private func hideAllCircuitsAndLabels() {
        labelRelay1.hidden = true
        btnRelay1.hidden = true
        swRelay1.hidden = true
        labelRelay2.hidden = true
        btnRelay2.hidden = true
        swRelay2.hidden = true
        labelRelay3.hidden = true
        btnRelay3.hidden = true
        swRelay3.hidden = true
        labelRelay4.hidden = true
        btnRelay4.hidden = true
        swRelay4.hidden = true
        labelRelay5.hidden = true
        btnRelay5.hidden = true
        swRelay5.hidden = true
        labelRelay6.hidden = true
        btnRelay6.hidden = true
        swRelay6.hidden = true
        labelRelay7.hidden = true
        btnRelay7.hidden = true
        swRelay7.hidden = true
        labelRelay8.hidden = true
        btnRelay8.hidden = true
        swRelay8.hidden = true
        labelRelay9.hidden = true
        btnRelay9.hidden = true
        swRelay9.hidden = true
        labelRelay10.hidden = true
        btnRelay10.hidden = true
        swRelay10.hidden = true
        labelRelay11.hidden = true
        btnRelay11.hidden = true
        swRelay11.hidden = true
        labelRelay12.hidden = true
        btnRelay12.hidden = true
        swRelay12.hidden = true
        labelRelay13.hidden = true
        btnRelay13.hidden = true
        swRelay13.hidden = true
        labelRelay14.hidden = true
        btnRelay14.hidden = true
        swRelay14.hidden = true
        labelRelay15.hidden = true
        btnRelay15.hidden = true
        swRelay15.hidden = true
        labelRelay16.hidden = true
        btnRelay16.hidden = true
        swRelay16.hidden = true
    }
    
    func connectionTimer(timer: NSTimer) {
        btnConnect.enabled = true
        btnConnect.setTitle("Disconnect", forState: UIControlState.Normal)
        
/*        if ble.peripherals != nil && ble.peripherals.count > 0 {
            var deviceList: UIActionSheet = UIActionSheet()
            deviceList.title  = "Choose a device"
            deviceList.delegate = self
            
            for object in ble.peripherals {
                if let peripheral = object as? CBPeripheral {
                    if globalDefaults.stringForKey("deviceName" + peripheral.identifier.UUIDString) != nil {
                        deviceList.addButtonWithTitle(globalDefaults.stringForKey("deviceName" + peripheral.identifier.UUIDString)! + "   " + peripheral.identifier.UUIDString)
                    }
                    else {
                        deviceList.addButtonWithTitle(peripheral.name! + "   " + peripheral.identifier.UUIDString)
                    }
                }
            }
            deviceList.addButtonWithTitle("Cancel");
            deviceList.showInView(self.view);
        }
        else {
            btnConnect.setTitle("Connect", forState: UIControlState.Normal)
            connectIndicator.stopAnimating()
        } */
    }
    
    func actionSheet(sheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
/*        print("Device count = \(ble.peripherals.count), Seleted index = \(buttonIndex)")
        if buttonIndex < ble.peripherals.count {
            currentDevice = ble.peripherals.objectAtIndex(buttonIndex) as! CBPeripheral
            ble.connectPeripheral(currentDevice)
            print("Device at list position \(buttonIndex) should be connected")
        }
        else {
            btnConnect.setTitle("Connect", forState: UIControlState.Normal)
            connectIndicator.stopAnimating()
        } */
    }

    func bleDidConnect() {
/*        connectIndicator.stopAnimating()
        
        swRelay1.enabled = true
        swRelay2.enabled = true
        swRelay3.enabled = true
        swRelay4.enabled = true
        swRelay5.enabled = true
        swRelay6.enabled = true
        swRelay7.enabled = true
        swRelay8.enabled = true
        swRelay9.enabled = true
        swRelay10.enabled = true
        swRelay11.enabled = true
        swRelay12.enabled = true
        swRelay13.enabled = true
        swRelay14.enabled = true
        swRelay15.enabled = true
        swRelay16.enabled = true
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
        
        swRelay1.enabled = false
        swRelay2.enabled = false
        swRelay3.enabled = false
        swRelay4.enabled = false
        swRelay5.enabled = false
        swRelay6.enabled = false
        swRelay7.enabled = false
        swRelay8.enabled = false
        swRelay9.enabled = false
        swRelay10.enabled = false
        swRelay11.enabled = false
        swRelay12.enabled = false
        swRelay13.enabled = false
        swRelay14.enabled = false
        swRelay15.enabled = false
        swRelay16.enabled = false
        startEngine.enabled = false

        currentDevice = nil
        print("Disconnected") */
    }
    
    func bleDidReceiveData(data: UnsafeMutablePointer<UInt8>, length: Int32) {
        // Parse data received
        for var i = 0; Int32(i) < length; i += 3 {
            switch data[i] {
            case 0x01: swRelay1.setOn(data[i+1] == 0x01, animated: true)
            case 0x02: swRelay2.setOn(data[i+1] == 0x01, animated: true)
            case 0x03: swRelay3.setOn(data[i+1] == 0x01, animated: true)
            case 0x04: swRelay4.setOn(data[i+1] == 0x01, animated: true)
            case 0x05: swRelay5.setOn(data[i+1] == 0x01, animated: true)
            case 0x06: swRelay6.setOn(data[i+1] == 0x01, animated: true)
            case 0x07: swRelay7.setOn(data[i+1] == 0x01, animated: true)
            case 0x08: swRelay8.setOn(data[i+1] == 0x01, animated: true)
                
            case 0x09: swRelay9.setOn(data[i+1] == 0x01, animated: true)
            case 0x10: swRelay10.setOn(data[i+1] == 0x01, animated: true)
            case 0x11: swRelay11.setOn(data[i+1] == 0x01, animated: true)
            case 0x12: swRelay12.setOn(data[i+1] == 0x01, animated: true)
            case 0x13: swRelay13.setOn(data[i+1] == 0x01, animated: true)
            case 0x14: swRelay14.setOn(data[i+1] == 0x01, animated: true)
            case 0x15: swRelay15.setOn(data[i+1] == 0x01, animated: true)
            case 0x16: swRelay16.setOn(data[i+1] == 0x01, animated: true)
                
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