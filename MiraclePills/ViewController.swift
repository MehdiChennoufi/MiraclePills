//
//  ViewController.swift
//  MiraclePills
//
//  Created by Mehdi Chennoufi on 06/08/2016.
//  Copyright © 2016 Mehdi Chennoufi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var phoneTxtField: UITextField!
    
    @IBOutlet weak var succesImg: UIImageView!
    
    let states = ["Paris", "Marseille", "Tours", "Bordeaux", "Autres"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        hideFields()
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        showFields()
    }
    
    //Function when Buy Button is clic
    @IBAction func buyBtn(_ sender: AnyObject) {
        
        for eachView in view.subviews {
            eachView.isHidden = true
            succesImg.isHidden = false
        }
        
    }
    
    
    //Functions to Hide/Show the labels
    func hideFields() {
        emailLbl.isHidden = true
        emailTxtField.isHidden = true
        phoneLbl.isHidden = true
        phoneTxtField.isHidden = true
    }
    func showFields() {
        emailLbl.isHidden = false
        emailTxtField.isHidden = false
        phoneLbl.isHidden = false
        phoneTxtField.isHidden = false
    }

}

