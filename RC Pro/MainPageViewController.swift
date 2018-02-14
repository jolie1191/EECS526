//
//  MainPageViewController.swift
//  RC Pro
//
//  Created by Su Yan on 11/18/15.
//  Copyright (c) 2015 RideController LLC. All rights reserved.
//


import UIKit
import Foundation

class MainPageViewController: UIViewController, UIActionSheetDelegate {

    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    
    @IBOutlet weak var startEngine: UIButton!
    @IBOutlet weak var btnConnect: UIButton!
    @IBOutlet weak var connectIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var labelRssi: UILabel!
    
    @IBOutlet weak var swRelay1: UISwitch!
    @IBOutlet weak var swRelay2: UISwitch!
    @IBOutlet weak var swRelay3: UISwitch!
    @IBOutlet weak var swRelay4: UISwitch!
    @IBOutlet weak var swRelay5: UISwitch!
    @IBOutlet weak var swRelay6: UISwitch!
    @IBOutlet weak var swRelay7: UISwitch!
    @IBOutlet weak var swRelay8: UISwitch!
    
    @IBOutlet weak var btnRelay1: UIButton!
    @IBOutlet weak var btnRelay2: UIButton!
    @IBOutlet weak var btnRelay3: UIButton!
    @IBOutlet weak var btnRelay4: UIButton!
    @IBOutlet weak var btnRelay5: UIButton!
    @IBOutlet weak var btnRelay6: UIButton!
    @IBOutlet weak var btnRelay7: UIButton!
    @IBOutlet weak var btnRelay8: UIButton!
    
    @IBOutlet weak var labelRelay1: UILabel!
    @IBOutlet weak var labelRelay2: UILabel!
    @IBOutlet weak var labelRelay3: UILabel!
    @IBOutlet weak var labelRelay4: UILabel!
    @IBOutlet weak var labelRelay5: UILabel!
    @IBOutlet weak var labelRelay6: UILabel!
    @IBOutlet weak var labelRelay7: UILabel!
    @IBOutlet weak var labelRelay8: UILabel!
    
    @IBOutlet weak var settingsMenuSegment: UISegmentedControl!
    @IBOutlet var swipeRightGesture: UISwipeGestureRecognizer!
    
    func engineStartPressWatch()
    {
        /*var buf: [UInt8] = [0x08, 0x01, 0x00]
        
        switch legacyDefaults.integerForKey("controlCenterType") {
        case 0: buf[0] = 0x04
        case 1: buf[0] = 0x08
        case 2: buf[0] = 0x16
        default: break
        }*/
        
        //Turn The Circuit On
        //ble.write(NSData(bytes: buf, length: 3))
        print("Engie Start button pressed Apple Watch")
        
        //Watch Doesn't Have Release Command So Sleep The Button On For Half Second.
        NSThread.sleepForTimeInterval(0.5)
        
        //Turn The Circuit Off
        //buf[1] = 0x00
        
        //ble.write(NSData(bytes: buf, length: 3))
        print("Engine Start released")
    }
    
    func circuitButtonPressWatch(circuitID: Int)
    {
        /*var buf: [UInt8] = [0x00 + UInt8(circuitID), 0x01, 0x00]
        
        //check if RC4 layout
        if legacyDefaults.integerForKey("controlCenterType") == 0
        {
            switch circuitID {
            case 2: buf[0] = 0x01
            case 3: buf[0] = 0x02
            case 6: buf[0] = 0x03
            case 7: buf[0] = 0x04
            default: break
            }
            print("button fired on a RC4")
        }*/
        
        //Turn The Circuit On
        //ble.write(NSData(bytes: buf, length: 3))
        print("Relay \(circuitID) button pressed")
        
        //Watch Doesn't Have Release Command So Sleep The Button On For Half Second.
        NSThread.sleepForTimeInterval(0.5)
        
        //Turn The Circuit Off
        //buf[1] = 0x00
        
        //ble.write(NSData(bytes: buf, length: 3))
        print("Relay \(circuitID) button released")
    }
    
    
    @IBAction func startEnginePress(sender: UIButton) {

    }
    
    @IBAction func startEngineRelease(sender: UIButton) {

    }
    
