//
//  ViewController.swift
//  Alien View 03
//
//  Created by D7703_17 on 2018. 4. 3..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      var counter = 1
      var direction = true
      
      @IBOutlet weak var alienlable: UILabel!
      @IBOutlet weak var alienimage: UIImageView!
      override func viewDidLoad() {
            super.viewDidLoad()
            alienimage.image = UIImage(named: "frame1.png")
      }

      @IBAction func Update(_ sender: Any) {
            if counter == 5 {
                  direction = false
            } else if counter == 1{
                  direction = true
            }
            
            if direction == true {
                  counter = counter + 1
            } else if direction == false {
                  counter = counter - 1
            }
            alienimage.image = UIImage(named: "frame\(counter).png")
            alienlable.text = "\(counter)"
      }
}

