//
//  SecondViewController.swift
//  Timer_selfwork
//
//  Created by Adilet Kistaubayev on 07.09.2025.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var time = 0
    
    var timer = Timer()
    
    var savedTime = 0
    
    var isTimerRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        label.text = timeString(time: time)
        // Do any additional setup after loading the view.
        
       savedTime = time
    }
    
    @objc func countTime () {
        
        if time < 0 {
            timer.invalidate()
            return
        }
        label.text = timeString(time: time)
        time -= 1
        
    }
    
    @IBAction func startTimer(_ sender: Any) {
        
        if isTimerRunning {
            return
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
        
        isTimerRunning = true 
    }
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
        isTimerRunning = false
    }
    
    @IBAction func restartTimer(_ sender: Any) {
        timer.invalidate()
        isTimerRunning = false
         time = savedTime
        label.text = timeString(time: time)
        
    }
    
    func timeString(time: Int) -> String {
        let hour = time / 3600
        let minute = time / 60 % 60
        let second = time % 60
        
        return String(format: "%02i:%02i:%02i", hour, minute, second)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
