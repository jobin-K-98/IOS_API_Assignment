//
//  ViewController.swift
//  API_Assignment
//
//  Created by Jobin K Jose on 2023-05-24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func VehiclePart(_ sender: Any) {
        Task {
                    print("Data on vehicle parts: ")
                    print(await vehiclePartsFactAPIHelper.fetch())
                    }
    }
    @IBAction func FruityVice(_ sender: Any) {
        Task {
                    print("Data on fruit: ")
                    print(await FruitAPIHelper.fetch())
                    }
    }
    
    @IBAction func AnimeFact(_ sender: Any) {
        Task {
                    print("Data on anime: ")
                    print(await AnimeFactAPIHelper.fetch())
                    }
    }
}

