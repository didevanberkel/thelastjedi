//
//  NetworkManager.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation
import Alamofire

enum serverResponse {
    case error;
    case httpError;
    case success;
}

class NetworkManager: NSObject {
    
    static let shared = NetworkManager() // shared instance
    
    func downloadSWData(type: SWListType, completion: @escaping CompletionBlock) {
        
        var listUrl: String = URL_PEOPLE
        switch type {
        case .SWPeople:
            listUrl = URL_PEOPLE
            break
        case .SWPlanet:
            listUrl = URL_PLANET
            break
        case .SWStarship:
            listUrl = URL_STARSHIP
            break
        }
        let url = URL(string: "\(URL_BASE)\(listUrl)")
        
        Alamofire.request(url!, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { response in
            switch response.result {
            case .success(let results):
                completion(.success, results as? NSObject)
                break
            case .failure:
                completion(.error, nil)
                break
                
            }
        }
    }
    
    func downloadSWImage(completion: @escaping CompletionBlock) {
        let url = URL(string: "\(URL_IMAGE)")
        
        Alamofire.request(url!, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { response in
            switch response.result {
            case .success(let results):
                completion(.success, results as? NSObject)
                break
            case .failure:
                completion(.error, nil)
                break
                
            }
        }
    }
    
}
