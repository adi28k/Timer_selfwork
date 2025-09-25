//
//  ViewController.swift
//  Timer_selfwork
//
//  Created by Adilet Kistaubayev on 07.09.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startDate: UIDatePicker!
    
    @IBOutlet weak var endDate: UIDatePicker!
    
    
    
    @IBAction func sendDate(_ sender: Any) {
        performSegue(withIdentifier: "SecondVC", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondVC" {
            if let vc = segue.destination as? SecondViewController {
               let formater = DateFormatter()
                formater.dateFormat = "d MMM yyyy, EEEE h:mm"
                
                vc.receiveStartDate = formater.string(from: startDate.date)
                vc.receiveEndDate = formater.string(from: endDate.date)
            }
        }
    }

}

