//
//  homeScreenViewController.swift
//  Habiters
//
//  Created by Brian Velecela on 4/23/22.
//

import UIKit
import Parse

class homeScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func onLogOut(_ sender: Any) {
        //doing the logout action
        PFUser.logOut()     //clear the parse ache
        
        //switching back to the login screen
        //grabbing the storyboard(launching the blue print) to extension
        let main = UIStoryboard(name: "Main", bundle: nil)
        //extension to the loginViewController
        let loginViewController = main.instantiateViewController(withIdentifier: "LogIn")
        //getting access to the window?
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else {return}
        
        delegate.window?.rootViewController = loginViewController

        
        
        
        
    }
     
    

}
