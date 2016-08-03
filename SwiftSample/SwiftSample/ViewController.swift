//
//  ViewController.swift
//  SwiftSample
//
//  Created by kelly on 2016. 8. 3..
//  Copyright © 2016년 campmobile. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*Alamofire.request(.GET, "http://naver.com", parameters: ["parameter1":"nothing"])
            .responseJSON{
            response in
                print(response)
        }*/
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .validate()
            .responseData { response in
                print(response.request)
                print(response.response)
                print(response.result)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

