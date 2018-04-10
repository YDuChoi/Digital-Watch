//
//  ViewController.swift
//  Digital Timer
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timerSwitch: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timerSwitch.setOn(false, animated: true)
    //    myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        timeLabel.text = formatter.string(from: date)
        // timeLabel.text = String(describing: date)
    }

    @IBAction func timerStart(_ sender: Any) {
        if timerSwitch.isOn == true {
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
        }else {
            myTimer.invalidate()
        }
    }
}

