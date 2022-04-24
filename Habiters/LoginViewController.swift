//
//  LoginViewController.swift
//  Habiters
//
//  Created by Brian Velecela on 4/22/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var ImageBackground: UIImageView!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //This is loggin to the app
    @IBAction func OnSignIn(_ sender: Any) {
        //creating variables for password and username
        let username = usernameField.text!
        let password = passwordField.text!
        
        
        PFUser.logInWithUsername(inBackground: username, password: password){( user, error) in
            if user != nil{
                self.performSegue(withIdentifier: "HomeScreen", sender: nil)
            }else{
                print("Error: \(error?.localizedDescription)")
            }
        } 
    }
    
    
    //This is when user signs up for the first time
    @IBAction func OnSignUp(_ sender: Any) {

        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        //if both fields are filled in, then it will segue to the next page
        user.signUpInBackground { (success, error) in
            if success{
                self.performSegue(withIdentifier: "HomeScreen", sender: nil)
            }else{
                print ("Error: \(error?.localizedDescription)")
            }
        }
        
        
    }
    

}
