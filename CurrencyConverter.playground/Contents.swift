import UIKit

enum Currency {
    case cad
    case mxn
}
let usToCad = 1.34
let usToMxn = 22.30

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    switch currency{
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}

let currencyformat = NumberFormatter()
currencyformat.numberStyle = .currency

func convert2(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let amountUnwrapped = amount else{
        return nil
    }
    return currencyformat.string(from: NSNumber(value: convert(amountUnwrapped)))
}
convert2(amountString: "10")
currency = .mxn
convert2(amountString: "10")

