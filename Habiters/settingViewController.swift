//
//  settingViewController.swift
//  Habiters
//
//  Created by Brian Velecela on 5/8/22.
//

import UIKit

class settingViewController: UIViewController {
    
    @IBOutlet weak var Dark_light: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
    }
    
    //when it runs, this will appear when excuting the code
    override func viewWillAppear(_ animated: Bool) {
        //we are reading data by setting default.bool(type), and the key reference to
        Dark_light.isOn = defaults.bool(forKey: "darkMode")
        if Dark_light.isOn{
            overrideUserInterfaceStyle = .dark
        }
    }
    
    
    @IBAction func switchMode(_ sender: Any) {
        //we are setting the value to bool to see if switch isON, with a key
        defaults.set(Dark_light.isOn, forKey:"darkMode")
        
        //if so, it will be dark, else it will be light
        //retrieving data back
        if defaults.bool(forKey:"darkMode") == true{
            overrideUserInterfaceStyle = .dark
        }else{
            overrideUserInterfaceStyle = .light
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
