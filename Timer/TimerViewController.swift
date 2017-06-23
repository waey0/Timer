//
//  TimerViewController.swift
//  Timer
//
//  Created by Kela Wong on 6/22/17.
//  Copyright © 2017 Kela Wong. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet var TimerTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        
        self.TimerTableView.estimatedRowHeight = 80
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 3
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "timerCell", for: indexPath) as! TimerCell
        
        return cell
    }
}
