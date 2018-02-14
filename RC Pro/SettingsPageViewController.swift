//
//  SettingsPageViewController.swift
//  RC Pro
//
//  Created by Su Yan on 12/2/15.
//  Copyright (c) 2015 RideController LLC. All rights reserved.
//

import Foundation
import UIKit

class SettingsPageViewController: UIViewController {
    
    let globalDefaults = NSUserDefaults(suiteName: "group.com.RideController.RC-Pro")!
    
    var buttonPressed = -1;
    
    @IBOutlet weak var controlCenterSegment: UISegmentedControl!
    @IBOutlet weak var settingsMenuSegment: UISegmentedControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var startIsViewable: UISwitch!
    
    @IBOutlet weak var txtPasscode: UITextField!
    @IBOutlet weak var txtControlCenterName: UITextField!
    
    @IBOutlet weak var labelControlCenterName: UILabel!
    
    @IBOutlet weak var btnRelaySettings1: UIButton!
    @IBOutlet weak var btnRelaySettings2: UIButton!
    @IBOutlet weak var btnRelaySettings3: UIButton!
    @IBOutlet weak var btnRelaySettings4: UIButton!
    @IBOutlet weak var btnRelaySettings5: UIButton!
    @IBOutlet weak var btnRelaySettings6: UIButton!
    @IBOutlet weak var btnRelaySettings7: UIButton!
    @IBOutlet weak var btnRelaySettings8: UIButton!
    @IBOutlet weak var btnRelaySettings9: UIButton!
    @IBOutlet weak var btnRelaySettings10: UIButton!
    @IBOutlet weak var btnRelaySettings11: UIButton!
    @IBOutlet weak var btnRelaySettings12: UIButton!
    @IBOutlet weak var btnRelaySettings13: UIButton!
    @IBOutlet weak var btnRelaySettings14: UIButton!
    @IBOutlet weak var btnRelaySettings15: UIButton!
    @IBOutlet weak var btnRelaySettings16: UIButton!
    @IBOutlet weak var btnRelaySettings17: UIButton!
    @IBOutlet weak var btnRelaySettings18: UIButton!
    @IBOutlet weak var btnRelaySettings19: UIButton!
    @IBOutlet weak var btnRelaySettings20: UIButton!
    @IBOutlet weak var btnRelaySettings21: UIButton!
    @IBOutlet weak var btnRelaySettings22: UIButton!
    @IBOutlet weak var btnRelaySettings23: UIButton!
    @IBOutlet weak var btnRelaySettings24: UIButton!
    @IBOutlet weak var btnRelaySettings25: UIButton!
    @IBOutlet weak var btnRelaySettings26: UIButton!
    @IBOutlet weak var btnRelaySettings27: UIButton!
    @IBOutlet weak var btnRelaySettings28: UIButton!
    @IBOutlet weak var btnRelaySettings29: UIButton!
    @IBOutlet weak var btnRelaySettings30: UIButton!
    @IBOutlet weak var btnRelaySettings31: UIButton!
    @IBOutlet weak var btnRelaySettings32: UIButton!
    @IBOutlet weak var btnRelaySettings33: UIButton!
    @IBOutlet weak var btnRelaySettings34: UIButton!
    @IBOutlet weak var btnRelaySettings35: UIButton!
    @IBOutlet weak var btnRelaySettings36: UIButton!
    @IBOutlet weak var btnRelaySettings37: UIButton!
    @IBOutlet weak var btnRelaySettings38: UIButton!
    @IBOutlet weak var btnRelaySettings39: UIButton!
    @IBOutlet weak var btnRelaySettings40: UIButton!
    @IBOutlet weak var btnRelaySettings41: UIButton!
    @IBOutlet weak var btnRelaySettings42: UIButton!
    @IBOutlet weak var btnRelaySettings43: UIButton!
    @IBOutlet weak var btnRelaySettings44: UIButton!
    @IBOutlet weak var btnRelaySettings45: UIButton!
    @IBOutlet weak var btnRelaySettings46: UIButton!
    @IBOutlet weak var btnRelaySettings47: UIButton!
    @IBOutlet weak var btnRelaySettings48: UIButton!
    @IBOutlet weak var btnRelaySettings49: UIButton!
    @IBOutlet weak var btnRelaySettings50: UIButton!
    @IBOutlet weak var btnRelaySettings51: UIButton!
    @IBOutlet weak var btnRelaySettings52: UIButton!
    @IBOutlet weak var btnRelaySettings53: UIButton!
    @IBOutlet weak var btnRelaySettings54: UIButton!
    @IBOutlet weak var btnRelaySettings55: UIButton!
    @IBOutlet weak var btnRelaySettings56: UIButton!
    @IBOutlet weak var btnRelaySettings57: UIButton!
    @IBOutlet weak var btnRelaySettings58: UIButton!
    @IBOutlet weak var btnRelaySettings59: UIButton!
    @IBOutlet weak var btnRelaySettings60: UIButton!
    @IBOutlet weak var btnRelaySettings61: UIButton!
    @IBOutlet weak var btnRelaySettings62: UIButton!
    @IBOutlet weak var btnRelaySettings63: UIButton!
    @IBOutlet weak var btnRelaySettings64: UIButton!
    
    
    
