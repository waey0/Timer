//
//  TimerCell.swift
//  Timer
//
//  Created by Kela Wong on 6/22/17.
//  Copyright © 2017 Kela Wong. All rights reserved.
//

import UIKit

class TimerCell: UITableViewCell {
    var timer = Timer()
    
    
    @IBAction func startStopButton(sender : AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.timerResults(_:)) , userInfo: NSDate(), repeats: true)
    }
    
    func timerResults(timer: Timer) {
        let timerStartDate = timer.userInfo as! NSDate
        let seconds = Int(NSDate().timeIntervalSince(timerStartDate as Date))
        print(seconds)
    }
}
