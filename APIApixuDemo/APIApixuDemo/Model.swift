//
//  Model.swift
//  APIApixuDemo
//
//  Created by Đinh Văn Trình on 6/26/19.
//  Copyright © 2019 Wes.vn. All rights reserved.
//

import UIKit

struct Weather : Codable {
    var location: Location
    var current: Current
    struct Location : Codable {
        var name: String
//        var region: String
        var country: String
//       var lat: Float
//       var lon: Float
//       var tz_id: String
//        var localtime_epoch: Int
        var localtime: String
    }
    struct Current : Codable {
        var last_updated_epoch: Int
        var last_updated: String
        var condition: Condition
        struct Condition : Codable {
            var text: String
            var icon: String
            var code: Int
        }
    }
}

