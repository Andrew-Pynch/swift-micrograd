import Foundation

func sum(_ data: [F]) -> Float {
    var result: Float = 0.0
    
    for (i, element) in data.enumerated() {
        result += data[i]
    }
    return result
}