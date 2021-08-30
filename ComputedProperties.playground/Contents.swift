import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get {
        let areaPainted = width * height
        let bucketsUsed = areaPainted / 1.5
        let bucketsInt = Int(ceilf(bucketsUsed))
        return bucketsInt
    }
    set {
        let areaPainted: Float = Float(newValue) * 1.5
        print("\(newValue) buckets of paint paints \(areaPainted)sqm")
    }
}

//print(bucketsOfPaint)
bucketsOfPaint = 4
