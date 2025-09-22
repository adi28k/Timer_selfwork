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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        label.text = String(time)
        // Do any additional setup after loading the view.
        
    }
    
    @objc func countTime () {
        
        if time < 0 {
            timer.invalidate()
            return
        }
        label.text = String(time)
        time -= 1
        
    }
    
    @IBAction func startTimer(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
    }
    @IBAction func stopTimer(_ sender: Any) {
    }
    
    @IBAction func restartTimer(_ sender: Any) {
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
