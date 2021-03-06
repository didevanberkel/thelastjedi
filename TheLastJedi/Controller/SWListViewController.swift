//
//  SWListViewController.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit

class SWListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var listButtonView: SWListButtonView!
    var data: [String:Any] = [:]
    
    var people: [SWPeople] = [SWPeople]()
    var planet: [SWPlanet] = [SWPlanet]()
    var starship: [SWStarship] = [SWStarship]()
    
    var listType: SWListType = .SWPeople
    var loadingIndictorAdded: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        listButtonView.delegate = self
        
        // Register the tableview cells we're going to use.
        tableView.register(UINib(nibName: "SWPeopleCell", bundle: nil), forCellReuseIdentifier: "SWPeopleCell")
        tableView.register(UINib(nibName: "SWPlanetCell", bundle: nil), forCellReuseIdentifier: "SWPlanetCell")
        tableView.register(UINib(nibName: "SWStarshipCell", bundle: nil), forCellReuseIdentifier: "SWStarshipCell")
        
        getListData()
        setSelectedListButton()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !loadingIndictorAdded {
            LoadingIndicator.show()
            loadingIndictorAdded = true
        }
    }
    
    func getListData() {
        switch listType {
        case .SWPeople:
            NetworkManager.shared.downloadSWData(type: .SWPeople) { (result, dataObject) in
                if result == .success {
                    if let data = dataObject as? NSDictionary {
                        self.people = SWListHelper.getPeopleData(data: data)
                        self.tableView.reloadData()
                    }
                } else {
                    // Show error message.
                    self.alert(message: "alert_swcall_error_body".localized, title: "alert_swcall_error_title".localized)
                }
            }
            break
        case .SWPlanet:
            NetworkManager.shared.downloadSWData(type: .SWPlanet) { (result, dataObject) in
                if result == .success {
                    if let data = dataObject as? NSDictionary {
                        self.planet = SWListHelper.getPlanetData(data: data)
                        self.tableView.reloadData()
                    }
                } else {
                    // Show error message.
                    self.alert(message: "alert_swcall_error_body".localized, title: "alert_swcall_error_title".localized)
                }
            }
            break
        case .SWStarship:
            NetworkManager.shared.downloadSWData(type: .SWStarship) { (result, dataObject) in
                if result == .success {
                    if let data = dataObject as? NSDictionary {
                        self.starship = SWListHelper.getStarshipData(data: data)
                        self.tableView.reloadData()
                    }
                } else {
                    // Show error message.
                    self.alert(message: "alert_swcall_error_body".localized, title: "alert_swcall_error_title".localized)
                }
            }
            break
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if listType == .SWPeople {
            return 142
        }
        return 104
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch listType {
        case .SWPeople:
            return self.people.count
        case .SWPlanet:
            return self.planet.count
        case .SWStarship:
            return self.starship.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch listType {
        case .SWPeople:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SWPeopleCell", for: indexPath) as! SWPeopleCell
            cell.setupCell(person: people[indexPath.row])
            cell.peopleImage.loadImageAsync(with: people[indexPath.row].img)
            return cell
        case .SWPlanet:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SWPlanetCell", for: indexPath) as! SWPlanetCell
            cell.setupCell(planet: planet[indexPath.row])
            cell.planetImage.loadImageAsync(with: planet[indexPath.row].img)
            return cell
        case .SWStarship:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SWStarshipCell", for: indexPath) as! SWStarshipCell
            cell.setupCell(starship: starship[indexPath.row])
            cell.starshipImage.loadImageAsync(with: starship[indexPath.row].img)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = UIStoryboard.listDetail().instantiateViewController(withIdentifier: "SWListDetailViewController") as! SWListDetailViewController
        
        switch listType {
        case .SWPeople:
            vc.listType = .SWPeople
            vc.people = people[indexPath.row]
        case .SWPlanet:
            vc.listType = .SWPlanet
            vc.planet = planet[indexPath.row]
        case .SWStarship:
            vc.listType = .SWStarship
            vc.starship = starship[indexPath.row]
        }
        
        self.present(vc, animated: true, completion: nil)
    }
}

