//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Cullen Vaughan on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var amountInput: UITextField!
    
    @IBOutlet weak var PesoSwitch: UISwitch!
    @IBOutlet weak var ColonSwitch: UISwitch!
    @IBOutlet weak var DollarSwitch: UISwitch!
    @IBOutlet weak var NZDollarSwitch: UISwitch!
    
    var currencyLogic = CurrencyLogic()
    
    var USD : Double = 0
    var Peso : Double = 0
    var Colon : Double = 0
    var Dollar : Double = 0
    var NZDollar : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountInput.keyboardType = .numberPad
        amountInput.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func convert(_ sender: Any) {
        let usdInput : Double  = Double(amountInput.text ?? "0" ) ?? 0
        
        USD = usdInput
        
        Peso = PesoSwitch.isOn ? currencyLogic.convertToMXN(usdInput) : -1
        Colon = ColonSwitch.isOn ? currencyLogic.convertToCRC(usdInput) : -1
        Dollar = DollarSwitch.isOn ? currencyLogic.convertToAUD(usdInput) : -1
        NZDollar = NZDollarSwitch.isOn ? currencyLogic.convertToNZD(usdInput) : -1

        self.performSegue(withIdentifier: "toConvertCurrency", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConvertCurrency" {
            let navigation = segue.destination as! ConvertedCurrencyView
            navigation.USD = USD
            navigation.Peso = Peso
            navigation.Colon = Colon
            navigation.Dollar = Dollar
            navigation.NZDollar = NZDollar
        }
    }
    
    func textField(_ textField: UITextField,
      shouldChangeCharactersIn range: NSRange,
      replacementString string: String) -> Bool {  let invalidCharacters =
        CharacterSet(charactersIn: "0123456789").inverted
        return (string.rangeOfCharacter(from: invalidCharacters) == nil)
    }
}

