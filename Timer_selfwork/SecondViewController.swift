//
//  SecondViewController.swift
//  Timer_selfwork
//
//  Created by Adilet Kistaubayev on 07.09.2025.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var startDate: UILabel!
    
    
    @IBOutlet weak var endDate: UILabel!
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var receiveDate: String?
    var receiveStartDate: String?
    
    
    var startDateObj: Date?
    var endDateObj: Date?
    
    var receiveEndDate: String?
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startDate.text = receiveStartDate
        
        endDate.text = receiveEndDate
        
        // Do any additional setup after loading the view.
        let formatter = DateFormatter()
              formatter.dateFormat = "d MMM yyyy, EEEE h:mm"
        
        if let startStr = receiveStartDate,
                  let endStr = receiveEndDate {
                   startDateObj = formatter.date(from: startStr)
                   endDateObj = formatter.date(from: endStr)
               }
      
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
