//
//  addListViewController.swift
//  Habiters
//
//  Created by Brian Velecela on 4/30/22.
//

import UIKit
import Parse

class addListViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        //since we don't have object created for adding idea, we
        //will use PFObject()
        let idea = PFObject(className: "Idea")
        //we created columns of descriptions
        idea["description"] = textField.text!
        idea["author"] = PFUser.current()!
        
        //we will save this inforamtion in the background
        idea.saveInBackground{(success, error) in
            if success{
                //once we click on the button, we want to dimiss the current view controller
                self.dismiss(animated:true, completion: nil)
                print ("Saved")
            }else{
                print("Error!")
            }
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
