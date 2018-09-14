//
//  SWListDetailViewController.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit

class SWListDetailViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    
    var listType: SWListType = .SWPeople
    var people: SWPeople?
    var planet: SWPlanet?
    var starship: SWStarship?
    
    var peopleDetailView: SWPeopleDetailView!
    var planetDetailView: SWPlanetDetailView!
    var starshipDetailView: SWStarshipDetailView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        switch listType {
        case .SWPeople:
            peopleDetailView = SWPeopleDetailView.instanceFromNib() as! SWPeopleDetailView
            peopleDetailView.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(peopleDetailView)
            
            // Add constraints.
            peopleDetailView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
            peopleDetailView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
            peopleDetailView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
            peopleDetailView.topAnchor.constraint(equalTo: self.backButton.bottomAnchor, constant: 16.0).isActive = true
            
            if people != nil {
                peopleDetailView.setupView(people: people!)
            }
            
            break
        case .SWPlanet:
            planetDetailView = SWPlanetDetailView.instanceFromNib() as! SWPlanetDetailView
            planetDetailView.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(planetDetailView)
            
            // Add constraints.
            planetDetailView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
            planetDetailView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
            planetDetailView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
            planetDetailView.topAnchor.constraint(equalTo: self.backButton.bottomAnchor, constant: 16.0).isActive = true
            
            if planet != nil {
                planetDetailView.setupView(planet: planet!)
            }
            
            break
        case .SWStarship:
            starshipDetailView = SWStarshipDetailView.instanceFromNib() as! SWStarshipDetailView
            starshipDetailView.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(starshipDetailView)
            
            // Add constraints.
            starshipDetailView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
            starshipDetailView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
            starshipDetailView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
            starshipDetailView.topAnchor.constraint(equalTo: self.backButton.bottomAnchor, constant: 16.0).isActive = true
            
            if starship != nil {
                starshipDetailView.setupView(starship: starship!)
            }
            break
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
