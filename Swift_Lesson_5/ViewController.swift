//
//  ViewController.swift
//  Swift_Lesson_5
//
//  Created by Vitalii Navrotskyi on 10.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let queue = DispatchQueue(label: "com.multithreading.test ")
        // add queue
        queue.async {
            // heavy duty simulation
            for i in 1...3 {
                print("iteration = \(i)")
                sleep(1)
            }
            
        }
        
        
        print("iterations finished ")
    }


}

