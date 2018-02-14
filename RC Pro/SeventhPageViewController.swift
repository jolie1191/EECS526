//
//  SeventhPageViewController.swift
//  RC Pro
//
//  Created by Lecheng on 1/17/16.
//  Copyright © 2016 RideController. All rights reserved.
//

import UIKit
import Foundation

class SeventhPageViewController: UIViewController {
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    @IBOutlet var swipeRightGesture: UISwipeGestureRecognizer!
    @IBOutlet weak var swRelay49: UISwitch!
    @IBOutlet weak var swRelay50: UISwitch!
    @IBOutlet weak var swRelay51: UISwitch!
    @IBOutlet weak var swRelay52: UISwitch!
    @IBOutlet weak var swRelay53: UISwitch!
    @IBOutlet weak var swRelay54: UISwitch!
    @IBOutlet weak var swRelay55: UISwitch!
    @IBOutlet weak var swRelay56: UISwitch!
    
    @IBOutlet weak var btnRelay49: UIButton!
    @IBOutlet weak var btnRelay50: UIButton!
    @IBOutlet weak var btnRelay51: UIButton!
    @IBOutlet weak var btnRelay52: UIButton!
    @IBOutlet weak var btnRelay53: UIButton!
    @IBOutlet weak var btnRelay54: UIButton!
    @IBOutlet weak var btnRelay55: UIButton!
    @IBOutlet weak var btnRelay56: UIButton!
    
    @IBOutlet weak var labelRelay49: UILabel!
    @IBOutlet weak var labelRelay50: UILabel!
    @IBOutlet weak var labelRelay51: UILabel!
    @IBOutlet weak var labelRelay52: UILabel!
    @IBOutlet weak var labelRelay53: UILabel!
    @IBOutlet weak var labelRelay54: UILabel!
    @IBOutlet weak var labelRelay55: UILabel!
    @IBOutlet weak var labelRelay56: UILabel!
    
    @IBAction func relayButtonPress(sender: UIButton) {
        
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
        
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        
    }
    
    // get signals and load UI
    @IBAction func unwindToSeventh(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    // send
    @IBAction func unwindToSixth(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToSixth", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToSixthPage" {
            if let sixthPage = segue.destinationViewController as? SettingsPageViewController {
                
            }
        }
        else if segue.identifier == "pushToEighthPage" {
            if let eighthPage = segue.destinationViewController as? FourthPageViewController {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        print("Switched to Seventh Page")
        
        self.loadUserDefaults()
        // self.getCurrentRelayState()
    }
    
    private func loadUserDefaults() {
        labelRelay49.text = globalDefaults.stringForKey("relay49Name")
        labelRelay50.text = globalDefaults.stringForKey("relay50Name")
        labelRelay51.text = globalDefaults.stringForKey("relay51Name")
        labelRelay52.text = globalDefaults.stringForKey("relay52Name")
        labelRelay53.text = globalDefaults.stringForKey("relay53Name")
        labelRelay54.text = globalDefaults.stringForKey("relay54Name")
        labelRelay55.text = globalDefaults.stringForKey("relay55Name")
        labelRelay56.text = globalDefaults.stringForKey("relay56Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay49.hidden = !(relayIsButtonArr[48] == "0" ? false : true)
        btnRelay50.hidden = !(relayIsButtonArr[49] == "0" ? false : true)
        btnRelay51.hidden = !(relayIsButtonArr[50] == "0" ? false : true)
        btnRelay52.hidden = !(relayIsButtonArr[51] == "0" ? false : true)
        btnRelay53.hidden = !(relayIsButtonArr[52] == "0" ? false : true)
        btnRelay54.hidden = !(relayIsButtonArr[53] == "0" ? false : true)
        btnRelay55.hidden = !(relayIsButtonArr[54] == "0" ? false : true)
        btnRelay56.hidden = !(relayIsButtonArr[55] == "0" ? false : true)
        
        swRelay49.hidden = relayIsButtonArr[48] == "0" ? false : true
        swRelay50.hidden = relayIsButtonArr[49] == "0" ? false : true
        swRelay51.hidden = relayIsButtonArr[50] == "0" ? false : true
        swRelay52.hidden = relayIsButtonArr[51] == "0" ? false : true
        swRelay53.hidden = relayIsButtonArr[52] == "0" ? false : true
        swRelay54.hidden = relayIsButtonArr[53] == "0" ? false : true
        swRelay55.hidden = relayIsButtonArr[54] == "0" ? false : true
        swRelay56.hidden = relayIsButtonArr[55] == "0" ? false : true
        
        swRelay49.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay50.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay51.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay52.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay53.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay54.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay55.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay56.transform = CGAffineTransformMakeScale(1.25, 1.25)
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        self.renderControlFields(controlCenterType)
        print("Loading Seventh Page complete")
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
            swipeRightGesture.enabled = false
            print("Should have loaded 24 label zones")
            
        case 4:
            // Setup For 32 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = false
            print("Should have loaded 32 label zones")
        case 5:
            // Setup For 40 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = false
            print("Should have loaded 40 label zones")
        case 6:
            // Setup For 48 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = false
            print("Should have loaded 48 label zones")
        case 7:
            // Setup For 56 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = false
            print("Should have loaded 56 label zones")
        case 8:
            // Setup For 64 Circuit Zones
            //self.showAllLabels()
            swipeRightGesture.enabled = true
            print("Should have loaded 64 label zones")
        default: break
        }
        
    }
    
    /*
    func onDefaultsChanged() {
        swRelay49.setOn(globalDefaults.boolForKey("relay49State"), animated: true)
        swRelay50.setOn(globalDefaults.boolForKey("relay50State"), animated: true)
        swRelay51.setOn(globalDefaults.boolForKey("relay51State"), animated: true)
        swRelay52.setOn(globalDefaults.boolForKey("relay52State"), animated: true)
        swRelay53.setOn(globalDefaults.boolForKey("relay53State"), animated: true)
        swRelay54.setOn(globalDefaults.boolForKey("relay54State"), animated: true)
        swRelay55.setOn(globalDefaults.boolForKey("relay55State"), animated: true)
        swRelay56.setOn(globalDefaults.boolForKey("relay56State"), animated: true)
    }
    private func getCurrentRelayState() {
        swRelay49.on = globalDefaults.boolForKey("relay49State")
        swRelay50.on = globalDefaults.boolForKey("relay50State")
        swRelay51.on = globalDefaults.boolForKey("relay51State")
        swRelay52.on = globalDefaults.boolForKey("relay52State")
        swRelay53.on = globalDefaults.boolForKey("relay53State")
        swRelay54.on = globalDefaults.boolForKey("relay54State")
        swRelay55.on = globalDefaults.boolForKey("relay55State")
        swRelay56.on = globalDefaults.boolForKey("relay56State")
        
        print("Relay states on Seventh Page synced")
    }*/
}
