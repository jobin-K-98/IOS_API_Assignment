//
//  VehicleParts-API_Helper.swift
//  API_Assignment
//
//  Created by Jobin K Jose on 2023-05-24.
//

import Foundation
class vehiclePartsFactAPIHelper {
    private static let urlString = "https://vpic.nhtsa.dot.gov/api/vehicles/GetParts?type=565&fromDate=1/1/2015&toDate=5/5/2015&format=json"
    
    public static func fetch() async -> Any {
        let meowFactsUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: meowFactsUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
