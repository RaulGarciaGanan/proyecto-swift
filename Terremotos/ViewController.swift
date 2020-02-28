//
//  ViewController.swift
//  Terremotos
//
//  Created by  on 17/01/2020.
//  Copyright © 2020 raul.garcia. All rights reserved.
//

import UIKit

import GeoJSON
import JSON
import Alamofire
import Alamofire_SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Alamofire.request("http://geojson.org/get", method: .get).validate().responseJSON {response in
            switch response.result{
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
            
        }
       
    }
    
    
    

}

 
