//
//  ViewController.swift
//  Timer_selfwork
//
//  Created by Adilet Kistaubayev on 07.09.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondVC" {
            if let vc = segue.destination as? SecondViewController {
                vc.time = Int(textfield.text!) ?? 0
            }
        }
    }

}

