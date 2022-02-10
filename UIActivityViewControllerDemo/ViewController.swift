//
//  ViewController.swift
//  UIActivityViewControllerDemo
//
//  Created by 竣亦 on 2022/2/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var blogLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Share(_ sender: UIButton) {
        let activityVC = UIActivityViewController(activityItems: [image!,image!, nameLabel.text!, blogLabel.text!], applicationActivities: nil)
        
        activityVC.completionWithItemsHandler = {(activityType: UIActivity.ActivityType?, completed: Bool, returnedItems: [Any]?, activityError: Error?) in
            if activityError != nil {
                self.showAlert(title: "Fail", message: "Error: \(activityError!.localizedDescription)")
                return
            }
            
            self.showAlert(title: "Success", message: "Share \(self.nameLabel.text!)'s information. ")
        }
        
        present(activityVC, animated: true, completion: nil)
    
    }
    
    func showAlert(title: String, message: String){
        
        
        
    }
    
}

