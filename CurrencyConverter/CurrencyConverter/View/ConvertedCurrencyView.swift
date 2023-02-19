//
//  ConvertedCurrencyView.swift
//  CurrencyConverter
//
//  Created by user234052 on 2/19/23.
//

import UIKit

class ConvertedCurrencyView: UIViewController {
    
    @IBOutlet weak var UsdLabel: UILabel!
    @IBOutlet weak var UsdAmount: UILabel!
    
    @IBOutlet weak var MXNLabel: UILabel!
    @IBOutlet weak var MXNAmount: UILabel!
    
    @IBOutlet weak var CRCLabel: UILabel!
    @IBOutlet weak var CRCAmount: UILabel!
    
    @IBOutlet weak var AUDLabel: UILabel!
    @IBOutlet weak var AUDAmount: UILabel!
    
    @IBOutlet weak var NZDLabel: UILabel!
    @IBOutlet weak var NZDAmount: UILabel!
    
    var USD : Double = 0
    var Peso : Double = 0
    var Colon : Double = 0
    var Dollar : Double = 0
    var NZDollar : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UsdAmount.text = String(format: "%.0f", USD)
        MXNAmount.text = Peso != -1 ? String(format: "%.0f", Peso) : hideDisabledCurrency(MXNLabel, MXNAmount)
        CRCAmount.text = Colon != -1 ? String(format: "%.0f", Colon) : hideDisabledCurrency(CRCLabel, CRCAmount)
        AUDAmount.text = Dollar != -1 ? String(format: "%.0f", Dollar) : hideDisabledCurrency(AUDLabel, AUDAmount)
        NZDAmount.text = NZDollar != -1 ? String(format: "%.0f", NZDollar) : hideDisabledCurrency(NZDLabel, NZDAmount)
        // Do any additional setup after loading the view.
    }
    
    func hideDisabledCurrency(_ currencyLabel : UILabel, _ amountLabel : UILabel) -> String {
        currencyLabel.isHidden = true
        amountLabel.isHidden = true
        
        return ""
    }
    
    
    @IBAction func Close(_ sender: Any) {
        dismiss(animated: true)
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
