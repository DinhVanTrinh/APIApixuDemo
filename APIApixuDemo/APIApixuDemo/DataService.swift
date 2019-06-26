//
//  DataService.swift
//  APIApixuDemo
//
//  Created by Đinh Văn Trình on 6/26/19.
//  Copyright © 2019 Wes.vn. All rights reserved.
//

import UIKit

class DataService {
    static var shared: DataService = DataService()
    
    func getInfoUser(completedHandle: @escaping(Weather) -> Void) {
        
        guard let url = URL(string: "https://api.apixu.com/v1/current.json?key=ec8419e89bec4475a3e13013192606&q=Paris") else { return }
        
        let urlRequest = URLRequest(url: url)
        
        let downloadTask = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            do {
                let recivedData = try JSONDecoder().decode(Weather.self, from: data!)
               
                //print(categoryMusicData)
                DispatchQueue.main.async {
                    completedHandle(recivedData)
                    print(recivedData)
                }
            } catch {
                print(error)
            }
        })
        
        downloadTask.resume()

    }
    
}


