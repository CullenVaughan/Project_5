//
//  CurrencyLogic.swift
//  CurrencyConverter
//
//  Created by Cullen Vaughan on 2/19/23.
//

import Foundation

struct CurrencyLogic {
    
    mutating func convertToMXN(_ amount: Double) -> Double {
        let PesoConvert : Double = 18.36
        let Peso = amount * PesoConvert
        return round(Peso)
    }
    
    mutating func convertToCRC(_ amount: Double) -> Double {
        let ColonConvert : Double = 558.05
        let Colon = amount * ColonConvert
        return round(Colon)
    }
    
    mutating func convertToAUD(_ amount: Double) -> Double {
        let DollarConvert : Double = 1.46
        let Dollar = amount * DollarConvert
        return round(Dollar)
    }
    
    mutating func convertToNZD(_ amount: Double) -> Double {
        let NZDollarConvert : Double = 1.60
        let NZDollar = amount * NZDollarConvert
        return round(NZDollar)
    }
}
