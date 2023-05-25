//
//  DogFact_API_Helper.swift
//  API_Assignment
//
//  Created by Jobin K Jose on 2023-05-24.
//

import Foundation
class AnimeFactAPIHelper {
    private static let urlString = "https://vpic.nhtsa.dot.gov/api/vehicles/getallmakes?format=json"
    
    public static func fetch() async -> Any {
        let meowFactsUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: meowFactsUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
