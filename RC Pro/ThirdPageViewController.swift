//
//  ThirdPageViewController.swift
//  RC Pro
//
//  Created by Lecheng on 1/17/16.
//  Copyright © 2016 RideController. All rights reserved.
//

import UIKit
import Foundation

class ThirdPageViewController: UIViewController {
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    @IBOutlet var swipeRightGesture: UISwipeGestureRecognizer!
    @IBOutlet weak var swRelay17: UISwitch!
    @IBOutlet weak var swRelay18: UISwitch!
    @IBOutlet weak var swRelay19: UISwitch!
    @IBOutlet weak var swRelay20: UISwitch!
    @IBOutlet weak var swRelay21: UISwitch!
    @IBOutlet weak var swRelay22: UISwitch!
    @IBOutlet weak var swRelay23: UISwitch!
    @IBOutlet weak var swRelay24: UISwitch!
    
    @IBOutlet weak var btnRelay17: UIButton!
    @IBOutlet weak var btnRelay18: UIButton!
    @IBOutlet weak var btnRelay19: UIButton!
    @IBOutlet weak var btnRelay20: UIButton!
    @IBOutlet weak var btnRelay21: UIButton!
    @IBOutlet weak var btnRelay22: UIButton!
    @IBOutlet weak var btnRelay23: UIButton!
    @IBOutlet weak var btnRelay24: UIButton!
    
    @IBOutlet weak var labelRelay17: UILabel!
    @IBOutlet weak var labelRelay18: UILabel!
    @IBOutlet weak var labelRelay19: UILabel!
    @IBOutlet weak var labelRelay20: UILabel!
    @IBOutlet weak var labelRelay21: UILabel!
    @IBOutlet weak var labelRelay22: UILabel!
    @IBOutlet weak var labelRelay23: UILabel!
    @IBOutlet weak var labelRelay24: UILabel!
    
    @IBAction func relayButtonPress(sender: UIButton) {
        
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
        
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        
    }
    
    // get signals and load UI
    @IBAction func unwindToThird(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    // send
    @IBAction func unwindToSecond(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToSecond", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToSecondPage" {
            if let secondPage = segue.destinationViewController as? SettingsPageViewController {
                
            }
        }
        else if segue.identifier == "pushToFourthPage" {
            if let secondPage = segue.destinationViewController as? SecondPageViewController {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        print("Switched to Third Page")
        
        self.loadUserDefaults()
    }
    
    private func loadUserDefaults() {
        labelRelay17.text = globalDefaults.stringForKey("relay17Name")
        labelRelay18.text = globalDefaults.stringForKey("relay18Name")
        labelRelay19.text = globalDefaults.stringForKey("relay19Name")
        labelRelay20.text = globalDefaults.stringForKey("relay20Name")
        labelRelay21.text = globalDefaults.stringForKey("relay21Name")
        labelRelay22.text = globalDefaults.stringForKey("relay22Name")
        labelRelay23.text = globalDefaults.stringForKey("relay23Name")
        labelRelay24.text = globalDefaults.stringForKey("relay24Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay17.hidden = !(relayIsButtonArr[16] == "0" ? false : true)
        btnRelay18.hidden = !(relayIsButtonArr[17] == "0" ? false : true)
        btnRelay19.hidden = !(relayIsButtonArr[18] == "0" ? false : true)
        btnRelay20.hidden = !(relayIsButtonArr[19] == "0" ? false : true)
        btnRelay21.hidden = !(relayIsButtonArr[20] == "0" ? false : true)
        btnRelay22.hidden = !(relayIsButtonArr[21] == "0" ? false : true)
        btnRelay23.hidden = !(relayIsButtonArr[22] == "0" ? false : true)
        btnRelay24.hidden = !(relayIsButtonArr[23] == "0" ? false : true)
        
        swRelay17.hidden = relayIsButtonArr[16] == "0" ? false : true
        swRelay18.hidden = relayIsButtonArr[17] == "0" ? false : true
        swRelay19.hidden = relayIsButtonArr[18] == "0" ? false : true
        swRelay20.hidden = relayIsButtonArr[19] == "0" ? false : true
        swRelay21.hidden = relayIsButtonArr[20] == "0" ? false : true
        swRelay22.hidden = relayIsButtonArr[21] == "0" ? false : true
        swRelay23.hidden = relayIsButtonArr[22] == "0" ? false : true
        swRelay24.hidden = relayIsButtonArr[23] == "0" ? false : true
        
        swRelay17.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay18.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay19.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay20.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay21.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay22.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay23.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay24.transform = CGAffineTransformMakeScale(1.25, 1.25)
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        print(controlCenterType)
        self.renderControlFields(controlCenterType)
        print("Loading Third Page complete")
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

    
    /*
    func onDefaultsChanged() {
        swRelay17.setOn(globalDefaults.boolForKey("relay17State"), animated: true)
        swRelay18.setOn(globalDefaults.boolForKey("relay18State"), animated: true)
        swRelay19.setOn(globalDefaults.boolForKey("relay19State"), animated: true)
        swRelay20.setOn(globalDefaults.boolForKey("relay20State"), animated: true)
        swRelay21.setOn(globalDefaults.boolForKey("relay21State"), animated: true)
        swRelay22.setOn(globalDefaults.boolForKey("relay22State"), animated: true)
        swRelay23.setOn(globalDefaults.boolForKey("relay23State"), animated: true)
        swRelay24.setOn(globalDefaults.boolForKey("relay24State"), animated: true)
    }
    private func getCurrentRelayState() {
        swRelay17.on = globalDefaults.boolForKey("relay17State")
        swRelay18.on = globalDefaults.boolForKey("relay18State")
        swRelay19.on = globalDefaults.boolForKey("relay19State")
        swRelay20.on = globalDefaults.boolForKey("relay20State")
        swRelay21.on = globalDefaults.boolForKey("relay21State")
        swRelay22.on = globalDefaults.boolForKey("relay22State")
        swRelay23.on = globalDefaults.boolForKey("relay23State")
        swRelay24.on = globalDefaults.boolForKey("relay24State")
        
        print("Relay states on Third Page synced")
    }*/
}
