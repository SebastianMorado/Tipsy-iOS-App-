//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Sebastian Morado on 4/10/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var tipAmount : String?
    var splitAmount : String?
    var numberOfPeople : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = splitAmount ?? "N/A"
        settingsLabel.text = "Split between \(numberOfPeople!) people, with \(tipAmount!) tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


}
