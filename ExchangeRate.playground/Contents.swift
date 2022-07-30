import UIKit

struct ExchangeRate {
    
    var currencyRate: Double {
        willSet {
            print("환율 변동 예정: \(currencyRate) -> \(newValue)")
        }
        didSet {
            print("환율 변동 완료: \(oldValue) -> \(currencyRate)")
        }
    }
    
    var USD: Double {
        willSet {
            print("환전 금액: \(newValue)달러로 환전될 예정")
        }
        didSet {
            print("\(KRW)원 -> \(USD)달러로 환전되었음")
        }
    }
    
    var KRW: Double {
        get {
            USD * currencyRate
        }
        set {
            USD = newValue / currencyRate
        }
    }
    
}

var rate = ExchangeRate(currencyRate: 1200, USD: 1)

rate.KRW = 30000
rate.currencyRate = 1350
rate.KRW = 30000

