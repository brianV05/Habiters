//
//  homeScreenViewController.swift
//  Habiters
//
//  Created by Brian Velecela on 4/23/22.
//

import UIKit
import Parse

class homeScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Creating a property of empty array
    var ideas = [PFObject]()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //this will pull in the idea you just created
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Idea")
        query.limit = 20  //getting the last 20 limits
        
        //once we configure the object, we will fetch the data
        query.findObjectsInBackground{ (idea, error) in
            //if it was able to find some stuff then..
            if idea != nil{
                self.ideas = idea!
                self.tableView.reloadData()
            }
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ideas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ideasTableViewCell") as! ideasTableViewCell
        //to create a particaler idea
        let idea =  ideas[indexPath.row]
        
        cell.ideaLabel.text = idea["description"] as? String
        
        return cell
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
