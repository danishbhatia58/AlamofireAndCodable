//
//  ViewController.swift
//  APIandCodable
//
//  Created by Danish on 15/01/21.
//  Copyright © 2021 Danish. All rights reserved.
//

import UIKit

import Alamofire

let API_URL = "https://www.simplifiedcoding.net/demos/marvel/"

class ViewController: UIViewController {

    var heroes = [Hero]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        callAPI()
        // Do any additional setup after loading the view, typically from a nib.
    }


    func callAPI(){
    
        Alamofire.request(API_URL).responseJSON {
            
            response in
            
            let json = response.data
            
            do{
            
                let decoder = JSONDecoder()
                
                self.heroes = try decoder.decode([Hero].self, from: json!)
                
                for hero in self.heroes{
                    
                    print(hero.name!)
                }
                
            }catch let err{
                
                print(err)
            }
        }
        
    }
    
}




