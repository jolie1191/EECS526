//
//  FourthPageViewController.swift
//  RC Pro
//
//  Created by Lecheng on 1/17/16.
//  Copyright © 2816 RideController. All rights reserved.
//

import UIKit
import Foundation

class FourthPageViewController: UIViewController {
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    @IBOutlet var swipeRightGesture: UISwipeGestureRecognizer!
    @IBOutlet weak var swRelay25: UISwitch!
    @IBOutlet weak var swRelay26: UISwitch!
    @IBOutlet weak var swRelay27: UISwitch!
    @IBOutlet weak var swRelay28: UISwitch!
    @IBOutlet weak var swRelay29: UISwitch!
    @IBOutlet weak var swRelay30: UISwitch!
    @IBOutlet weak var swRelay31: UISwitch!
    @IBOutlet weak var swRelay32: UISwitch!
    
    @IBOutlet weak var btnRelay25: UIButton!
    @IBOutlet weak var btnRelay26: UIButton!
    @IBOutlet weak var btnRelay27: UIButton!
    @IBOutlet weak var btnRelay28: UIButton!
    @IBOutlet weak var btnRelay29: UIButton!
    @IBOutlet weak var btnRelay30: UIButton!
    @IBOutlet weak var btnRelay31: UIButton!
    @IBOutlet weak var btnRelay32: UIButton!
    
    @IBOutlet weak var labelRelay25: UILabel!
    @IBOutlet weak var labelRelay26: UILabel!
    @IBOutlet weak var labelRelay27: UILabel!
    @IBOutlet weak var labelRelay28: UILabel!
    @IBOutlet weak var labelRelay29: UILabel!
    @IBOutlet weak var labelRelay30: UILabel!
    @IBOutlet weak var labelRelay31: UILabel!
    @IBOutlet weak var labelRelay32: UILabel!
    
    @IBAction func relayButtonPress(sender: UIButton) {
        
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
        
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        
    }
    
    @IBAction func unwindToFourth(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    @IBAction func unwindToThird(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToThird", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pushToThirdPage" {
            if let ThirdPage = segue.destinationViewController as? SettingsPageViewController {
                
            }
        }
        /*else if segue.identifier == "pushToThirdPage" {
        if let secondPage = segue.destinationViewController as? SecondPageViewController {
        
        }
        }*/
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        print("Switched to Fourth Page")
        
        self.loadUserDefaults()
        //self.getCurrentRelayState()
    }
    
    private func loadUserDefaults() {
        labelRelay25.text = globalDefaults.stringForKey("relay25Name")
        labelRelay26.text = globalDefaults.stringForKey("relay26Name")
        labelRelay27.text = globalDefaults.stringForKey("relay27Name")
        labelRelay28.text = globalDefaults.stringForKey("relay28Name")
        labelRelay29.text = globalDefaults.stringForKey("relay29Name")
        labelRelay30.text = globalDefaults.stringForKey("relay30Name")
        labelRelay31.text = globalDefaults.stringForKey("relay31Name")
        labelRelay32.text = globalDefaults.stringForKey("relay32Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay25.hidden = !(relayIsButtonArr[24] == "0" ? false : true)
        btnRelay26.hidden = !(relayIsButtonArr[25] == "0" ? false : true)
        btnRelay27.hidden = !(relayIsButtonArr[26] == "0" ? false : true)
        btnRelay28.hidden = !(relayIsButtonArr[27] == "0" ? false : true)
        btnRelay29.hidden = !(relayIsButtonArr[28] == "0" ? false : true)
        btnRelay30.hidden = !(relayIsButtonArr[29] == "0" ? false : true)
        btnRelay31.hidden = !(relayIsButtonArr[30] == "0" ? false : true)
        btnRelay32.hidden = !(relayIsButtonArr[31] == "0" ? false : true)
        
        swRelay25.hidden = relayIsButtonArr[24] == "0" ? false : true
        swRelay26.hidden = relayIsButtonArr[25] == "0" ? false : true
        swRelay27.hidden = relayIsButtonArr[26] == "0" ? false : true
        swRelay28.hidden = relayIsButtonArr[27] == "0" ? false : true
        swRelay29.hidden = relayIsButtonArr[28] == "0" ? false : true
        swRelay30.hidden = relayIsButtonArr[29] == "0" ? false : true
        swRelay31.hidden = relayIsButtonArr[30] == "0" ? false : true
        swRelay32.hidden = relayIsButtonArr[31] == "0" ? false : true
        
        swRelay25.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay26.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay27.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay28.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay29.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay30.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay31.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay32.transform = CGAffineTransformMakeScale(1.25, 1.25)
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        self.renderControlFields(controlCenterType)
        print("Loading Fourth Page complete")
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
        swRelay25.setOn(globalDefaults.boolForKey("relay25State"), animated: true)
        swRelay26.setOn(globalDefaults.boolForKey("relay26State"), animated: true)
        swRelay27.setOn(globalDefaults.boolForKey("relay27State"), animated: true)
        swRelay28.setOn(globalDefaults.boolForKey("relay28State"), animated: true)
        swRelay29.setOn(globalDefaults.boolForKey("relay29State"), animated: true)
        swRelay30.setOn(globalDefaults.boolForKey("relay30State"), animated: true)
        swRelay31.setOn(globalDefaults.boolForKey("relay31State"), animated: true)
        swRelay32.setOn(globalDefaults.boolForKey("relay32State"), animated: true)
    }
    private func getCurrentRelayState() {
        swRelay25.on = globalDefaults.boolForKey("relay25State")
        swRelay26.on = globalDefaults.boolForKey("relay26State")
        swRelay27.on = globalDefaults.boolForKey("relay27State")
        swRelay28.on = globalDefaults.boolForKey("relay28State")
        swRelay29.on = globalDefaults.boolForKey("relay29State")
        swRelay30.on = globalDefaults.boolForKey("relay30State")
        swRelay31.on = globalDefaults.boolForKey("relay31State")
        swRelay32.on = globalDefaults.boolForKey("relay32State")
        
        print("Relay states on Fourth Page synced")
    }
    */
}
