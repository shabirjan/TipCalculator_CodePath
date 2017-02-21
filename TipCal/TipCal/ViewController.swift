//
//  ViewController.swift
//  TipCal
//
//  Created by Shabir Jan on 21/02/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtBill: UITextField!
    @IBOutlet weak var lblTip: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func valueChanged(_ sender: Any) {
        calculateTip(self)
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercantages = [0.18,0.2,0.25]
        let bill = Double(txtBill.text!) ?? 0
        let tip = bill * tipPercantages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        lblTip.text = String(format: "$%.2f", tip)
        lblTotal.text = String(format: "$%.2f", total)
        
    }
}

