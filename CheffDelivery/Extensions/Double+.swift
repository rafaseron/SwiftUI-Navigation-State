//
//  Double+.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 09/05/24.
//

import Foundation

extension Double {
    func toPriceFormat() -> String {
        let stringFormatada = String(format: "%.2f", self)
        return stringFormatada.replacingOccurrences(of: ".", with: ",")
    }
}
