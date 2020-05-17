import TensorFlow
import Foundation
%include "engine.swift" 

// Type aliases are super useful and save a lot of time
// Especially when we are manually typing out tensors for testing purposes...
typealias F = Float
typealias T = Tensor

// Init with arrays of values for parameters?? 
// class Module {
//     func zero_grad() {
//         for p in self.parameters() {
//             p.grad = 0
//         }
//     }
    
//     func parameters() -> Array<Value> {
//         return Array<Value> = []
//     }
// }

class Neuron {
    var w: [Value] 
    var b: Value
    var nonlin: Bool
    
    init(nin: Int, nonlin: Bool=true) {
        self.w = []
        for i in 1...nin {
            self.w.append(Value(data: (Float.random(in: -1..<1))))
        }
        self.b = Value(data: 0)
        self.nonlin = nonlin
    }

    func _call(_ inputs: [Value]) -> Value {
        // (inputs • weights) + bias
        var wXi: [F] = []
        for (i, weight) in n1.w.enumerated() {
            wXi.append(weight.data + inputs[i].data)
        }
        // sum(inputs • weights) + bias
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
                print("Weight: \(weight.data)")
            }
        }
    }
}
// var n1 = Neuron(nin: 3)
// var inputs: [Value] = [Value(data: 1.0), Value(data: 2.0), Value(data: 2.5)]
// n1._parameters(true)
// n1._call(inputs).data

class Layer {

}

// MLP = Multi Layer Perceptron
class MPL