    @IBAction func relayButtonPress(sender: UIButton) {

    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {

    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        var relayStateArr = globalDefaults.stringArrayForKey("relayState")!
        relayStateArr[sender.tag - 1] = sender.on ? "1" : "0"
        globalDefaults.setObject(relayStateArr, forKey: "relayState")
        globalDefaults.synchronize()

    }
    
    @IBAction func menuSegmentChange(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            self.performSegueWithIdentifier("pushToSettingsPage", sender: self)
            sender.selectedSegmentIndex = 0
        }
    }
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToSettingsPage" {
            if let settingsPage = segue.destinationViewController as? SettingsPageViewController {

            }
        }
        else if segue.identifier == "pushToSecondPage" {
            if let secondPage = segue.destinationViewController as? SecondPageViewController {

            }
        }
    }
    
    @IBAction func scanForPeripherals(sender: UIButton) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main view loaded")
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        
        self.navigationController!.setNavigationBarHidden(true, animated: false)
        
        swRelay1.setOn(false, animated: true)
        swRelay2.setOn(false, animated: true)
        swRelay3.setOn(false, animated: true)
        swRelay4.setOn(false, animated: true)
        swRelay5.setOn(false, animated: true)
        swRelay6.setOn(false, animated: true)
        swRelay7.setOn(false, animated: true)
        swRelay8.setOn(false, animated: true)
        
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
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay1.hidden = !(relayIsButtonArr[0] == "0" ? false : true)
        btnRelay2.hidden = !(relayIsButtonArr[1] == "0" ? false : true)
        btnRelay3.hidden = !(relayIsButtonArr[2] == "0" ? false : true)
        btnRelay4.hidden = !(relayIsButtonArr[3] == "0" ? false : true)
        btnRelay5.hidden = !(relayIsButtonArr[4] == "0" ? false : true)
        btnRelay6.hidden = !(relayIsButtonArr[5] == "0" ? false : true)
        btnRelay7.hidden = !(relayIsButtonArr[6] == "0" ? false : true)
        btnRelay8.hidden = !(relayIsButtonArr[7] == "0" ? false : true)
        
        swRelay1.hidden = relayIsButtonArr[0] == "0" ? false : true
        swRelay2.hidden = relayIsButtonArr[1] == "0" ? false : true
        swRelay3.hidden = relayIsButtonArr[2] == "0" ? false : true
        swRelay4.hidden = relayIsButtonArr[3] == "0" ? false : true
        swRelay5.hidden = relayIsButtonArr[4] == "0" ? false : true
        swRelay6.hidden = relayIsButtonArr[5] == "0" ? false : true
        swRelay7.hidden = relayIsButtonArr[6] == "0" ? false : true
        swRelay8.hidden = relayIsButtonArr[7] == "0" ? false : true
        
        swRelay1.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay2.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay3.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay4.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay5.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay6.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay7.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay8.transform = CGAffineTransformMakeScale(1.25, 1.25)
        
        startEngine.hidden = !globalDefaults.boolForKey("startIsViewable")
        self.renderControlFields(controlCenterType)
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
            swipeRightGesture.enabled = true
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
        swRelay1.setOn(relayStateArr[0] == "0" ? false : true, animated: true)
        swRelay2.setOn(relayStateArr[1] == "0" ? false : true, animated: true)
        swRelay3.setOn(relayStateArr[2] == "0" ? false : true, animated: true)
        swRelay4.setOn(relayStateArr[3] == "0" ? false : true, animated: true)
        swRelay5.setOn(relayStateArr[4] == "0" ? false : true, animated: true)
        swRelay6.setOn(relayStateArr[5] == "0" ? false : true, animated: true)
        swRelay7.setOn(relayStateArr[6] == "0" ? false : true, animated: true)
        swRelay8.setOn(relayStateArr[7] == "0" ? false : true, animated: true)
    }
    /*
    private func showAllLabels() {
        labelRelay1.hidden = false
        labelRelay2.hidden = false
        labelRelay3.hidden = false
        labelRelay4.hidden = false
        labelRelay5.hidden = false
        labelRelay6.hidden = false
        labelRelay7.hidden = false
        labelRelay8.hidden = false
        
        // Remap Sender Tag To Defaults
        swRelay1.tag = 1
        swRelay2.tag = 2
        swRelay3.tag = 3
        swRelay4.tag = 4
        swRelay5.tag = 5
        swRelay6.tag = 6
        swRelay7.tag = 7
        swRelay8.tag = 8
        
        btnRelay1.tag = 1
        btnRelay2.tag = 2
        btnRelay3.tag = 3
        btnRelay4.tag = 4
        btnRelay5.tag = 5
        btnRelay6.tag = 6
        btnRelay7.tag = 7
        btnRelay8.tag = 8
    }*/
}