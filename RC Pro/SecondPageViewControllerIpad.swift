//
//  SecondPageViewControllerIpad.swift
//  RC Pro
//
//  Created by Lecheng Zheng on 1/24/16.
//  Copyright © 2016 RideController. All rights reserved.
//

import UIKit
import Foundation
import CoreBluetooth

class SecondPageViewControllerIpad: UIViewController {

    //    let ble = BLE()

    var currentDevice: CBPeripheral! = nil
    var dataReceived = false

    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    @IBOutlet var swipeLeftGesture: UISwipeGestureRecognizer!

    @IBOutlet weak var swRelay17: UISwitch!
    @IBOutlet weak var swRelay18: UISwitch!
    @IBOutlet weak var swRelay19: UISwitch!
    @IBOutlet weak var swRelay20: UISwitch!
    @IBOutlet weak var swRelay21: UISwitch!
    @IBOutlet weak var swRelay22: UISwitch!
    @IBOutlet weak var swRelay23: UISwitch!
    @IBOutlet weak var swRelay24: UISwitch!
    @IBOutlet weak var swRelay25: UISwitch!
    @IBOutlet weak var swRelay26: UISwitch!
    @IBOutlet weak var swRelay27: UISwitch!
    @IBOutlet weak var swRelay28: UISwitch!
    @IBOutlet weak var swRelay29: UISwitch!
    @IBOutlet weak var swRelay30: UISwitch!
    @IBOutlet weak var swRelay31: UISwitch!
    @IBOutlet weak var swRelay32: UISwitch!

    @IBOutlet weak var btnRelay17: UIButton!
    @IBOutlet weak var btnRelay18: UIButton!
    @IBOutlet weak var btnRelay19: UIButton!
    @IBOutlet weak var btnRelay20: UIButton!
    @IBOutlet weak var btnRelay21: UIButton!
    @IBOutlet weak var btnRelay22: UIButton!
    @IBOutlet weak var btnRelay23: UIButton!
    @IBOutlet weak var btnRelay24: UIButton!
    @IBOutlet weak var btnRelay25: UIButton!
    @IBOutlet weak var btnRelay26: UIButton!
    @IBOutlet weak var btnRelay27: UIButton!
    @IBOutlet weak var btnRelay28: UIButton!
    @IBOutlet weak var btnRelay29: UIButton!
    @IBOutlet weak var btnRelay30: UIButton!
    @IBOutlet weak var btnRelay31: UIButton!
    @IBOutlet weak var btnRelay32: UIButton!

    @IBOutlet weak var labelRelay17: UILabel!
    @IBOutlet weak var labelRelay18: UILabel!
    @IBOutlet weak var labelRelay19: UILabel!
    @IBOutlet weak var labelRelay20: UILabel!
    @IBOutlet weak var labelRelay21: UILabel!
    @IBOutlet weak var labelRelay22: UILabel!
    @IBOutlet weak var labelRelay23: UILabel!
    @IBOutlet weak var labelRelay24: UILabel!
    @IBOutlet weak var labelRelay25: UILabel!
    @IBOutlet weak var labelRelay26: UILabel!
    @IBOutlet weak var labelRelay27: UILabel!
    @IBOutlet weak var labelRelay28: UILabel!
    @IBOutlet weak var labelRelay29: UILabel!
    @IBOutlet weak var labelRelay30: UILabel!
    @IBOutlet weak var labelRelay31: UILabel!
    @IBOutlet weak var labelRelay32: UILabel!


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


