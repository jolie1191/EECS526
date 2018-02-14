//
//  SixthPageViewController.swift
//  RC Pro
//
//  Created by Lecheng on 1/17/16.
//  Copyright © 2016 RideController. All rights reserved.
//

import UIKit
import Foundation

class SixthPageViewController: UIViewController {
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    @IBOutlet var swipeRightGesture: UISwipeGestureRecognizer!
    @IBOutlet weak var swRelay41: UISwitch!
    @IBOutlet weak var swRelay42: UISwitch!
    @IBOutlet weak var swRelay43: UISwitch!
    @IBOutlet weak var swRelay44: UISwitch!
    @IBOutlet weak var swRelay45: UISwitch!
    @IBOutlet weak var swRelay46: UISwitch!
    @IBOutlet weak var swRelay47: UISwitch!
    @IBOutlet weak var swRelay48: UISwitch!
    
    @IBOutlet weak var btnRelay41: UIButton!
    @IBOutlet weak var btnRelay42: UIButton!
    @IBOutlet weak var btnRelay43: UIButton!
    @IBOutlet weak var btnRelay44: UIButton!
    @IBOutlet weak var btnRelay45: UIButton!
    @IBOutlet weak var btnRelay46: UIButton!
    @IBOutlet weak var btnRelay47: UIButton!
    @IBOutlet weak var btnRelay48: UIButton!
    
    @IBOutlet weak var labelRelay41: UILabel!
    @IBOutlet weak var labelRelay42: UILabel!
    @IBOutlet weak var labelRelay43: UILabel!
    @IBOutlet weak var labelRelay44: UILabel!
    @IBOutlet weak var labelRelay45: UILabel!
    @IBOutlet weak var labelRelay46: UILabel!
    @IBOutlet weak var labelRelay47: UILabel!
    @IBOutlet weak var labelRelay48: UILabel!
    
    @IBAction func relayButtonPress(sender: UIButton) {
        
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
        
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        
    }
    
    //get signals and load UI
    @IBAction func unwindToSixth(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    //send
    @IBAction func unwindToFifth(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToFifth", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToFifthPage" {
            if let FifthPage = segue.destinationViewController as? SettingsPageViewController {
                
            }
        }
        else if segue.identifier == "pushToSeventhPage" {
            if let SeventhPage = segue.destinationViewController as? FourthPageViewController {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        print("Switched to Sixth Page")
        
        self.loadUserDefaults()
        //self.getCurrentRelayState()
    }
    
    private func loadUserDefaults() {
        labelRelay41.text = globalDefaults.stringForKey("relay41Name")
        labelRelay42.text = globalDefaults.stringForKey("relay42Name")
        labelRelay43.text = globalDefaults.stringForKey("relay43Name")
        labelRelay44.text = globalDefaults.stringForKey("relay44Name")
        labelRelay45.text = globalDefaults.stringForKey("relay45Name")
        labelRelay46.text = globalDefaults.stringForKey("relay46Name")
        labelRelay47.text = globalDefaults.stringForKey("relay47Name")
        labelRelay48.text = globalDefaults.stringForKey("relay48Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay41.hidden = !(relayIsButtonArr[40] == "0" ? false : true)
        btnRelay42.hidden = !(relayIsButtonArr[41] == "0" ? false : true)
        btnRelay43.hidden = !(relayIsButtonArr[42] == "0" ? false : true)
        btnRelay44.hidden = !(relayIsButtonArr[43] == "0" ? false : true)
        btnRelay45.hidden = !(relayIsButtonArr[44] == "0" ? false : true)
        btnRelay46.hidden = !(relayIsButtonArr[45] == "0" ? false : true)
        btnRelay47.hidden = !(relayIsButtonArr[46] == "0" ? false : true)
        btnRelay48.hidden = !(relayIsButtonArr[47] == "0" ? false : true)
        
        swRelay41.hidden = relayIsButtonArr[40] == "0" ? false : true
        swRelay42.hidden = relayIsButtonArr[41] == "0" ? false : true
        swRelay43.hidden = relayIsButtonArr[42] == "0" ? false : true
        swRelay44.hidden = relayIsButtonArr[43] == "0" ? false : true
        swRelay45.hidden = relayIsButtonArr[44] == "0" ? false : true
        swRelay46.hidden = relayIsButtonArr[45] == "0" ? false : true
        swRelay47.hidden = relayIsButtonArr[46] == "0" ? false : true
        swRelay48.hidden = relayIsButtonArr[47] == "0" ? false : true
        
        swRelay41.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay42.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay43.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay44.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay45.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay46.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay47.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay48.transform = CGAffineTransformMakeScale(1.25, 1.25)
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        self.renderControlFields(controlCenterType)
        print("Loading Sixth Page complete")
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
        swRelay41.setOn(globalDefaults.boolForKey("relay41State"), animated: true)
        swRelay42.setOn(globalDefaults.boolForKey("relay42State"), animated: true)
        swRelay43.setOn(globalDefaults.boolForKey("relay43State"), animated: true)
        swRelay44.setOn(globalDefaults.boolForKey("relay44State"), animated: true)
        swRelay45.setOn(globalDefaults.boolForKey("relay45State"), animated: true)
        swRelay46.setOn(globalDefaults.boolForKey("relay46State"), animated: true)
        swRelay47.setOn(globalDefaults.boolForKey("relay47State"), animated: true)
        swRelay48.setOn(globalDefaults.boolForKey("relay48State"), animated: true)
    }
    private func getCurrentRelayState() {
        swRelay41.on = globalDefaults.boolForKey("relay41State")
        swRelay42.on = globalDefaults.boolForKey("relay42State")
        swRelay43.on = globalDefaults.boolForKey("relay43State")
        swRelay44.on = globalDefaults.boolForKey("relay44State")
        swRelay45.on = globalDefaults.boolForKey("relay45State")
        swRelay46.on = globalDefaults.boolForKey("relay46State")
        swRelay47.on = globalDefaults.boolForKey("relay47State")
        swRelay48.on = globalDefaults.boolForKey("relay48State")
        
        print("Relay states on Sixth Page synced")
    }*/
}
