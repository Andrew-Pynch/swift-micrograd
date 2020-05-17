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
        for i in 0...nin {
            self.w.append(Value(data: (Float.random(in: -1..<1))))
        }
        self.b = Value(data: 10)
        self.nonlin = nonlin
    }
    
    func _call(_ x:)
    
    func _parameters(_ show: Bool=false) {
        for weight in self.w {
            weight.data += self.b.data
            if (show) {
                print(weight.data)
            }
        }
    }
}
// var n1 = Neuron(nin: 3)
// n1.parameters(true)
class Layer {

}

// MLP = Multi Layer Perceptron
class MPL