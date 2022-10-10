//
//  ViewController.swift
//  Swift_Lesson_5
//
//  Created by Vitalii Navrotskyi on 10.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let queue = DispatchQueue(label: "com.multithreading.test ")
    // serial queue
    let serialQueue = DispatchQueue(label: "com.gcd_test.serialqueue")
    // concurrent queue
    let concurrentQueue = DispatchQueue(label: "com.concurrent.queue", attributes: .concurrent)
    
    func iterations() {
        for i in 1...3 {
            print("iteration = \(i)")
            sleep(1)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add queue
//        queue.async {
//            // heavy duty simulation
//            self.iterations()
//        }
        
        concurrentQueue.async {
            self.iterations()
        }
        concurrentQueue.async {
            self.iterations()
        }
        
        print("iterations finished ")
    }
    


}