    @IBAction func unwindToSettings(segue: UIStoryboardSegue) {
        self.loadUserDefaults()
    }
    
    @IBAction func moveFieldUpwards(sender: UITextField) {
        let rect = sender.convertRect(sender.bounds, toView: self.scrollView)
        
        print("sequence = \(rect.origin.x)")
        print("sequence = \(rect.origin.y)")
        
        if rect.origin.y > 235 {
            self.scrollView.setContentOffset(CGPointMake(0, rect.origin.y - 100), animated: true)
        }
        else {
            // self.scrollView.contentOffset = CGPointMake(0, 0);
        }
    }
    
    @IBAction func textFieldDone(sender: UITextField) {
        self.scrollView.setContentOffset(CGPointMake(0, 0), animated: true)
    }

    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
        self.performSegueWithIdentifier("unwindToMain", sender: self)
    }
    
    @IBAction func pushToRelaySetting(sender: UIButton) {
        print("Loading Relay \(sender.tag) Settings")
        self.buttonPressed = sender.tag
        self.performSegueWithIdentifier("pushToRelaySettings", sender: self)
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let relaySettingsPage = segue.destinationViewController as? RelaySettingsViewController {
            relaySettingsPage.relayIndex = buttonPressed
        }
        if segue.destinationViewController is MainPageViewController {
            if self.settingsMenuSegment.selectedSegmentIndex == 0 {
                self.saveUserDefaults()
                print("Settings saved")
            }
            else {
                print("Settings cancelled")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "carbon-fiber-diagonal.png")!)
        self.navigationController?.navigationBarHidden = true
        self.view.tintColor = UIColor.blackColor()
        self.loadUserDefaults()
    }
    
    override func viewDidLayoutSubviews() {
        //self.scrollView.contentSize = CGSizeMake(278, 645)
        self.scrollView.contentSize = CGSizeMake(278, 760)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    private func loadUserDefaults() {
        self.controlCenterSegment.hidden = true
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        
        self.txtPasscode.text = globalDefaults.stringForKey("passcode")
        
        self.startIsViewable.setOn(globalDefaults.boolForKey("startIsViewable"), animated: true)
        
        self.btnRelaySettings1.setTitle(globalDefaults.stringForKey("relay1Name"), forState: UIControlState.Normal)
        self.btnRelaySettings2.setTitle(globalDefaults.stringForKey("relay2Name"), forState: UIControlState.Normal)
        self.btnRelaySettings3.setTitle(globalDefaults.stringForKey("relay3Name"), forState: UIControlState.Normal)
        self.btnRelaySettings4.setTitle(globalDefaults.stringForKey("relay4Name"), forState: UIControlState.Normal)
        self.btnRelaySettings5.setTitle(globalDefaults.stringForKey("relay5Name"), forState: UIControlState.Normal)
        self.btnRelaySettings6.setTitle(globalDefaults.stringForKey("relay6Name"), forState: UIControlState.Normal)
        self.btnRelaySettings7.setTitle(globalDefaults.stringForKey("relay7Name"), forState: UIControlState.Normal)
        self.btnRelaySettings8.setTitle(globalDefaults.stringForKey("relay8Name"), forState: UIControlState.Normal)

        self.btnRelaySettings9.setTitle(globalDefaults.stringForKey("relay9Name"), forState: UIControlState.Normal)
        self.btnRelaySettings10.setTitle(globalDefaults.stringForKey("relay10Name"), forState: UIControlState.Normal)
        self.btnRelaySettings11.setTitle(globalDefaults.stringForKey("relay11Name"), forState: UIControlState.Normal)
        self.btnRelaySettings12.setTitle(globalDefaults.stringForKey("relay12Name"), forState: UIControlState.Normal)
        self.btnRelaySettings13.setTitle(globalDefaults.stringForKey("relay13Name"), forState: UIControlState.Normal)
        self.btnRelaySettings14.setTitle(globalDefaults.stringForKey("relay14Name"), forState: UIControlState.Normal)
        self.btnRelaySettings15.setTitle(globalDefaults.stringForKey("relay15Name"), forState: UIControlState.Normal)
        self.btnRelaySettings16.setTitle(globalDefaults.stringForKey("relay16Name"), forState: UIControlState.Normal)
        
        self.btnRelaySettings17.setTitle(globalDefaults.stringForKey("relay17Name"), forState: UIControlState.Normal)
        self.btnRelaySettings18.setTitle(globalDefaults.stringForKey("relay18Name"), forState: UIControlState.Normal)
        self.btnRelaySettings19.setTitle(globalDefaults.stringForKey("relay19Name"), forState: UIControlState.Normal)
        self.btnRelaySettings20.setTitle(globalDefaults.stringForKey("relay20Name"), forState: UIControlState.Normal)
        self.btnRelaySettings21.setTitle(globalDefaults.stringForKey("relay21Name"), forState: UIControlState.Normal)
        self.btnRelaySettings22.setTitle(globalDefaults.stringForKey("relay22Name"), forState: UIControlState.Normal)
        self.btnRelaySettings23.setTitle(globalDefaults.stringForKey("relay23Name"), forState: UIControlState.Normal)
        self.btnRelaySettings24.setTitle(globalDefaults.stringForKey("relay24Name"), forState: UIControlState.Normal)
        
        self.btnRelaySettings25.setTitle(globalDefaults.stringForKey("relay25Name"), forState: UIControlState.Normal)
        self.btnRelaySettings26.setTitle(globalDefaults.stringForKey("relay26Name"), forState: UIControlState.Normal)
        self.btnRelaySettings27.setTitle(globalDefaults.stringForKey("relay27Name"), forState: UIControlState.Normal)
        self.btnRelaySettings28.setTitle(globalDefaults.stringForKey("relay28Name"), forState: UIControlState.Normal)
        self.btnRelaySettings29.setTitle(globalDefaults.stringForKey("relay29Name"), forState: UIControlState.Normal)
        self.btnRelaySettings30.setTitle(globalDefaults.stringForKey("relay30Name"), forState: UIControlState.Normal)
        self.btnRelaySettings31.setTitle(globalDefaults.stringForKey("relay31Name"), forState: UIControlState.Normal)
        self.btnRelaySettings32.setTitle(globalDefaults.stringForKey("relay32Name"), forState: UIControlState.Normal)
        
        self.btnRelaySettings33.setTitle(globalDefaults.stringForKey("relay33Name"), forState: UIControlState.Normal)
        self.btnRelaySettings34.setTitle(globalDefaults.stringForKey("relay34Name"), forState: UIControlState.Normal)
        self.btnRelaySettings35.setTitle(globalDefaults.stringForKey("relay35Name"), forState: UIControlState.Normal)
        self.btnRelaySettings36.setTitle(globalDefaults.stringForKey("relay36Name"), forState: UIControlState.Normal)
        self.btnRelaySettings37.setTitle(globalDefaults.stringForKey("relay37Name"), forState: UIControlState.Normal)
        self.btnRelaySettings38.setTitle(globalDefaults.stringForKey("relay38Name"), forState: UIControlState.Normal)
        self.btnRelaySettings39.setTitle(globalDefaults.stringForKey("relay39Name"), forState: UIControlState.Normal)
        self.btnRelaySettings40.setTitle(globalDefaults.stringForKey("relay40Name"), forState: UIControlState.Normal)
        
        self.btnRelaySettings41.setTitle(globalDefaults.stringForKey("relay41Name"), forState: UIControlState.Normal)
        self.btnRelaySettings42.setTitle(globalDefaults.stringForKey("relay42Name"), forState: UIControlState.Normal)
        self.btnRelaySettings43.setTitle(globalDefaults.stringForKey("relay43Name"), forState: UIControlState.Normal)
        self.btnRelaySettings44.setTitle(globalDefaults.stringForKey("relay44Name"), forState: UIControlState.Normal)
        self.btnRelaySettings45.setTitle(globalDefaults.stringForKey("relay45Name"), forState: UIControlState.Normal)
        self.btnRelaySettings46.setTitle(globalDefaults.stringForKey("relay46Name"), forState: UIControlState.Normal)
        self.btnRelaySettings47.setTitle(globalDefaults.stringForKey("relay47Name"), forState: UIControlState.Normal)
        self.btnRelaySettings48.setTitle(globalDefaults.stringForKey("relay48Name"), forState: UIControlState.Normal)
        
        self.btnRelaySettings49.setTitle(globalDefaults.stringForKey("relay49Name"), forState: UIControlState.Normal)
        self.btnRelaySettings50.setTitle(globalDefaults.stringForKey("relay50Name"), forState: UIControlState.Normal)
        self.btnRelaySettings51.setTitle(globalDefaults.stringForKey("relay51Name"), forState: UIControlState.Normal)
        self.btnRelaySettings52.setTitle(globalDefaults.stringForKey("relay52Name"), forState: UIControlState.Normal)
        self.btnRelaySettings53.setTitle(globalDefaults.stringForKey("relay53Name"), forState: UIControlState.Normal)
        self.btnRelaySettings54.setTitle(globalDefaults.stringForKey("relay54Name"), forState: UIControlState.Normal)
        self.btnRelaySettings55.setTitle(globalDefaults.stringForKey("relay55Name"), forState: UIControlState.Normal)
        self.btnRelaySettings56.setTitle(globalDefaults.stringForKey("relay56Name"), forState: UIControlState.Normal)
        
        self.btnRelaySettings57.setTitle(globalDefaults.stringForKey("relay57Name"), forState: UIControlState.Normal)
        self.btnRelaySettings58.setTitle(globalDefaults.stringForKey("relay58Name"), forState: UIControlState.Normal)
        self.btnRelaySettings59.setTitle(globalDefaults.stringForKey("relay59Name"), forState: UIControlState.Normal)
        self.btnRelaySettings60.setTitle(globalDefaults.stringForKey("relay60Name"), forState: UIControlState.Normal)
        self.btnRelaySettings61.setTitle(globalDefaults.stringForKey("relay61Name"), forState: UIControlState.Normal)
        self.btnRelaySettings62.setTitle(globalDefaults.stringForKey("relay62Name"), forState: UIControlState.Normal)
        self.btnRelaySettings63.setTitle(globalDefaults.stringForKey("relay63Name"), forState: UIControlState.Normal)
        self.btnRelaySettings64.setTitle(globalDefaults.stringForKey("relay64Name"), forState: UIControlState.Normal)
        self.hidebtnRelaySetting()
        self.renderControlFields(controlCenterType)

    }
    
    private func renderControlFields(controlCenterTypeID: Int) {
        if controlCenterTypeID > 1 {
            btnRelaySettings9.hidden = false;
            btnRelaySettings10.hidden = false;
            btnRelaySettings11.hidden = false;
            btnRelaySettings12.hidden = false;
            btnRelaySettings13.hidden = false;
            btnRelaySettings14.hidden = false;
            btnRelaySettings15.hidden = false;
            btnRelaySettings16.hidden = false;
        }
        if controlCenterTypeID > 2 {
            btnRelaySettings17.hidden = false;
            btnRelaySettings18.hidden = false;
            btnRelaySettings19.hidden = false;
            btnRelaySettings20.hidden = false;
            btnRelaySettings21.hidden = false;
            btnRelaySettings22.hidden = false;
            btnRelaySettings23.hidden = false;
            btnRelaySettings24.hidden = false;
        }
        if controlCenterTypeID > 3 {
            btnRelaySettings25.hidden = false;
            btnRelaySettings26.hidden = false;
            btnRelaySettings27.hidden = false;
            btnRelaySettings28.hidden = false;
            btnRelaySettings29.hidden = false;
            btnRelaySettings30.hidden = false;
            btnRelaySettings31.hidden = false;
            btnRelaySettings32.hidden = false;
        }
        if controlCenterTypeID > 4 {
            btnRelaySettings33.hidden = false;
            btnRelaySettings34.hidden = false;
            btnRelaySettings35.hidden = false;
            btnRelaySettings36.hidden = false;
            btnRelaySettings37.hidden = false;
            btnRelaySettings38.hidden = false;
            btnRelaySettings39.hidden = false;
            btnRelaySettings40.hidden = false;
        }
        if controlCenterTypeID > 5 {
            btnRelaySettings41.hidden = false;
            btnRelaySettings42.hidden = false;
            btnRelaySettings43.hidden = false;
            btnRelaySettings44.hidden = false;
            btnRelaySettings45.hidden = false;
            btnRelaySettings46.hidden = false;
            btnRelaySettings47.hidden = false;
            btnRelaySettings48.hidden = false;
        }
        if controlCenterTypeID > 6 {
            btnRelaySettings49.hidden = false;
            btnRelaySettings50.hidden = false;
            btnRelaySettings51.hidden = false;
            btnRelaySettings52.hidden = false;
            btnRelaySettings53.hidden = false;
            btnRelaySettings54.hidden = false; 
            btnRelaySettings55.hidden = false;
            btnRelaySettings56.hidden = false;
        }
        if controlCenterTypeID > 7 {
            btnRelaySettings57.hidden = false;
            btnRelaySettings58.hidden = false;
            btnRelaySettings59.hidden = false;
            btnRelaySettings60.hidden = false;
            btnRelaySettings61.hidden = false;
            btnRelaySettings62.hidden = false;
            btnRelaySettings63.hidden = false;
            btnRelaySettings64.hidden = false;
            
        }
    }
    
    private func hidebtnRelaySetting(){
        btnRelaySettings9.hidden = true;
        btnRelaySettings10.hidden = true; 
        btnRelaySettings11.hidden = true;
        btnRelaySettings12.hidden = true;
        btnRelaySettings13.hidden = true;
        btnRelaySettings14.hidden = true;
        btnRelaySettings15.hidden = true;
        btnRelaySettings16.hidden = true;
        btnRelaySettings17.hidden = true;
        btnRelaySettings18.hidden = true;
        btnRelaySettings19.hidden = true;
        btnRelaySettings20.hidden = true;
        btnRelaySettings21.hidden = true;
        btnRelaySettings22.hidden = true;
        btnRelaySettings23.hidden = true;
        btnRelaySettings24.hidden = true;
        btnRelaySettings25.hidden = true;
        btnRelaySettings26.hidden = true;
        btnRelaySettings27.hidden = true;
        btnRelaySettings28.hidden = true;
        btnRelaySettings29.hidden = true;
        btnRelaySettings30.hidden = true;
        btnRelaySettings31.hidden = true;
        btnRelaySettings32.hidden = true;
        btnRelaySettings33.hidden = true;
        btnRelaySettings34.hidden = true;
        btnRelaySettings35.hidden = true;
        btnRelaySettings36.hidden = true;
        btnRelaySettings37.hidden = true;
        btnRelaySettings38.hidden = true;
        btnRelaySettings39.hidden = true;
        btnRelaySettings40.hidden = true;
        btnRelaySettings41.hidden = true;
        btnRelaySettings42.hidden = true;
        btnRelaySettings43.hidden = true;
        btnRelaySettings44.hidden = true;
        btnRelaySettings45.hidden = true;
        btnRelaySettings46.hidden = true;
        btnRelaySettings47.hidden = true;
        btnRelaySettings48.hidden = true;
        btnRelaySettings49.hidden = true;
        btnRelaySettings50.hidden = true;
        btnRelaySettings51.hidden = true;
        btnRelaySettings52.hidden = true;
        btnRelaySettings53.hidden = true;
        btnRelaySettings54.hidden = true;
        btnRelaySettings55.hidden = true;
        btnRelaySettings56.hidden = true;
        btnRelaySettings57.hidden = true;
        btnRelaySettings58.hidden = true;
        btnRelaySettings59.hidden = true;
        btnRelaySettings60.hidden = true;
        btnRelaySettings61.hidden = true;
        btnRelaySettings62.hidden = true;
        btnRelaySettings63.hidden = true;
        btnRelaySettings64.hidden = true;
    }
    
    private func saveUserDefaults() {
        print("--setting page--")
        let controlCenterType = globalDefaults.integerForKey("controlCenterType")
        globalDefaults.setObject(self.txtPasscode.text, forKey: "passcode")
        globalDefaults.setBool(self.startIsViewable.on, forKey: "startIsViewable")
        print(controlCenterType)
        self.controlCenterSegment.selectedSegmentIndex=controlCenterType
        print(self.controlCenterSegment.selectedSegmentIndex)
        //globalDefaults.setInteger(self.controlCenterSegment.selectedSegmentIndex, forKey: "controlCenterType")
        switch controlCenterType {
        case 1:
            globalDefaults.setInteger(1, forKey: "controlCenterType")
        case 2:
            globalDefaults.setInteger(2, forKey: "controlCenterType")
        case 3:
            globalDefaults.setInteger(3, forKey: "controlCenterType")
        case 4:
            globalDefaults.setInteger(4, forKey: "controlCenterType")
        case 5:
            globalDefaults.setInteger(5, forKey: "controlCenterType")
        case 6:
            globalDefaults.setInteger(6, forKey: "controlCenterType")
        case 7:
            globalDefaults.setInteger(7, forKey: "controlCenterType")
        case 8:
            globalDefaults.setInteger(8, forKey: "controlCenterType")
        default:break
        }
        globalDefaults.synchronize()
    }
}