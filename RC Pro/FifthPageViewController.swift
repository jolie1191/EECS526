//
//  FifthPageViewController.swift
//  RC Pro
//
//  Created by Lecheng on 1/17/16.
//  Copyright © 3616 RideController. All rights reserved.
//

import UIKit
import Foundation

class FifthPageViewController: UIViewController {
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    @IBOutlet var swipeRightGesture: UISwipeGestureRecognizer!
    @IBOutlet weak var swRelay33: UISwitch!
    @IBOutlet weak var swRelay34: UISwitch!
    @IBOutlet weak var swRelay35: UISwitch!
    @IBOutlet weak var swRelay36: UISwitch!
    @IBOutlet weak var swRelay37: UISwitch!
    @IBOutlet weak var swRelay38: UISwitch!
    @IBOutlet weak var swRelay39: UISwitch!
    @IBOutlet weak var swRelay40: UISwitch!
    
    @IBOutlet weak var btnRelay33: UIButton!
    @IBOutlet weak var btnRelay34: UIButton!
    @IBOutlet weak var btnRelay35: UIButton!
    @IBOutlet weak var btnRelay36: UIButton!
    @IBOutlet weak var btnRelay37: UIButton!
    @IBOutlet weak var btnRelay38: UIButton!
    @IBOutlet weak var btnRelay39: UIButton!
    @IBOutlet weak var btnRelay40: UIButton!
    
    @IBOutlet weak var labelRelay33: UILabel!
    @IBOutlet weak var labelRelay34: UILabel!
    @IBOutlet weak var labelRelay35: UILabel!
    @IBOutlet weak var labelRelay36: UILabel!
    @IBOutlet weak var labelRelay37: UILabel!
    @IBOutlet weak var labelRelay38: UILabel!
    @IBOutlet weak var labelRelay39: UILabel!
    @IBOutlet weak var labelRelay40: UILabel!
    
    @IBAction func relayButtonPress(sender: UIButton) {
        
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
        
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        
    }
    
    // get signals and load UI
    @IBAction func unwindToFifth(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    // send
    @IBAction func unwindToFourth(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToFourth", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToFourthPage" {
            if let FourthPage = segue.destinationViewController as? SettingsPageViewController {
                
            }
        }
        else if segue.identifier == "pushToSixthPage" {
            if let SixthPage = segue.destinationViewController as? FourthPageViewController {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        print("Switched to Fifth Page")
        
        self.loadUserDefaults()
        //self.getCurrentRelayState()
    }
    
    private func loadUserDefaults() {
        labelRelay33.text = globalDefaults.stringForKey("relay33Name")
        labelRelay34.text = globalDefaults.stringForKey("relay34Name")
        labelRelay35.text = globalDefaults.stringForKey("relay35Name")
        labelRelay36.text = globalDefaults.stringForKey("relay36Name")
        labelRelay37.text = globalDefaults.stringForKey("relay37Name")
        labelRelay38.text = globalDefaults.stringForKey("relay38Name")
        labelRelay39.text = globalDefaults.stringForKey("relay39Name")
        labelRelay40.text = globalDefaults.stringForKey("relay40Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay33.hidden = !(relayIsButtonArr[32] == "0" ? false : true)
        btnRelay34.hidden = !(relayIsButtonArr[33] == "0" ? false : true)
        btnRelay35.hidden = !(relayIsButtonArr[34] == "0" ? false : true)
        btnRelay36.hidden = !(relayIsButtonArr[35] == "0" ? false : true)
        btnRelay37.hidden = !(relayIsButtonArr[36] == "0" ? false : true)
        btnRelay38.hidden = !(relayIsButtonArr[37] == "0" ? false : true)
        btnRelay39.hidden = !(relayIsButtonArr[38] == "0" ? false : true)
        btnRelay40.hidden = !(relayIsButtonArr[39] == "0" ? false : true)
        
        swRelay33.hidden = relayIsButtonArr[32] == "0" ? false : true
        swRelay34.hidden = relayIsButtonArr[33] == "0" ? false : true
        swRelay35.hidden = relayIsButtonArr[34] == "0" ? false : true
        swRelay36.hidden = relayIsButtonArr[35] == "0" ? false : true
        swRelay37.hidden = relayIsButtonArr[36] == "0" ? false : true
        swRelay38.hidden = relayIsButtonArr[37] == "0" ? false : true
        swRelay39.hidden = relayIsButtonArr[38] == "0" ? false : true
        swRelay40.hidden = relayIsButtonArr[39] == "0" ? false : true
        
        swRelay33.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay34.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay35.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay36.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay37.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay38.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay39.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay40.transform = CGAffineTransformMakeScale(1.25, 1.25)
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        self.renderControlFields(controlCenterType)
        print("Loading Fifth Page complete")
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
        swRelay33.setOn(globalDefaults.boolForKey("relay33State"), animated: true)
        swRelay34.setOn(globalDefaults.boolForKey("relay34State"), animated: true)
        swRelay35.setOn(globalDefaults.boolForKey("relay35State"), animated: true)
        swRelay36.setOn(globalDefaults.boolForKey("relay36State"), animated: true)
        swRelay37.setOn(globalDefaults.boolForKey("relay37State"), animated: true)
        swRelay38.setOn(globalDefaults.boolForKey("relay38State"), animated: true)
        swRelay39.setOn(globalDefaults.boolForKey("relay39State"), animated: true)
        swRelay40.setOn(globalDefaults.boolForKey("relay40State"), animated: true)
    }
    private func getCurrentRelayState() {
        swRelay33.on = globalDefaults.boolForKey("relay33State")
        swRelay34.on = globalDefaults.boolForKey("relay34State")
        swRelay35.on = globalDefaults.boolForKey("relay35State")
        swRelay36.on = globalDefaults.boolForKey("relay36State")
        swRelay37.on = globalDefaults.boolForKey("relay37State")
        swRelay38.on = globalDefaults.boolForKey("relay38State")
        swRelay39.on = globalDefaults.boolForKey("relay39State")
        swRelay40.on = globalDefaults.boolForKey("relay40State")
        
        print("Relay states on Fifth Page synced")
    }*/
}
