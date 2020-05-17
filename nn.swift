import TensorFlow
import Foundation
%include "engine.swift" 
%include "utils.swift"

// Type aliases are super useful and save a lot of time
// Especially when we are manually typing out tensors for testing purposes...
// typealias F = Float
// typealias T = Tensor

class Neuron {
    var w: [Value] 
    var b: Value
    var nonlin: Bool
    
    init(nin: Int, nonlin: Bool=true) {
        self.w = []
        for i in 0...nin {
            self.w.append(Value(data: (Float.random(in: -1..<1))))
        }
        self.b = Value(data: 0)
        self.nonlin = nonlin
    }
    
    func _call(_ inputs: [Value], _ show: Bool=false) -> Value {
        // (inputs • weights) + bias
        var wXi: [F] = []
        for (i, weight) in self.w.enumerated() {
            wXi.append(weight.data + inputs[i].data)
        }
        // sum(inputs • weights) + bias
        if (show) { print("(Inputs • Weights) + bias = \(sum(wXi))")} // optional validation
        var act = Value(data: sum(wXi) + self.b.data)
        if self.nonlin {
            return act._relu()
        } else {
            return act
        }
    }
    
    func _parameters(_ show: Bool=false) {
        for weight in self.w {
            weight.data += self.b.data
            if (show) {
                print(weight.data)
            }
        }
    }
}