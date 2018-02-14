//
//  EighthPageViewController.swift
//  RC Pro
//
//  Created by Lecheng on 1/17/16.
//  Copyright © 2016 RideController. All rights reserved.
//

import UIKit
import Foundation

class EighthPageViewController: UIViewController {
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    
    @IBOutlet weak var swRelay57: UISwitch!
    @IBOutlet weak var swRelay58: UISwitch!
    @IBOutlet weak var swRelay59: UISwitch!
    @IBOutlet weak var swRelay60: UISwitch!
    @IBOutlet weak var swRelay61: UISwitch!
    @IBOutlet weak var swRelay62: UISwitch!
    @IBOutlet weak var swRelay63: UISwitch!
    @IBOutlet weak var swRelay64: UISwitch!
    
    @IBOutlet weak var btnRelay57: UIButton!
    @IBOutlet weak var btnRelay58: UIButton!
    @IBOutlet weak var btnRelay59: UIButton!
    @IBOutlet weak var btnRelay60: UIButton!
    @IBOutlet weak var btnRelay61: UIButton!
    @IBOutlet weak var btnRelay62: UIButton!
    @IBOutlet weak var btnRelay63: UIButton!
    @IBOutlet weak var btnRelay64: UIButton!
    
    @IBOutlet weak var labelRelay57: UILabel!
    @IBOutlet weak var labelRelay58: UILabel!
    @IBOutlet weak var labelRelay59: UILabel!
    @IBOutlet weak var labelRelay60: UILabel!
    @IBOutlet weak var labelRelay61: UILabel!
    @IBOutlet weak var labelRelay62: UILabel!
    @IBOutlet weak var labelRelay63: UILabel!
    @IBOutlet weak var labelRelay64: UILabel!
    
    @IBAction func relayButtonPress(sender: UIButton) {
        
    }
    
    @IBAction func relayButtonRelease(sender: UIButton) {
        
    }
    
    @IBAction func relaySwitchChanged(sender: UISwitch) {
        
    }
    
    // send
    @IBAction func unwindToSeventh(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToSeventh", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        print("Switched to Eighth Page")
        
        self.loadUserDefaults()
        //self.getCurrentRelayState()
    }
    
    private func loadUserDefaults() {
        labelRelay57.text = globalDefaults.stringForKey("relay57Name")
        labelRelay58.text = globalDefaults.stringForKey("relay58Name")
        labelRelay59.text = globalDefaults.stringForKey("relay59Name")
        labelRelay60.text = globalDefaults.stringForKey("relay60Name")
        labelRelay61.text = globalDefaults.stringForKey("relay61Name")
        labelRelay62.text = globalDefaults.stringForKey("relay62Name")
        labelRelay63.text = globalDefaults.stringForKey("relay63Name")
        labelRelay64.text = globalDefaults.stringForKey("relay64Name")
        
        let relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        btnRelay57.hidden = !(relayIsButtonArr[56] == "0" ? false : true)
        btnRelay58.hidden = !(relayIsButtonArr[57] == "0" ? false : true)
        btnRelay59.hidden = !(relayIsButtonArr[58] == "0" ? false : true)
        btnRelay60.hidden = !(relayIsButtonArr[59] == "0" ? false : true)
        btnRelay61.hidden = !(relayIsButtonArr[60] == "0" ? false : true)
        btnRelay62.hidden = !(relayIsButtonArr[61] == "0" ? false : true)
        btnRelay63.hidden = !(relayIsButtonArr[62] == "0" ? false : true)
        btnRelay64.hidden = !(relayIsButtonArr[63] == "0" ? false : true)
        
        swRelay57.hidden = relayIsButtonArr[56] == "0" ? false : true
        swRelay58.hidden = relayIsButtonArr[57] == "0" ? false : true
        swRelay59.hidden = relayIsButtonArr[58] == "0" ? false : true
        swRelay60.hidden = relayIsButtonArr[59] == "0" ? false : true
        swRelay61.hidden = relayIsButtonArr[60] == "0" ? false : true
        swRelay62.hidden = relayIsButtonArr[61] == "0" ? false : true
        swRelay63.hidden = relayIsButtonArr[62] == "0" ? false : true
        swRelay64.hidden = relayIsButtonArr[63] == "0" ? false : true
        
        swRelay57.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay58.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay59.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay60.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay61.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay62.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay63.transform = CGAffineTransformMakeScale(1.25, 1.25)
        swRelay64.transform = CGAffineTransformMakeScale(1.25, 1.25)
        print("Loading Eighth Page complete")
    }
    /*
    func onDefaultsChanged() {
        swRelay57.setOn(globalDefaults.boolForKey("relay57State"), animated: true)
        swRelay58.setOn(globalDefaults.boolForKey("relay58State"), animated: true)
        swRelay59.setOn(globalDefaults.boolForKey("relay59State"), animated: true)
        swRelay60.setOn(globalDefaults.boolForKey("relay60State"), animated: true)
        swRelay61.setOn(globalDefaults.boolForKey("relay61State"), animated: true)
        swRelay62.setOn(globalDefaults.boolForKey("relay62State"), animated: true)
        swRelay63.setOn(globalDefaults.boolForKey("relay63State"), animated: true)
        swRelay64.setOn(globalDefaults.boolForKey("relay64State"), animated: true)
    }
    private func getCurrentRelayState() {
        swRelay57.on = globalDefaults.boolForKey("relay57State")
        swRelay58.on = globalDefaults.boolForKey("relay58State")
        swRelay59.on = globalDefaults.boolForKey("relay59State")
        swRelay60.on = globalDefaults.boolForKey("relay60State")
        swRelay61.on = globalDefaults.boolForKey("relay61State")
        swRelay62.on = globalDefaults.boolForKey("relay62State")
        swRelay63.on = globalDefaults.boolForKey("relay63State")
        swRelay64.on = globalDefaults.boolForKey("relay64State")
        
        print("Relay states on Eighth Page synced")
    }*/
}
