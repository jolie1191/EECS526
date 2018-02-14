//
//  RelaySettingsViewControllerIpad.swift
//  RC Pro
//
//  Created by Su Yan on 12/30/15.
//  Copyright © 2015 RideController LLC. All rights reserved.
//

import Foundation
import UIKit

class RelaySettingsViewControllerIpad: UIViewController {
    
    var relayIndex: Int!
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtRelayName: UITextField!
    @IBOutlet weak var swRelayIsButton: UISwitch!
    @IBOutlet weak var slRelayDimmer: UISlider!
    @IBOutlet weak var txtRelayStrobe: UITextField!
    
    @IBOutlet weak var colorWheel: ColorWheel!
    @IBOutlet weak var colorPreview: UIView!
    @IBOutlet weak var settingsMenuSegment: UISegmentedControl!
    
    @IBAction func handleTapGesture(sender: UITapGestureRecognizer) {
        let point = sender.locationInView(colorWheel)
        print("\(colorWheel.colorAtPoint(point))")
        print("\(point)")
        colorPreview.backgroundColor = colorWheel.colorAtPoint(point)
    }
    
    @IBAction func unwindToSettings(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.saveUserDefaults()
            print("Relay settings saved")
        }
        else {
            print("Relay settings cancelled")
        }
        self.performSegueWithIdentifier("unwindToSettings", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        self.navigationController?.navigationBarHidden = true
        self.view.tintColor = UIColor.blackColor()
        self.loadUserDefaults()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    private func loadUserDefaults() {
        self.lblTitle.text = "Relay #\(relayIndex)"
        self.txtRelayName.text = globalDefaults.stringForKey("relay\(relayIndex)Name")
        self.swRelayIsButton.setOn((globalDefaults.stringArrayForKey("relayIsButton")![relayIndex - 1] == "0") ? false : true, animated: true)
        self.slRelayDimmer.setValue(Float(globalDefaults.stringArrayForKey("relayDimmer")![relayIndex - 1])!, animated: true)
        self.txtRelayStrobe.text = globalDefaults.stringArrayForKey("relayStrobe")![relayIndex - 1]
        
        let rgbArr = globalDefaults.stringArrayForKey("relay\(relayIndex)RGB")!
        colorPreview.backgroundColor = UIColor(red: CGFloat(Int(rgbArr[0])!), green: CGFloat(Int(rgbArr[1])!), blue: CGFloat(Int(rgbArr[2])!), alpha: CGFloat(1))
        self.settingsMenuSegment.selectedSegmentIndex = -1
    }
    
    private func saveUserDefaults() {
        var relayIsButtonArr = globalDefaults.stringArrayForKey("relayIsButton")!
        var relayDimmerArr = globalDefaults.stringArrayForKey("relayDimmer")!
        var relayStrobeArr = globalDefaults.stringArrayForKey("relayStrobe")!
        
        relayIsButtonArr[relayIndex - 1] = self.swRelayIsButton.on ? "1" : "0"
        relayDimmerArr[relayIndex - 1] = String(self.slRelayDimmer.value)
        
        if let frequency = self.txtRelayStrobe.text {
            relayStrobeArr[relayIndex - 1] = frequency
        }
        else {
            relayStrobeArr[relayIndex - 1] = "0"
        }
        
        globalDefaults.setObject(self.txtRelayName.text, forKey: "relay\(relayIndex)Name")
        globalDefaults.setObject(relayIsButtonArr, forKey: "relayIsButton")
        globalDefaults.setObject(relayDimmerArr, forKey: "relayDimmer")
        globalDefaults.setObject(relayStrobeArr, forKey: "relayStrobe")
        
        let color = CGColorGetComponents(colorPreview.backgroundColor!.CGColor)
        var rgbArr:[String] = []
        rgbArr.append(String(Int(color[0])))
        rgbArr.append(String(Int(color[1])))
        rgbArr.append(String(Int(color[2])))
        globalDefaults.setObject(rgbArr, forKey: "relay\(relayIndex)RGB")
        
        globalDefaults.synchronize()
    }    
}