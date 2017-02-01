//: [Previous](@previous)

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class Delegate : NSObject, URLSessionDelegate {
    func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
        print(#function)
    }
    
    func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) {
        print(#function)
    }
    
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        print(#function)
    }
}

let delegate = Delegate()
let queue = OperationQueue()
queue.maxConcurrentOperationCount = 1 // Make it serial

let session = URLSession(configuration: .default, delegate: delegate, delegateQueue: queue)
let url = URL(string: "http://sebastianboldt.com")
let task = session.dataTask(with: url!, completionHandler: { data, response, error in
    print(data ?? "nil")
    print(response ?? "nil")
    print(error ?? "nil")
})

task.resume()


//: [Next](@next)