    @IBAction func unwindToSecondIpad(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    @IBAction func unwindToMainIpad(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToMainFromSecondIpad", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushTothirdPageIpad" {
            if let thirdPage = segue.destinationViewController as? ThirdPageViewControllerIpad {
                
            }
        }
        else if segue.identifier == "pushToMainPage" {
            if let settingsPage = segue.destinationViewController as? MainPageViewControllerIpad {

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

        labelRelay17.text = globalDefaults.stringForKey("relay17Name")
        labelRelay18.text = globalDefaults.stringForKey("relay18Name")
        labelRelay19.text = globalDefaults.stringForKey("relay19Name")
        labelRelay20.text = globalDefaults.stringForKey("relay20Name")
        labelRelay21.text = globalDefaults.stringForKey("relay21Name")
        labelRelay22.text = globalDefaults.stringForKey("relay22Name")
        labelRelay23.text = globalDefaults.stringForKey("relay23Name")
        labelRelay24.text = globalDefaults.stringForKey("relay24Name")
        labelRelay25.text = globalDefaults.stringForKey("relay25Name")
        labelRelay26.text = globalDefaults.stringForKey("relay26Name")
        labelRelay27.text = globalDefaults.stringForKey("relay27Name")
        labelRelay28.text = globalDefaults.stringForKey("relay28Name")
        labelRelay29.text = globalDefaults.stringForKey("relay29Name")
        labelRelay30.text = globalDefaults.stringForKey("relay30Name")
        labelRelay31.text = globalDefaults.stringForKey("relay31Name")
        labelRelay32.text = globalDefaults.stringForKey("relay32Name")

        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay17.hidden = !(relayIsButtonArr[16] == "0" ? false : true)
        btnRelay18.hidden = !(relayIsButtonArr[17] == "0" ? false : true)
        btnRelay19.hidden = !(relayIsButtonArr[18] == "0" ? false : true)
        btnRelay20.hidden = !(relayIsButtonArr[19] == "0" ? false : true)
        btnRelay21.hidden = !(relayIsButtonArr[20] == "0" ? false : true)
        btnRelay22.hidden = !(relayIsButtonArr[21] == "0" ? false : true)
        btnRelay23.hidden = !(relayIsButtonArr[22] == "0" ? false : true)
        btnRelay24.hidden = !(relayIsButtonArr[23] == "0" ? false : true)
        btnRelay25.hidden = !(relayIsButtonArr[24] == "0" ? false : true)
        btnRelay26.hidden = !(relayIsButtonArr[25] == "0" ? false : true)
        btnRelay27.hidden = !(relayIsButtonArr[26] == "0" ? false : true)
        btnRelay28.hidden = !(relayIsButtonArr[27] == "0" ? false : true)
        btnRelay29.hidden = !(relayIsButtonArr[28] == "0" ? false : true)
        btnRelay30.hidden = !(relayIsButtonArr[29] == "0" ? false : true)
        btnRelay31.hidden = !(relayIsButtonArr[30] == "0" ? false : true)
        btnRelay32.hidden = !(relayIsButtonArr[31] == "0" ? false : true)
        
        swRelay17.hidden = relayIsButtonArr[16] == "0" ? false : true
        swRelay18.hidden = relayIsButtonArr[17] == "0" ? false : true
        swRelay19.hidden = relayIsButtonArr[18] == "0" ? false : true
        swRelay20.hidden = relayIsButtonArr[19] == "0" ? false : true
        swRelay21.hidden = relayIsButtonArr[20] == "0" ? false : true
        swRelay22.hidden = relayIsButtonArr[21] == "0" ? false : true
        swRelay23.hidden = relayIsButtonArr[22] == "0" ? false : true
        swRelay24.hidden = relayIsButtonArr[23] == "0" ? false : true
        swRelay25.hidden = relayIsButtonArr[24] == "0" ? false : true
        swRelay26.hidden = relayIsButtonArr[25] == "0" ? false : true
        swRelay27.hidden = relayIsButtonArr[26] == "0" ? false : true
        swRelay28.hidden = relayIsButtonArr[27] == "0" ? false : true
        swRelay29.hidden = relayIsButtonArr[28] == "0" ? false : true
        swRelay30.hidden = relayIsButtonArr[29] == "0" ? false : true
        swRelay31.hidden = relayIsButtonArr[30] == "0" ? false : true
        swRelay32.hidden = relayIsButtonArr[31] == "0" ? false : true

        swRelay17.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay18.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay19.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay20.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay21.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay22.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay23.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay24.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay25.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay26.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay27.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay28.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay29.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay30.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay31.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay32.transform = CGAffineTransformMakeScale(1.25, 1.25)

        self.renderControlFields(controlCenterType)
    }
    
    
    private func renderControlFields(controlCenterTypeID: Int) {
        switch controlCenterTypeID {
        case 1:
            swipeLeftGesture.enabled = false
        case 2:
            swipeLeftGesture.enabled = false
        case 3:
            // Setup For 24 Circuit Zones
            self.hideAllCircuitsAndLabels()
            labelRelay21.hidden = false
            btnRelay21.hidden = false
            swRelay21.hidden = false
            
            labelRelay22.hidden = false
            btnRelay22.hidden = false
            swRelay22.hidden = false
            
            labelRelay23.hidden = false
            btnRelay23.hidden = false
            swRelay23.hidden = false
            
            labelRelay24.hidden = false
            btnRelay24.hidden = false
            swRelay24.hidden = false
            
            labelRelay25.hidden = false
            btnRelay25.hidden = false
            swRelay25.hidden = false
            
            labelRelay26.hidden = false
            btnRelay26.hidden = false
            swRelay26.hidden = false
            
            labelRelay27.hidden = false
            btnRelay27.hidden = false
            swRelay27.hidden = false
            
            labelRelay28.hidden = false
            btnRelay28.hidden = false
            swRelay28.hidden = false
            
            // Remap Sender Tag Values
            
            swRelay21.tag = 17
            btnRelay21.tag = 17
            
            swRelay22.tag = 18
            btnRelay22.tag = 18
            
            swRelay23.tag = 19
            btnRelay23.tag = 19
            
            swRelay24.tag = 20
            btnRelay24.tag = 20
            
            swRelay25.tag = 21
            btnRelay25.tag = 21
            
            swRelay26.tag = 22
            btnRelay26.tag = 22
            
            swRelay27.tag = 23
            btnRelay27.tag = 23
            
            swRelay28.tag = 24
            btnRelay28.tag = 24
            
            // Remap The Set Text Fields
            labelRelay21.text = globalDefaults.stringForKey("relay17Name")
            labelRelay22.text = globalDefaults.stringForKey("relay18Name")
            labelRelay23.text = globalDefaults.stringForKey("relay19Name")
            labelRelay24.text = globalDefaults.stringForKey("relay20Name")
            labelRelay25.text = globalDefaults.stringForKey("relay21Name")
            labelRelay26.text = globalDefaults.stringForKey("relay22Name")
            labelRelay27.text = globalDefaults.stringForKey("relay23Name")
            labelRelay28.text = globalDefaults.stringForKey("relay24Name")

            
            let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
            btnRelay21.hidden = !(relayIsButtonArr[16] == "0" ? false : true)
            btnRelay22.hidden = !(relayIsButtonArr[17] == "0" ? false : true)
            btnRelay23.hidden = !(relayIsButtonArr[18] == "0" ? false : true)
            btnRelay24.hidden = !(relayIsButtonArr[19] == "0" ? false : true)
            btnRelay25.hidden = !(relayIsButtonArr[20] == "0" ? false : true)
            btnRelay26.hidden = !(relayIsButtonArr[21] == "0" ? false : true)
            btnRelay27.hidden = !(relayIsButtonArr[22] == "0" ? false : true)
            btnRelay28.hidden = !(relayIsButtonArr[23] == "0" ? false : true)
            

            swRelay21.hidden = relayIsButtonArr[16] == "0" ? false : true
            swRelay22.hidden = relayIsButtonArr[17] == "0" ? false : true
            swRelay23.hidden = relayIsButtonArr[18] == "0" ? false : true
            swRelay24.hidden = relayIsButtonArr[19] == "0" ? false : true
            swRelay25.hidden = relayIsButtonArr[20] == "0" ? false : true
            swRelay26.hidden = relayIsButtonArr[21] == "0" ? false : true
            swRelay27.hidden = relayIsButtonArr[22] == "0" ? false : true
            swRelay28.hidden = relayIsButtonArr[23] == "0" ? false : true

            swipeLeftGesture.enabled = false
            print("Should have loaded 24 label zones")
            
        case 4:
            swipeLeftGesture.enabled = false
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
        labelRelay17.hidden = true
        btnRelay17.hidden = true
        swRelay17.hidden = true
        labelRelay18.hidden = true
        btnRelay18.hidden = true
        swRelay18.hidden = true
        labelRelay19.hidden = true
        btnRelay19.hidden = true
        swRelay19.hidden = true
        labelRelay20.hidden = true
        btnRelay20.hidden = true
        swRelay20.hidden = true
        labelRelay21.hidden = true
        btnRelay21.hidden = true
        swRelay21.hidden = true
        labelRelay22.hidden = true
        btnRelay22.hidden = true
        swRelay22.hidden = true
        labelRelay23.hidden = true
        btnRelay23.hidden = true
        swRelay23.hidden = true
        labelRelay24.hidden = true
        btnRelay24.hidden = true
        swRelay24.hidden = true
        labelRelay25.hidden = true
        btnRelay25.hidden = true
        swRelay25.hidden = true
        labelRelay26.hidden = true
        btnRelay26.hidden = true
        swRelay26.hidden = true
        labelRelay27.hidden = true
        btnRelay27.hidden = true
        swRelay27.hidden = true
        labelRelay28.hidden = true
        btnRelay28.hidden = true
        swRelay28.hidden = true
        labelRelay29.hidden = true
        btnRelay29.hidden = true
        swRelay29.hidden = true
        labelRelay30.hidden = true
        btnRelay30.hidden = true
        swRelay30.hidden = true
        labelRelay31.hidden = true
        btnRelay31.hidden = true
        swRelay31.hidden = true
        labelRelay32.hidden = true
        btnRelay32.hidden = true
        swRelay32.hidden = true
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

        swRelay17.enabled = true
        swRelay18.enabled = true
        swRelay19.enabled = true
        swRelay20.enabled = true
        swRelay21.enabled = true
        swRelay22.enabled = true
        swRelay23.enabled = true
        swRelay24.enabled = true
        swRelay25.enabled = true
        swRelay26.enabled = true
        swRelay27.enabled = true
        swRelay28.enabled = true
        swRelay29.enabled = true
        swRelay30.enabled = true
        swRelay31.enabled = true
        swRelay32.enabled = true
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

        swRelay17.enabled = false
        swRelay18.enabled = false
        swRelay19.enabled = false
        swRelay20.enabled = false
        swRelay21.enabled = false
        swRelay22.enabled = false
        swRelay23.enabled = false
        swRelay24.enabled = false
        swRelay25.enabled = false
        swRelay26.enabled = false
        swRelay27.enabled = false
        swRelay28.enabled = false
        swRelay29.enabled = false
        swRelay30.enabled = false
        swRelay31.enabled = false
        swRelay32.enabled = false
        startEngine.enabled = false

        currentDevice = nil
        print("Disconnected") */
    }

    //done
    func bleDidReceiveData(data: UnsafeMutablePointer<UInt8>, length: Int32) {
        // Parse data received
        for var i = 0; Int32(i) < length; i += 3 {
            switch data[i] {
            case 0x01: swRelay17.setOn(data[i+1] == 0x01, animated: true)
            case 0x02: swRelay18.setOn(data[i+1] == 0x01, animated: true)
            case 0x03: swRelay19.setOn(data[i+1] == 0x01, animated: true)
            case 0x04: swRelay20.setOn(data[i+1] == 0x01, animated: true)
            case 0x05: swRelay21.setOn(data[i+1] == 0x01, animated: true)
            case 0x06: swRelay22.setOn(data[i+1] == 0x01, animated: true)
            case 0x07: swRelay23.setOn(data[i+1] == 0x01, animated: true)
            case 0x08: swRelay24.setOn(data[i+1] == 0x01, animated: true)

            case 0x09: swRelay25.setOn(data[i+1] == 0x01, animated: true)
            case 0x10: swRelay26.setOn(data[i+1] == 0x01, animated: true)
            case 0x11: swRelay27.setOn(data[i+1] == 0x01, animated: true)
            case 0x12: swRelay28.setOn(data[i+1] == 0x01, animated: true)
            case 0x13: swRelay29.setOn(data[i+1] == 0x01, animated: true)
            case 0x14: swRelay30.setOn(data[i+1] == 0x01, animated: true)
            case 0x15: swRelay31.setOn(data[i+1] == 0x01, animated: true)
            case 0x16: swRelay32.setOn(data[i+1] == 0x01, animated: true)

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
