//
//  SWAboutMeViewController.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit
import SafariServices

class SWAboutMeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var linkedInButton: UIButton!
    @IBOutlet weak var aboutMeImage: UIImageView!
    
    var aboutMe: SWAboutMe?
    var linkedInURL: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Get static data from the SWABoutMe helper class.
        aboutMe = SWAboutMeHelper.getAboutMeData()
        if aboutMe != nil {
            nameLabel.text = aboutMe!.name
            ageLabel.text = aboutMe!.age
            workLabel.text = aboutMe!.workTitle
            linkedInURL = aboutMe!.linkedIn
            
            aboutMeImage.loadImageAsync(with: aboutMe!.img)
        }
        
        // Set rounded corners image.
        aboutMeImage.roundEdges(cornerRadius: 8.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func linkedInButtonPressed(_ sender: Any) {
        // Navigate to linkedIn url.
        if let url = URL(string: linkedInURL) {
            let svc = SFSafariViewController(url: url)
            svc.preferredBarTintColor = UIColor.black
            self.present(svc, animated: true, completion: nil)
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
