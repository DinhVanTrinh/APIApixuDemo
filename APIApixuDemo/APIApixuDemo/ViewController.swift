//
//  ViewController.swift
//  APIApixuDemo
//
//  Created by Đinh Văn Trình on 6/26/19.
//  Copyright © 2019 Wes.vn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var lblLocalTime: UILabel!
    @IBOutlet weak var lblLastUpdate: UILabel!
    @IBOutlet weak var lblIcon: UILabel!
    
    var listWeather : Weather?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RequestData()
        
        // Do any additional setup after loading the view.
    }

    func RequestData() {
        DataService.shared.getInfoUser(completedHandle: { data in
            self.listWeather = data
            //dòng này lừa đấy
            self.Display()
        })
    }
    func Display() {
        lblName.text = listWeather?.location.name
        lblCountry.text = listWeather?.location.country
        lblLocalTime.text = listWeather?.location.localtime
        lblLastUpdate.text = listWeather?.current.last_updated
        lblIcon.text = listWeather?.current.condition.icon
    }


}

