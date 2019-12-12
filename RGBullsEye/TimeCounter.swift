//
//  TimeCounter.swift
//  RGBullsEye
//
//  Created by Xiaochun Shen on 2019/12/12.
//  Copyright © 2019 SXC. All rights reserved.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var timer: Timer?
    var counter = 0
    
    @objc func updateCounter() {
        counter += 1
        objectWillChange.send(self)
    }
    

    init() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
    }

}
