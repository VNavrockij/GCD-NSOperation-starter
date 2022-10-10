//
//  ViewController.swift
//  Swift_Lesson_5
//
//  Created by Vitalii Navrotskyi on 10.10.2022.
//

import UIKit
/* NSOperation, NSOperationQueue */
class LongRunOperation: Operation {
    
    let identifier: String
    
    init(identifier: String) {
        self.identifier = identifier
    }
    
    override func main() {
        if isCancelled {
            return
        }
        iteration()
    }
    
    func iteration() {
            for count in 1...3 {
                print("\(identifier) working \(count)")
                sleep(1)
            }
            print("\(identifier) finished")
        }
}

class ViewController: UIViewController {
    
/* GCD
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
 */
/* NSOperation, NSOperationQueue */
    let test1 = LongRunOperation(identifier: "test1")
    let test2 = LongRunOperation(identifier: "test2")
    let test3 = LongRunOperation(identifier: "test3")
    
    let oparationsQueue = OperationQueue()

    override func viewDidLoad() {
        super.viewDidLoad()
/* GCD
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
*/
/* NSOperation, NSOperationQueue */
        oparationsQueue.addOperations([test1, test2, test3], waitUntilFinished: false)
        
    }
    


}

