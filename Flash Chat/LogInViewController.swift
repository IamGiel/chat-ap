//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD


class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    // this clears the input field upon returning back from perform segue call function
    override func viewWillAppear(_ animated: Bool) {
        emailTextfield.text = "";
        passwordTextfield.text = "";
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        SVProgressHUD.show()
        //TODO: Log in the user
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password:  passwordTextfield.text!) { (user, error) in
            if error != nil {
                print("======== ERROR ==========")
                print("theres an error", error!)
            } else {
                print("======== SUCCESS ==========")
                print("signin! ", user!)
                // perform a segue takes the user to the homepage
                self.performSegue(withIdentifier: "goToChat", sender: self)
                SVProgressHUD.dismiss()
            }
        }
        
        
        
    }
    


    
}  
