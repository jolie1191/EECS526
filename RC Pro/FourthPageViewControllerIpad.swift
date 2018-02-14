//
//  SecondPageViewControllerIpad.swift
//  RC Pro
//
//  Created by Lecheng Zheng on 1/56/16.
//  Copyright © 2016 RideController. All rights reserved.
//

import UIKit
import Foundation
import CoreBluetooth

class FourthPageViewControllerIpad: UIViewController {
    
    //    let ble = BLE()
    
    var currentDevice: CBPeripheral! = nil
    var dataReceived = false
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!

    @IBOutlet weak var swRelay49: UISwitch!
    @IBOutlet weak var swRelay50: UISwitch!
    @IBOutlet weak var swRelay51: UISwitch!
    @IBOutlet weak var swRelay52: UISwitch!
    @IBOutlet weak var swRelay53: UISwitch!
    @IBOutlet weak var swRelay54: UISwitch!
    @IBOutlet weak var swRelay55: UISwitch!
    @IBOutlet weak var swRelay56: UISwitch!
    @IBOutlet weak var swRelay57: UISwitch!
    @IBOutlet weak var swRelay58: UISwitch!
    @IBOutlet weak var swRelay59: UISwitch!
    @IBOutlet weak var swRelay60: UISwitch!
    @IBOutlet weak var swRelay61: UISwitch!
    @IBOutlet weak var swRelay62: UISwitch!
    @IBOutlet weak var swRelay63: UISwitch!
    @IBOutlet weak var swRelay64: UISwitch!
    
    @IBOutlet weak var btnRelay49: UIButton!
    @IBOutlet weak var btnRelay50: UIButton!
    @IBOutlet weak var btnRelay51: UIButton!
    @IBOutlet weak var btnRelay52: UIButton!
    @IBOutlet weak var btnRelay53: UIButton!
    @IBOutlet weak var btnRelay54: UIButton!
    @IBOutlet weak var btnRelay55: UIButton!
    @IBOutlet weak var btnRelay56: UIButton!
    @IBOutlet weak var btnRelay57: UIButton!
    @IBOutlet weak var btnRelay58: UIButton!
    @IBOutlet weak var btnRelay59: UIButton!
    @IBOutlet weak var btnRelay60: UIButton!
    @IBOutlet weak var btnRelay61: UIButton!
    @IBOutlet weak var btnRelay62: UIButton!
    @IBOutlet weak var btnRelay63: UIButton!
    @IBOutlet weak var btnRelay64: UIButton!
    
