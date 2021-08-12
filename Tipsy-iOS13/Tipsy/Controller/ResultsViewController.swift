//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Ed Yama on 13/07/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    // MARK: - Proprieties
    
    var percentageTip: String?
    var splitNumber: String?
    var calculateTip: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let number = splitNumber else { return }
        guard let percentage = percentageTip else { return }
        
        totalLabel.text = calculateTip
        settingsLabel.text = "Split between \(number) people, with \(percentage)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