    @IBOutlet weak var labelRelay49: UILabel!
    @IBOutlet weak var labelRelay50: UILabel!
    @IBOutlet weak var labelRelay51: UILabel!
    @IBOutlet weak var labelRelay52: UILabel!
    @IBOutlet weak var labelRelay53: UILabel!
    @IBOutlet weak var labelRelay54: UILabel!
    @IBOutlet weak var labelRelay55: UILabel!
    @IBOutlet weak var labelRelay56: UILabel!
    @IBOutlet weak var labelRelay57: UILabel!
    @IBOutlet weak var labelRelay58: UILabel!
    @IBOutlet weak var labelRelay59: UILabel!
    @IBOutlet weak var labelRelay60: UILabel!
    @IBOutlet weak var labelRelay61: UILabel!
    @IBOutlet weak var labelRelay62: UILabel!
    @IBOutlet weak var labelRelay63: UILabel!
    @IBOutlet weak var labelRelay64: UILabel!
    
    
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
        self.performSegueWithIdentifier("unwindToThirdFromFourthIpad", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToThirdPageIpad" {
            if let thirdPage = segue.destinationViewController as? ThirdPageViewControllerIpad {
                
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
        
        labelRelay49.text = globalDefaults.stringForKey("relay49Name")
        labelRelay50.text = globalDefaults.stringForKey("relay50Name")
        labelRelay51.text = globalDefaults.stringForKey("relay51Name")
        labelRelay52.text = globalDefaults.stringForKey("relay52Name")
        labelRelay53.text = globalDefaults.stringForKey("relay53Name")
        labelRelay54.text = globalDefaults.stringForKey("relay54Name")
        labelRelay55.text = globalDefaults.stringForKey("relay55Name")
        labelRelay56.text = globalDefaults.stringForKey("relay56Name")
        labelRelay57.text = globalDefaults.stringForKey("relay57Name")
        labelRelay58.text = globalDefaults.stringForKey("relay58Name")
        labelRelay59.text = globalDefaults.stringForKey("relay59Name")
        labelRelay60.text = globalDefaults.stringForKey("relay60Name")
        labelRelay61.text = globalDefaults.stringForKey("relay61Name")
        labelRelay62.text = globalDefaults.stringForKey("relay62Name")
        labelRelay63.text = globalDefaults.stringForKey("relay63Name")
        labelRelay64.text = globalDefaults.stringForKey("relay64Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay49.hidden = !(relayIsButtonArr[48] == "0" ? false : true)
        btnRelay50.hidden = !(relayIsButtonArr[49] == "0" ? false : true)
        btnRelay51.hidden = !(relayIsButtonArr[50] == "0" ? false : true)
        btnRelay52.hidden = !(relayIsButtonArr[51] == "0" ? false : true)
        btnRelay53.hidden = !(relayIsButtonArr[52] == "0" ? false : true)
        btnRelay54.hidden = !(relayIsButtonArr[53] == "0" ? false : true)
        btnRelay55.hidden = !(relayIsButtonArr[54] == "0" ? false : true)
        btnRelay56.hidden = !(relayIsButtonArr[55] == "0" ? false : true)
        btnRelay57.hidden = !(relayIsButtonArr[56] == "0" ? false : true)
        btnRelay58.hidden = !(relayIsButtonArr[57] == "0" ? false : true)
        btnRelay59.hidden = !(relayIsButtonArr[58] == "0" ? false : true)
        btnRelay60.hidden = !(relayIsButtonArr[59] == "0" ? false : true)
        btnRelay61.hidden = !(relayIsButtonArr[60] == "0" ? false : true)
        btnRelay62.hidden = !(relayIsButtonArr[61] == "0" ? false : true)
        btnRelay63.hidden = !(relayIsButtonArr[62] == "0" ? false : true)
        btnRelay64.hidden = !(relayIsButtonArr[63] == "0" ? false : true)
        
        swRelay49.hidden = relayIsButtonArr[48] == "0" ? false : true
        swRelay50.hidden = relayIsButtonArr[49] == "0" ? false : true
        swRelay51.hidden = relayIsButtonArr[50] == "0" ? false : true
        swRelay52.hidden = relayIsButtonArr[51] == "0" ? false : true
        swRelay53.hidden = relayIsButtonArr[52] == "0" ? false : true
        swRelay54.hidden = relayIsButtonArr[53] == "0" ? false : true
        swRelay55.hidden = relayIsButtonArr[54] == "0" ? false : true
        swRelay56.hidden = relayIsButtonArr[55] == "0" ? false : true
        swRelay57.hidden = relayIsButtonArr[56] == "0" ? false : true
        swRelay58.hidden = relayIsButtonArr[57] == "0" ? false : true
        swRelay59.hidden = relayIsButtonArr[58] == "0" ? false : true
        swRelay60.hidden = relayIsButtonArr[59] == "0" ? false : true
        swRelay61.hidden = relayIsButtonArr[60] == "0" ? false : true
        swRelay62.hidden = relayIsButtonArr[61] == "0" ? false : true
        swRelay63.hidden = relayIsButtonArr[62] == "0" ? false : true
        swRelay64.hidden = relayIsButtonArr[63] == "0" ? false : true
        
        swRelay49.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay50.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay51.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay52.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay53.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay54.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay55.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay56.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay57.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay58.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay59.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay60.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay61.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay62.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay63.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay64.transform = CGAffineTransformMakeScale(1.25, 1.25)
        
        self.renderControlFields(controlCenterType)
    }
    
    
    private func renderControlFields(controlCenterTypeID: Int) {
        switch controlCenterTypeID {
        case 7:
            // Setup For 56 Circuit Zones
            self.hideAllCircuitsAndLabels()
            labelRelay53.hidden = false
            btnRelay53.hidden = false
            swRelay53.hidden = false
            
            labelRelay54.hidden = false
            btnRelay54.hidden = false
            swRelay54.hidden = false
            
            labelRelay55.hidden = false
            btnRelay55.hidden = false
            swRelay55.hidden = false
            
            labelRelay56.hidden = false
            btnRelay56.hidden = false
            swRelay56.hidden = false
            
            labelRelay57.hidden = false
            btnRelay57.hidden = false
            swRelay57.hidden = false
            
            labelRelay58.hidden = false
            btnRelay58.hidden = false
            swRelay58.hidden = false
            
            labelRelay59.hidden = false
            btnRelay59.hidden = false
            swRelay59.hidden = false
            
            labelRelay60.hidden = false
            btnRelay60.hidden = false
            swRelay60.hidden = false
            
            // Remap Sender Tag Values
            
            swRelay53.tag = 49
            btnRelay53.tag = 49
            
            swRelay54.tag = 50
            btnRelay54.tag = 50
            
            swRelay55.tag = 51
            btnRelay55.tag = 51
            
            swRelay56.tag = 52
            btnRelay56.tag = 52
            
            swRelay57.tag = 53
            btnRelay57.tag = 53
            
            swRelay58.tag = 54
            btnRelay58.tag = 54
            
            swRelay59.tag = 55
            btnRelay59.tag = 55
            
            swRelay60.tag = 56
            btnRelay60.tag = 56
            
            labelRelay53.text = globalDefaults.stringForKey("relay49Name")
            labelRelay54.text = globalDefaults.stringForKey("relay50Name")
            labelRelay55.text = globalDefaults.stringForKey("relay51Name")
            labelRelay56.text = globalDefaults.stringForKey("relay52Name")
            labelRelay57.text = globalDefaults.stringForKey("relay53Name")
            labelRelay58.text = globalDefaults.stringForKey("relay54Name")
            labelRelay59.text = globalDefaults.stringForKey("relay55Name")
            labelRelay60.text = globalDefaults.stringForKey("relay56Name")

            let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!

            btnRelay53.hidden = !(relayIsButtonArr[48] == "0" ? false : true)
            btnRelay54.hidden = !(relayIsButtonArr[49] == "0" ? false : true)
            btnRelay55.hidden = !(relayIsButtonArr[50] == "0" ? false : true)
            btnRelay56.hidden = !(relayIsButtonArr[51] == "0" ? false : true)
            btnRelay57.hidden = !(relayIsButtonArr[52] == "0" ? false : true)
            btnRelay58.hidden = !(relayIsButtonArr[53] == "0" ? false : true)
            btnRelay59.hidden = !(relayIsButtonArr[54] == "0" ? false : true)
            btnRelay60.hidden = !(relayIsButtonArr[55] == "0" ? false : true)

            swRelay53.hidden = relayIsButtonArr[48] == "0" ? false : true
            swRelay54.hidden = relayIsButtonArr[49] == "0" ? false : true
            swRelay55.hidden = relayIsButtonArr[50] == "0" ? false : true
            swRelay56.hidden = relayIsButtonArr[51] == "0" ? false : true
            swRelay57.hidden = relayIsButtonArr[52] == "0" ? false : true
            swRelay58.hidden = relayIsButtonArr[53] == "0" ? false : true
            swRelay59.hidden = relayIsButtonArr[54] == "0" ? false : true
            swRelay60.hidden = relayIsButtonArr[55] == "0" ? false : true
            
            
            print("Should have loaded 56 label zones")

        default:break
        }
    }

    
    private func hideAllCircuitsAndLabels() {
        labelRelay49.hidden = true
        btnRelay49.hidden = true
        swRelay49.hidden = true
        labelRelay50.hidden = true
        btnRelay50.hidden = true
        swRelay50.hidden = true
        labelRelay51.hidden = true
        btnRelay51.hidden = true
        swRelay51.hidden = true
        labelRelay52.hidden = true
        btnRelay52.hidden = true
        swRelay52.hidden = true
        labelRelay53.hidden = true
        btnRelay53.hidden = true
        swRelay53.hidden = true
        labelRelay54.hidden = true
        btnRelay54.hidden = true
        swRelay54.hidden = true
        labelRelay55.hidden = true
        btnRelay55.hidden = true
        swRelay55.hidden = true
        labelRelay56.hidden = true
        btnRelay56.hidden = true
        swRelay56.hidden = true
        labelRelay57.hidden = true
        btnRelay57.hidden = true
        swRelay57.hidden = true
        labelRelay58.hidden = true
        btnRelay58.hidden = true
        swRelay58.hidden = true
        labelRelay59.hidden = true
        btnRelay59.hidden = true
        swRelay59.hidden = true
        labelRelay60.hidden = true
        btnRelay60.hidden = true
        swRelay60.hidden = true
        labelRelay61.hidden = true
        btnRelay61.hidden = true
        swRelay61.hidden = true
        labelRelay62.hidden = true
        btnRelay62.hidden = true
        swRelay62.hidden = true
        labelRelay63.hidden = true
        btnRelay63.hidden = true
        swRelay63.hidden = true
        labelRelay64.hidden = true
        btnRelay64.hidden = true
        swRelay64.hidden = true
    }
    /*
    func connectionTimer(timer: NSTimer) {
    btnConnect.enabled = true
    btnConnect.setTitle("Disconnect", forState: UIControlState.Normal)
    
    
    }
    
    func actionSheet(sheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
    
    }*/
    
    func bleDidConnect() {
        /*        connectIndicator.stopAnimating()
        
        swRelay49.enabled = true
        swRelay50.enabled = true
        swRelay51.enabled = true
        swRelay52.enabled = true
        swRelay53.enabled = true
        swRelay54.enabled = true
        swRelay55.enabled = true
        swRelay56.enabled = true
        swRelay57.enabled = true
        swRelay58.enabled = true
        swRelay59.enabled = true
        swRelay60.enabled = true
        swRelay61.enabled = true
        swRelay62.enabled = true
        swRelay63.enabled = true
        swRelay64.enabled = true
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
        
        swRelay49.enabled = false
        swRelay50.enabled = false
        swRelay51.enabled = false
        swRelay52.enabled = false
        swRelay53.enabled = false
        swRelay54.enabled = false
        swRelay55.enabled = false
        swRelay56.enabled = false
        swRelay57.enabled = false
        swRelay58.enabled = false
        swRelay59.enabled = false
        swRelay60.enabled = false
        swRelay61.enabled = false
        swRelay62.enabled = false
        swRelay63.enabled = false
        swRelay64.enabled = false
        startEngine.enabled = false
        
        currentDevice = nil
        print("Disconnected") */
    }
    
    //done
    func bleDidReceiveData(data: UnsafeMutablePointer<UInt8>, length: Int32) {
        // Parse data received
        for var i = 0; Int32(i) < length; i += 3 {
            switch data[i] {
            case 0x01: swRelay49.setOn(data[i+1] == 0x01, animated: true)
            case 0x02: swRelay50.setOn(data[i+1] == 0x01, animated: true)
            case 0x03: swRelay51.setOn(data[i+1] == 0x01, animated: true)
            case 0x04: swRelay52.setOn(data[i+1] == 0x01, animated: true)
            case 0x05: swRelay53.setOn(data[i+1] == 0x01, animated: true)
            case 0x06: swRelay54.setOn(data[i+1] == 0x01, animated: true)
            case 0x07: swRelay55.setOn(data[i+1] == 0x01, animated: true)
            case 0x08: swRelay56.setOn(data[i+1] == 0x01, animated: true)
                
            case 0x09: swRelay57.setOn(data[i+1] == 0x01, animated: true)
            case 0x10: swRelay58.setOn(data[i+1] == 0x01, animated: true)
            case 0x11: swRelay59.setOn(data[i+1] == 0x01, animated: true)
            case 0x12: swRelay60.setOn(data[i+1] == 0x01, animated: true)
            case 0x13: swRelay61.setOn(data[i+1] == 0x01, animated: true)
            case 0x14: swRelay62.setOn(data[i+1] == 0x01, animated: true)
            case 0x15: swRelay63.setOn(data[i+1] == 0x01, animated: true)
            case 0x16: swRelay64.setOn(data[i+1] == 0x01, animated: true)
                
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
